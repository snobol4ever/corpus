                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_getdfa_α
proc_getdfa_α:
                        .global          proc_getdfa_α
                        .global          proc_getdfa_β
                        .global          proc_getdfa_γ
                        .global          proc_getdfa_ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_getdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1_call_proc_staged_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "Enter states (1 character names): "
#-----------------------------------------------------------------------------------------------------------------------
n1_call_proc_staged_α:
                        lea              rsi, [rbp + 1072]
                        call             proc_readset_dcα
                                                                                        jmp   .Lx49_2
.Lx49_2:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n2_assign_α
n1_call_proc_staged_β:
                                                                                        jmp   n3_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n4_call_proc_staged_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "Enter input alphabet: "
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        lea              rsi, [rbp + 1008]
                        call             proc_readset_dcα
                                                                                        jmp   .Lx53_2
.Lx53_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n6_lit_string_α
                                                                                        jmp   n5_assign_α
n4_call_proc_staged_β:
                                                                                        jmp   n6_lit_string_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx55_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n7_call_proc_staged_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "Enter Final states (subset of states): "
#-----------------------------------------------------------------------------------------------------------------------
n7_call_proc_staged_α:
                        lea              rsi, [rbp + 944]
                        call             proc_readset_dcα
                                                                                        jmp   .Lx57_2
.Lx57_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n8_assign_α
n7_call_proc_staged_β:
                                                                                        jmp   n9_lit_string_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "readset"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "What is the start state? "
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn61:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n11_call_builtin_icon_α
                                                                                        jmp   n11_call_builtin_icon_α
n10_call_builtin_icon_β:
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn63:               .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rbp + 816]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n13_call_builtin_icon_α
                                                                                        jmp   n12_assign_α
n11_call_builtin_icon_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn66:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn66]
                        lea              rsi, [rbp + 784]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n15_var_α
                                                                                        jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n16_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n16_iterate_α:
                        mov              qword ptr [rbp + 320], 0
.Lx71_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 320]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              rax, 99
                                                                                        je    n17_var_α
                                                                                        jmp   n18_assign_α
n16_iterate_β:
                        inc              qword ptr [rbp + 320]
                                                                                        jmp   .Lx71_0
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n22_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx82_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 256]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 99
                                                                                        je    n16_iterate_β
                                                                                        jmp   n24_assign_α
n22_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx82_0
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n26_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n27_call_α
#-----------------------------------------------------------------------------------------------------------------------
n26_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n28_bound_α
n26_conjunction_β:
                                                                                        jmp   n17_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn90:               .string          "dfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rbp + 32]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_getdfa_ω
                                                                                        jmp   n29_return_α
n27_call_β:
                                                                                        jmp   proc_getdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_bound_α:
                        mov              qword ptr [rbp + 352], rsp
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n31_var_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "enter delta("
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n34_var_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n39_call_builtin_icon_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n40_binop_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n38_unmark_α:
                        mov              rsp, qword ptr [rbp + 352]
                                                                                        jmp   n22_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn109:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rbp + 592]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n33_var_ref_α
                                                                                        jmp   n33_var_ref_α
n39_call_builtin_icon_β:
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n42_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n43_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_unmark_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn116:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 560]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n38_unmark_α
                                                                                        jmp   n45_assign_var_α
n44_call_builtin_icon_β:
                                                                                        jmp   n38_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_var_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n38_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n46_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n46_conjunction_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n38_unmark_α
n46_conjunction_β:
                                                                                        jmp   n38_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_β:
                                                                                        jmp   proc_getdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1208]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getdfa_dcα:
                        pop              r11
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1200], r11
                        lea              rax, [rip + .Lx119_2]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rax, [rip + .Lx119_3]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rdi, rbp
                        mov              esi, 1088
                        mov              edx, 1200
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_getdfa_α_body
.Lx119_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1232
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx119_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1232
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_readset_α
proc_readset_α:
                        .global          proc_readset_α
                        .global          proc_readset_β
                        .global          proc_readset_γ
                        .global          proc_readset_ω
                        sub              rsp, 384
                        mov              [rsp + 360], rcx
                        mov              [rsp + 368], rdx
                        mov              [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 336
                        mov              edx, 352
                        call             rt_jmp_frame_lexprep2@PLT
proc_readset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n121_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn134:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n122_make_list_α
                                                                                        jmp   n122_make_list_α
n121_call_builtin_icon_β:
                                                                                        jmp   n122_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n122_make_list_α:
                        lea              rdi, [rbp + 272]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n123_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n125_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn141:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 224]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n126_var_α
                                                                                        jmp   n127_call_builtin_icon_α
n125_call_builtin_icon_β:
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n128_return_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn145:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n126_var_α
                                                                                        jmp   n129_iterate_α
n127_call_builtin_icon_β:
                                                                                        jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_readset_γ
#-----------------------------------------------------------------------------------------------------------------------
n129_iterate_α:
                        mov              qword ptr [rbp + 144], 0
.Lx148_0:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 144]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              rax, 99
                                                                                        je    n126_var_α
                                                                                        jmp   n130_call_builtin_icon_α
n129_iterate_β:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx148_0
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn150:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n129_iterate_β
                                                                                        jmp   n129_iterate_β
n130_call_builtin_icon_β:
                                                                                        jmp   n129_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_β:
                                                                                        jmp   proc_readset_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 360]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_ω:
                        mov              rax, [rbp + 368]
                        lea              rsp, [rbp + 384]
                        mov              rbp, [rbp + 376]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_readset_dcα:
                        pop              r11
                        sub              rsp, 400
                        mov              qword ptr [rsp + 376], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 352], r11
                        lea              rax, [rip + .Lx151_2]
                        mov              qword ptr [rbp + 360], rax
                        lea              rax, [rip + .Lx151_3]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 336
                        mov              edx, 352
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_readset_α_body
.Lx151_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -384
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx151_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -384
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_showdfa_α
proc_showdfa_α:
                        .global          proc_showdfa_α
                        .global          proc_showdfa_β
                        .global          proc_showdfa_γ
                        .global          proc_showdfa_ω
                        sub              rsp, 1696
                        mov              [rsp + 1672], rcx
                        mov              [rsp + 1680], rdx
                        mov              [rsp + 1688], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1632
                        mov              edx, 1664
                        call             rt_jmp_frame_lexprep2@PLT
proc_showdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n153_lit_integer_α
.Lx214_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n154_to_α
.Lx215_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n154_to_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1520], 6
                        mov              qword ptr [rbp + 1528], rax
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1536], 6
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1504], rax
.Lx217_0:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1544]
                        cmp              rax, rcx
                                                                                        jg    n158_var_α
                        mov              qword ptr [rbp + 1488], 6
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n155_bound_α
n154_to_β:
                        inc              qword ptr [rbp + 1504]
                                                                                        jmp   .Lx217_0
#-----------------------------------------------------------------------------------------------------------------------
n155_bound_α:
                        mov              qword ptr [rbp + 1552], rsp
                                                                                        jmp   n156_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn221:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n157_unmark_α
                                                                                        jmp   n157_unmark_α
n156_call_builtin_icon_β:
                                                                                        jmp   n157_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n157_unmark_α:
                        mov              rsp, qword ptr [rbp + 1552]
                                                                                        jmp   n154_to_β
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n161_call_builtin_icon_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          " Deterministic Finite Automaton is:"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n162_lit_string_α
                                                                                        jmp   n162_lit_string_α
n160_call_builtin_icon_β:
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn230:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n160_call_builtin_icon_α
                                                                                        jmp   n160_call_builtin_icon_α
n161_call_builtin_icon_β:
                                                                                        jmp   n160_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n163_call_builtin_icon_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "\t(Q,S,delta,q0,F)"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn233:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n164_call_builtin_icon_α
                                                                                        jmp   n164_call_builtin_icon_α
n163_call_builtin_icon_β:
                                                                                        jmp   n164_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn235:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n165_lit_string_α
                                                                                        jmp   n165_lit_string_α
n164_call_builtin_icon_β:
                                                                                        jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n166_call_builtin_icon_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "where:"
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn238:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n167_call_builtin_icon_α
                                                                                        jmp   n167_call_builtin_icon_α
n166_call_builtin_icon_β:
                                                                                        jmp   n167_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn240:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n168_lit_string_α
                                                                                        jmp   n168_lit_string_α
n167_call_builtin_icon_β:
                                                                                        jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n169_var_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n170_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n170_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx244_0]
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n171_lit_string_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n172_call_proc_staged_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n173_var_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        lea              rdx, [rbp + 1136]
                        call             proc_writeset_dcα
                                                                                        jmp   .Lx247_2
.Lx247_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n171_lit_string_α
                                                                                        jmp   n171_lit_string_α
n172_call_proc_staged_β:
                                                                                        jmp   n171_lit_string_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n174_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n174_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx250_0]
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n175_lit_string_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n176_call_proc_staged_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n177_var_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 1024]
                        call             proc_writeset_dcα
                                                                                        jmp   .Lx253_2
.Lx253_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n175_lit_string_α
                                                                                        jmp   n175_lit_string_α
n176_call_proc_staged_β:
                                                                                        jmp   n175_lit_string_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n178_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n178_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx256_0]
                        mov              rsi, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n179_lit_string_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n180_call_proc_staged_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n181_var_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "\tStart state is "
#-----------------------------------------------------------------------------------------------------------------------
n180_call_proc_staged_α:
                        lea              rsi, [rbp + 896]
                        lea              rdx, [rbp + 912]
                        call             proc_writeset_dcα
                                                                                        jmp   .Lx259_2
.Lx259_2:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n179_lit_string_α
n180_call_proc_staged_β:
                                                                                        jmp   n179_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "writeset"
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n182_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n182_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        mov              rsi, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n183_lit_string_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n184_call_builtin_icon_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "q0"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n185_call_builtin_icon_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "\tDelta: "
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn265:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n183_lit_string_α
                                                                                        jmp   n183_lit_string_α
n184_call_builtin_icon_β:
                                                                                        jmp   n183_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n186_var_α
                                                                                        jmp   n186_var_α
n185_call_builtin_icon_β:
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n187_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n187_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx270_0]
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n188_var_α
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n189_iterate_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n190_return_α
#-----------------------------------------------------------------------------------------------------------------------
n189_iterate_α:
                        mov              qword ptr [rbp + 96], 0
.Lx274_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              rax, 99
                                                                                        je    n188_var_α
                                                                                        jmp   n191_assign_α
n189_iterate_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx274_0
#-----------------------------------------------------------------------------------------------------------------------
n190_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_showdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n192_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n192_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n193_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n194_var_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "\td("
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n197_var_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn284:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 224]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n199_unmark_α
                                                                                        jmp   n198_conjunction_α
n196_call_builtin_icon_β:
                                                                                        jmp   n199_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n200_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n198_conjunction_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n199_unmark_α
n198_conjunction_β:
                                                                                        jmp   n199_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n199_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n189_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n200_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx290_0]
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n196_call_builtin_icon_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n201_iterate_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n201_iterate_α:
                        mov              qword ptr [rbp + 448], 0
.Lx292_0:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 448]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              rax, 99
                                                                                        je    n196_call_builtin_icon_α
                                                                                        jmp   n202_assign_α
n201_iterate_β:
                        inc              qword ptr [rbp + 448]
                                                                                        jmp   .Lx292_0
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n204_var_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          ") = "
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n205_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n205_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n201_iterate_β
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n206_var_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n208_binop_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n208_binop_α:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n209_var_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n210_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n211_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n211_subscript_α:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n201_iterate_β
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n212_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n212_deref_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n201_iterate_β
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n213_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn308:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rbp + 256]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n201_iterate_β
                                                                                        jmp   n201_iterate_β
n213_call_builtin_icon_β:
                                                                                        jmp   n201_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_β:
                                                                                        jmp   proc_showdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1672]
                        lea              rsp, [rbp + 1696]
                        mov              rbp, [rbp + 1688]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_ω:
                        mov              rax, [rbp + 1680]
                        lea              rsp, [rbp + 1696]
                        mov              rbp, [rbp + 1688]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_showdfa_dcα:
                        pop              r11
                        sub              rsp, 1712
                        mov              qword ptr [rsp + 1688], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1664], r11
                        lea              rax, [rip + .Lx309_2]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rax, [rip + .Lx309_3]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1632
                        mov              edx, 1664
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_showdfa_α_body
.Lx309_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1696
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx309_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1696
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_writeset_α
proc_writeset_α:
                        .global          proc_writeset_α
                        .global          proc_writeset_β
                        .global          proc_writeset_γ
                        .global          proc_writeset_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 432
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_writeset_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n311_assign_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n311_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n313_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n315_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n316_var_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n315_iterate_α:
                        mov              qword ptr [rbp + 368], 0
.Lx337_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 368]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              rax, 99
                                                                                        je    n314_lit_string_α
                                                                                        jmp   n317_lit_string_α
n315_iterate_β:
                        inc              qword ptr [rbp + 368]
                                                                                        jmp   .Lx337_0
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n318_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n320_binop_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n321_var_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          " = {"
#-----------------------------------------------------------------------------------------------------------------------
n319_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_writeset_γ
#-----------------------------------------------------------------------------------------------------------------------
n320_binop_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n322_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n322_binop_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n324_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n325_lit_integer_α
.Lx347_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n324_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n315_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n326_subscript_α
.Lx349_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n326_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              r8, qword ptr [rbp + 256]
                        mov              r9, qword ptr [rbp + 264]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n319_return_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n327_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n328_call_builtin_icon_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn353:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rbp + 64]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n319_return_α
                                                                                        jmp   n319_return_α
n328_call_builtin_icon_β:
                                                                                        jmp   n319_return_α
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_β:
                                                                                        jmp   proc_writeset_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 456]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_writeset_dcα:
                        pop              r11
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 448], r11
                        lea              rax, [rip + .Lx354_2]
                        mov              qword ptr [rbp + 456], rax
                        lea              rax, [rip + .Lx354_3]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 432
                        mov              edx, 448
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_writeset_α_body
.Lx354_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx354_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_minimize_α
proc_minimize_α:
                        .global          proc_minimize_α
                        .global          proc_minimize_β
                        .global          proc_minimize_γ
                        .global          proc_minimize_ω
                        sub              rsp, 3408
                        mov              [rsp + 3384], rcx
                        mov              [rsp + 3392], rdx
                        mov              [rsp + 3400], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3280
                        mov              edx, 3376
                        call             rt_jmp_frame_lexprep2@PLT
proc_minimize_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn526:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n357_call_builtin_icon_α
                                                                                        jmp   n356_assign_α
n355_call_builtin_icon_β:
                                                                                        jmp   n357_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n356_assign_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              rdx, qword ptr [rbp + 3256]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n357_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn529:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]
                        lea              rsi, [rbp + 3232]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n359_var_α
                                                                                        jmp   n358_assign_α
n357_call_builtin_icon_β:
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_assign_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              rdx, qword ptr [rbp + 3224]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n360_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n360_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx533_0]
                        mov              rsi, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n361_var_α
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   n362_assign_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n363_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n361_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx537_0]
                        mov              rsi, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n364_var_α
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n365_var_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n366_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n368_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n366_iterate_α:
                        mov              qword ptr [rbp + 2816], 0
.Lx543_0:
                        mov              rdi, qword ptr [rbp + 2832]
                        mov              rsi, qword ptr [rbp + 2840]
                        mov              rdx, qword ptr [rbp + 2816]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              rax, 99
                                                                                        je    n367_disjunction_α
                                                                                        jmp   n369_assign_α
n366_iterate_β:
                        inc              qword ptr [rbp + 2816]
                                                                                        jmp   .Lx543_0
#-----------------------------------------------------------------------------------------------------------------------
n367_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n371_var_α
n367_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx545_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n370_var_α
.Lx545_0:
                        cmp              eax, 1
                                                                                        jne   .Lx545_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n370_var_α
.Lx545_1:
                                                                                        jmp   n370_var_α
n367_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        je    n372_iterate_β
                                                                                        jmp   n374_iterate_β
n367_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 1
                                                                                        je    n373_var_α
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n368_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx546_0]
                        mov              rsi, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n364_var_α
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n377_call_proc_staged_α
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n369_assign_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n378_var_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n379_var_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n380_iterate_α
n371_var_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n372_iterate_α:
                        mov              qword ptr [rbp + 272], 0
.Lx553_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 272]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              rax, 99
                                                                                        je    n380_iterate_β
                                                                                        jmp   n381_assign_α
n372_iterate_β:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx553_0
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n382_iterate_α
n373_var_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n374_iterate_α:
                        mov              qword ptr [rbp + 416], 0
.Lx557_0:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 416]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              rax, 99
                                                                                        je    n382_iterate_β
                                                                                        jmp   n383_assign_α
n374_iterate_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx557_0
#-----------------------------------------------------------------------------------------------------------------------
n375_conjunction_α:
                                                                                        jmp   n367_disjunction_as
n375_conjunction_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n376_conjunction_α:
                                                                                        jmp   n367_disjunction_as
n376_conjunction_β:
                                                                                        jmp   n367_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n377_call_proc_staged_α:
                        lea              rsi, [rbp + 3120]
                        lea              rdx, [rbp + 3152]
                        call             proc_diff_dcα
                                                                                        jmp   .Lx561_2
.Lx561_2:
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n364_var_α
                                                                                        jmp   n384_assign_α
n377_call_proc_staged_β:
                                                                                        jmp   n364_var_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "diff"
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n385_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n386_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n380_iterate_α:
                        mov              qword ptr [rbp + 336], 0
.Lx567_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 336]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 99
                                                                                        je    n367_disjunction_af
                                                                                        jmp   n387_assign_α
n380_iterate_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx567_0
#-----------------------------------------------------------------------------------------------------------------------
n381_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n375_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n382_iterate_α:
                        mov              qword ptr [rbp + 464], 0
.Lx570_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 464]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              rax, 99
                                                                                        je    n367_disjunction_af
                                                                                        jmp   n388_assign_α
n382_iterate_β:
                        inc              qword ptr [rbp + 464]
                                                                                        jmp   .Lx570_0
#-----------------------------------------------------------------------------------------------------------------------
n383_assign_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n376_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n384_assign_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              rdx, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n364_var_α
#-----------------------------------------------------------------------------------------------------------------------
n385_iterate_α:
                        mov              qword ptr [rbp + 2768], 0
.Lx574_0:
                        mov              rdi, qword ptr [rbp + 2784]
                        mov              rsi, qword ptr [rbp + 2792]
                        mov              rdx, qword ptr [rbp + 2768]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              rax, 99
                                                                                        je    n366_iterate_β
                                                                                        jmp   n389_assign_α
n385_iterate_β:
                        inc              qword ptr [rbp + 2768]
                                                                                        jmp   .Lx574_0
#-----------------------------------------------------------------------------------------------------------------------
n386_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n367_disjunction_β
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n390_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n387_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n388_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n392_var_α
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              rdx, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n393_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n390_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n394_bound_α
n390_conjunction_β:
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n372_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n374_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n393_conjunction_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n395_bound_α
n393_conjunction_β:
                                                                                        jmp   n367_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n394_bound_α:
                        mov              qword ptr [rbp + 496], rsp
                                                                                        jmp   n396_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n395_bound_α:
                        mov              qword ptr [rbp + 2848], rsp
                                                                                        jmp   n397_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n396_disjunction_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0
                                                                                        jmp   n399_var_ref_α
n396_disjunction_as:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        jne   .Lx590_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n398_unmark_α
.Lx590_0:
                        cmp              eax, 1
                                                                                        jne   .Lx590_1
                                                                                        jmp   n398_unmark_α
.Lx590_1:
                                                                                        jmp   n398_unmark_α
n396_disjunction_β:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        je    n398_unmark_α
                                                                                        jmp   n398_unmark_α
n396_disjunction_af:
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1
                                                                                        je    n400_var_α
                                                                                        jmp   n398_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n398_unmark_α:
                        mov              rsp, qword ptr [rbp + 496]
                                                                                        jmp   n367_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n399_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n403_var_α
n399_var_ref_β:
                                                                                        jmp   n396_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n404_field_get_α
n400_var_β:
                                                                                        jmp   n398_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n401_conjunction_α:
                                                                                        jmp   n396_disjunction_as
n401_conjunction_β:
                                                                                        jmp   n398_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n405_var_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n407_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n404_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n398_unmark_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n408_iterate_α
.Lx604_0:
                        .quad            .Lx604_0_s
.Lx604_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n405_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n409_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n406_unmark_α:
                        mov              rsp, qword ptr [rbp + 2848]
                                                                                        jmp   n385_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n407_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx609_0]
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n396_disjunction_af
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n410_var_α
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n408_iterate_α:
                        mov              qword ptr [rbp + 1440], 0
.Lx611_0:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1440]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              rax, 99
                                                                                        je    n398_unmark_α
                                                                                        jmp   n411_assign_α
n408_iterate_β:
                        inc              qword ptr [rbp + 1440]
                                                                                        jmp   .Lx611_0
#-----------------------------------------------------------------------------------------------------------------------
n409_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n412_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n413_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n414_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn617:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n406_unmark_α
                                                                                        jmp   n415_subscript_α
n412_call_builtin_icon_β:
                                                                                        jmp   n406_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n416_binop_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n414_bound_α:
                        mov              qword ptr [rbp + 1488], rsp
                                                                                        jmp   n417_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n415_subscript_α:
                        mov              rdi, qword ptr [rbp + 2896]
                        mov              rsi, qword ptr [rbp + 2904]
                        mov              rdx, qword ptr [rbp + 2912]
                        mov              rcx, qword ptr [rbp + 2920]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n406_unmark_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n418_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n419_var_α
#-----------------------------------------------------------------------------------------------------------------------
n417_disjunction_α:
                        mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              dword ptr [rbp + 1552], 0
                                                                                        jmp   n421_var_α
n417_disjunction_as:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0
                                                                                        jne   .Lx624_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n420_unmark_α
.Lx624_0:
                                                                                        jmp   n420_unmark_α
n417_disjunction_β:
                        mov              eax, dword ptr [rbp + 1552]
                                                                                        jmp   n420_unmark_α
n417_disjunction_af:
                        add              dword ptr [rbp + 1552], 1
                        mov              eax, dword ptr [rbp + 1552]
                                                                                        jmp   n420_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:
                        mov              qword ptr [rbp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n423_assign_var_α
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n419_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n424_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n420_unmark_α:
                        mov              rsp, qword ptr [rbp + 1488]
                                                                                        jmp   n408_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n425_field_get_α
n421_var_β:
                                                                                        jmp   n417_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_conjunction_α:
                                                                                        jmp   n417_disjunction_as
n422_conjunction_β:
                                                                                        jmp   n420_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n423_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              rdx, qword ptr [rbp + 3040]
                        mov              rcx, qword ptr [rbp + 3048]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n406_unmark_α
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n406_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n424_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx634_0]
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n396_disjunction_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n426_iterate_α
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n425_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx635_0]
                        mov              rsi, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n417_disjunction_af
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n427_var_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n426_iterate_α:
                        mov              qword ptr [rbp + 1168], 0
.Lx637_0:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1168]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              rax, 99
                                                                                        je    n396_disjunction_af
                                                                                        jmp   n428_assign_α
n426_iterate_β:
                        inc              qword ptr [rbp + 1168]
                                                                                        jmp   .Lx637_0
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n430_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n431_binop_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n430_binop_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n432_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n431_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2520]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n432_subscript_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n434_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n435_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n434_deref_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n436_var_α
#-----------------------------------------------------------------------------------------------------------------------
n435_binop_α:
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 3344]
                        mov              rcx, qword ptr [rbp + 3352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n437_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n438_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n437_subscript_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2464]
                        mov              rcx, qword ptr [rbp + 2472]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n417_disjunction_af
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n439_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n438_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx652_0]
                        mov              rsi, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n440_var_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n439_deref_α:
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n417_disjunction_af
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n441_var_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n442_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n443_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n444_binop_α
.Lx658_0:
                        .quad            .Lx658_0_s
.Lx658_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n443_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx659_0]
                        mov              rsi, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n417_disjunction_af
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n445_var_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n444_binop_α:
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n446_var_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n447_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n448_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n449_binop_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n448_binop_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 3344]
                        mov              rcx, qword ptr [rbp + 3352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n450_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n449_binop_α:
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        mov              rdx, qword ptr [rbp + 2656]
                        mov              rcx, qword ptr [rbp + 2664]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n451_var_α
#-----------------------------------------------------------------------------------------------------------------------
n450_subscript_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n452_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n453_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n452_deref_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n454_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n453_binop_α:
                        mov              rdi, qword ptr [rbp + 2624]
                        mov              rsi, qword ptr [rbp + 2632]
                        mov              rdx, qword ptr [rbp + 3344]
                        mov              rcx, qword ptr [rbp + 3352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n455_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n454_binop_α:
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n456_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n455_subscript_α:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        mov              rdx, qword ptr [rbp + 2608]
                        mov              rcx, qword ptr [rbp + 2616]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n417_disjunction_af
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n457_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn676:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn676]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                                                                                        jmp   n458_subscript_α
n456_call_builtin_icon_β:
                                                                                        jmp   n426_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n457_deref_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n417_disjunction_af
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n459_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n458_subscript_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n460_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n459_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        mov              rdx, qword ptr [rbp + 2704]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n417_disjunction_af
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n461_var_α
#-----------------------------------------------------------------------------------------------------------------------
n460_deref_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n462_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n461_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n463_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n462_unop_test_α:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 99
                                                                                        je    n426_iterate_β
                        cmp              eax, 0
                                                                                        je    n426_iterate_β
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n465_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n463_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx684_0]
                        mov              rsi, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n464_disjunction_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n466_var_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n464_disjunction_α:
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              dword ptr [rbp + 1920], 0
                                                                                        jmp   n468_var_α
n464_disjunction_as:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        jne   .Lx686_0
                                                                                        jmp   n467_var_ref_α
.Lx686_0:
                                                                                        jmp   n467_var_ref_α
n464_disjunction_β:
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n467_var_ref_α
n464_disjunction_af:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                                                                                        jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n469_var_α
#-----------------------------------------------------------------------------------------------------------------------
n466_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n470_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n471_var_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n472_var_α
n468_var_β:
                                                                                        jmp   n464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n475_binop_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n471_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n476_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n478_var_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n479_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n475_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n481_var_α
#-----------------------------------------------------------------------------------------------------------------------
n476_subscript_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n477_var_ref_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n482_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n484_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n479_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n485_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n486_var_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n487_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n482_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 99
                                                                                        je    n477_var_ref_α
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n477_var_ref_α
                        cmp              eax, 0
                                                                                        jne   n477_var_ref_α
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n488_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n489_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n484_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n490_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn722:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn722]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n474_var_ref_α
                                                                                        jmp   n491_subscript_α
n485_call_builtin_icon_β:
                                                                                        jmp   n474_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n492_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n487_binop_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 3344]
                        mov              rcx, qword ptr [rbp + 3352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n493_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n488_make_list_α:
                        lea              rdi, [rbp + 1904]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n494_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n489_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n420_unmark_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n495_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn730:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn730]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n464_disjunction_af
                                                                                        jmp   n496_binop_test_α
n490_call_builtin_icon_β:
                                                                                        jmp   n464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n491_subscript_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n474_var_ref_α
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n497_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n492_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n498_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n493_subscript_α:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n464_disjunction_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n499_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n494_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n477_var_ref_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n477_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n495_deref_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n420_unmark_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n500_var_α
#-----------------------------------------------------------------------------------------------------------------------
n496_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        mov              rdx, qword ptr [rbp + 1968]
                        mov              rcx, qword ptr [rbp + 1976]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n464_disjunction_af
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n420_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx737_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n501_assign_var_α
.Lx737_0:
                        .quad            .Lx737_0_s
.Lx737_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n498_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn739:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn739]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n398_unmark_α
                                                                                        jmp   n502_subscript_α
n498_call_builtin_icon_β:
                                                                                        jmp   n398_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n499_deref_α:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n464_disjunction_α
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n503_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n501_assign_var_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n474_var_ref_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n474_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n502_subscript_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n398_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n505_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n506_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n507_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n505_deref_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n398_unmark_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n508_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n506_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx750_0]
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n464_disjunction_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n509_var_α
.Lx750_0:
                        .quad            .Lx750_0_s
.Lx750_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n507_binop_α:
                        mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              rdx, qword ptr [rbp + 3296]
                        mov              rcx, qword ptr [rbp + 3304]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n510_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n508_call_proc_staged_α:
                        lea              rsi, [rbp + 768]
                        call             proc_marklists_dcα
                                                                                        jmp   .Lx753_2
.Lx753_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n398_unmark_α
                                                                                        jmp   n401_conjunction_α
n508_call_proc_staged_β:
                                                                                        jmp   n398_unmark_α
.Lx753_0:
                        .quad            .Lx753_0_s
.Lx753_0_s:
                        .string          "marklists"
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn757:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn757]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n420_unmark_α
                                                                                        jmp   n512_call_builtin_icon_α
n510_call_builtin_icon_β:
                                                                                        jmp   n420_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n513_binop_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn760:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn760]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n420_unmark_α
                                                                                        jmp   n422_conjunction_α
n512_call_builtin_icon_β:
                                                                                        jmp   n420_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n513_binop_α:
                        mov              rdi, qword ptr [rbp + 3296]
                        mov              rsi, qword ptr [rbp + 3304]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n514_var_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n515_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n515_binop_α:
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              rdx, qword ptr [rbp + 3344]
                        mov              rcx, qword ptr [rbp + 3352]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n516_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n516_subscript_α:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2304]
                        mov              rcx, qword ptr [rbp + 2312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n464_disjunction_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n517_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_deref_α:
                        mov              rdi, qword ptr [rbp + 2384]
                        mov              rsi, qword ptr [rbp + 2392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n464_disjunction_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n518_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n518_binop_α:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2400]
                        mov              rcx, qword ptr [rbp + 2408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n519_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn769:              .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn769]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n464_disjunction_α
                                                                                        jmp   n520_assign_α
n519_call_builtin_icon_β:
                                                                                        jmp   n464_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n520_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n464_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n522_var_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n523_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n523_call_proc_staged_α:
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 112]
                        call             proc_makemdfa_dcα
                                                                                        jmp   .Lx775_2
.Lx775_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_minimize_ω
                                                                                        jmp   n524_return_α
n523_call_proc_staged_β:
                                                                                        jmp   proc_minimize_ω
.Lx775_0:
                        .quad            .Lx775_0_s
.Lx775_0_s:
                        .string          "makemdfa"
#-----------------------------------------------------------------------------------------------------------------------
n524_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_minimize_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_β:
                                                                                        jmp   proc_minimize_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3384]
                        lea              rsp, [rbp + 3408]
                        mov              rbp, [rbp + 3400]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_ω:
                        mov              rax, [rbp + 3392]
                        lea              rsp, [rbp + 3408]
                        mov              rbp, [rbp + 3400]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_minimize_dcα:
                        pop              r11
                        sub              rsp, 3424
                        mov              qword ptr [rsp + 3400], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3376], r11
                        lea              rax, [rip + .Lx777_2]
                        mov              qword ptr [rbp + 3384], rax
                        lea              rax, [rip + .Lx777_3]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 3280
                        mov              edx, 3376
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_minimize_α_body
.Lx777_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3408
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx777_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3408
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_marklists_α
proc_marklists_α:
                        .global          proc_marklists_α
                        .global          proc_marklists_β
                        .global          proc_marklists_γ
                        .global          proc_marklists_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_marklists_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n778_disjunction_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              dword ptr [rbp + 368], 0
                                                                                        jmp   n780_var_α
n778_disjunction_as:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        jne   .Lx800_0
                                                                                        jmp   n779_var_α
.Lx800_0:
                                                                                        jmp   n779_var_α
n778_disjunction_β:
                        mov              eax, dword ptr [rbp + 368]
                                                                                        jmp   n779_var_α
n778_disjunction_af:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                                                                                        jmp   n779_var_α
#-----------------------------------------------------------------------------------------------------------------------
n779_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n781_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n780_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n783_unop_test_α
n780_var_β:
                                                                                        jmp   n778_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n781_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx806_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    n782_return_α
                                                                                        jmp   n784_assign_α
n781_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx806_0
#-----------------------------------------------------------------------------------------------------------------------
n782_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_marklists_γ
#-----------------------------------------------------------------------------------------------------------------------
n783_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 99
                                                                                        je    n778_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n778_disjunction_af
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                                                                                        jmp   n785_return_α
#-----------------------------------------------------------------------------------------------------------------------
n784_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n786_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n785_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_marklists_γ
#-----------------------------------------------------------------------------------------------------------------------
n786_bound_α:
                        mov              qword ptr [rbp + 96], rsp
                                                                                        jmp   n787_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n788_var_α
#-----------------------------------------------------------------------------------------------------------------------
n788_var_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n789_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n789_subscript_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n790_var_ref_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n791_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n790_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n792_var_α
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n793_assign_var_α
.Lx820_0:
                        .quad            .Lx820_0_s
.Lx820_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n792_var_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n794_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n793_assign_var_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n790_var_ref_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n790_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n794_subscript_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n795_unmark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n796_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n795_unmark_α:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n781_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n796_deref_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n795_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n797_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n797_call_proc_staged_α:
                        lea              rsi, [rbp + 256]
                        call             proc_marklists_dcα
                                                                                        jmp   .Lx829_2
.Lx829_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n795_unmark_α
                                                                                        jmp   n798_conjunction_α
n797_call_proc_staged_β:
                                                                                        jmp   n795_unmark_α
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          "marklists"
#-----------------------------------------------------------------------------------------------------------------------
n798_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n795_unmark_α
n798_conjunction_β:
                                                                                        jmp   n795_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_β:
                                                                                        jmp   proc_marklists_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_marklists_dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx831_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx831_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 416
                        mov              edx, 432
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_marklists_α_body
.Lx831_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx831_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_makemdfa_α
proc_makemdfa_α:
                        .global          proc_makemdfa_α
                        .global          proc_makemdfa_β
                        .global          proc_makemdfa_γ
                        .global          proc_makemdfa_ω
                        sub              rsp, 3616
                        mov              [rsp + 3592], rcx
                        mov              [rsp + 3600], rdx
                        mov              [rsp + 3608], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3408
                        mov              edx, 3584
                        call             rt_jmp_frame_lexprep2@PLT
proc_makemdfa_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n832_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn999:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn999]
                        lea              rsi, [rbp + 3392]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 99
                                                                                        je    n834_lit_charset_α
                                                                                        jmp   n833_assign_α
n832_call_builtin_icon_β:
                                                                                        jmp   n834_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n833_assign_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                                                                                        jmp   n834_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_charset_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              dword ptr [rbp + 3364], -1
                        mov              rax, qword ptr [rip + .Lx1001_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n835_assign_α
.Lx1001_0:
                        .quad            .Lx1001_0_s
.Lx1001_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n835_assign_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n837_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n837_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1005_0]
                        mov              rsi, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n838_make_list_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n839_iterate_α
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n838_make_list_α:
                        lea              rdi, [rbp + 2272]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n840_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n839_iterate_α:
                        mov              qword ptr [rbp + 2288], 0
.Lx1009_0:
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              rdx, qword ptr [rbp + 2288]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              rax, 99
                                                                                        je    n838_make_list_α
                                                                                        jmp   n841_assign_α
n839_iterate_β:
                        inc              qword ptr [rbp + 2288]
                                                                                        jmp   .Lx1009_0
#-----------------------------------------------------------------------------------------------------------------------
n840_assign_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n842_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n841_assign_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                                                                                        jmp   n843_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n842_make_list_α:
                        lea              rdi, [rbp + 2256]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n844_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n843_bound_α:
                        mov              qword ptr [rbp + 2336], rsp
                                                                                        jmp   n845_var_α
#-----------------------------------------------------------------------------------------------------------------------
n844_assign_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n846_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n845_var_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n847_var_α
#-----------------------------------------------------------------------------------------------------------------------
n846_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1020:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1020]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n850_var_α
                                                                                        jmp   n849_assign_α
n846_call_builtin_icon_β:
                                                                                        jmp   n850_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n851_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n848_disjunction_α:
                        mov              qword ptr [rbp + 3120], 0
                        mov              qword ptr [rbp + 3128], 0
                        mov              dword ptr [rbp + 3136], 0
                                                                                        jmp   n853_var_α
n848_disjunction_as:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        jne   .Lx1024_0
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n852_assign_α
.Lx1024_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1024_1
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n852_assign_α
.Lx1024_1:
                                                                                        jmp   n852_assign_α
n848_disjunction_β:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 0
                                                                                        je    n848_disjunction_af
                                                                                        jmp   n848_disjunction_af
n848_disjunction_af:
                        add              dword ptr [rbp + 3136], 1
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 1
                                                                                        je    n854_var_α
                                                                                        jmp   n860_var_α
#-----------------------------------------------------------------------------------------------------------------------
n849_assign_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n850_var_α
#-----------------------------------------------------------------------------------------------------------------------
n850_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n857_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n851_binop_α:
                        mov              rdi, qword ptr [rbp + 3328]
                        mov              rsi, qword ptr [rbp + 3336]
                        mov              rdx, qword ptr [rbp + 3344]
                        mov              rcx, qword ptr [rbp + 3352]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n848_disjunction_α
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                                                                                        jmp   n859_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n852_assign_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                                                                                        jmp   n860_var_α
#-----------------------------------------------------------------------------------------------------------------------
n853_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n861_var_α
n853_var_β:
                                                                                        jmp   n848_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n854_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n856_call_builtin_icon_α
n854_var_β:
                                                                                        jmp   n848_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n855_call_proc_staged_α:
                        lea              rsi, [rbp + 3216]
                        lea              rdx, [rbp + 3232]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1035_2
.Lx1035_2:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n848_disjunction_af
                                                                                        jmp   n848_disjunction_as
n855_call_proc_staged_β:
                                                                                        jmp   n848_disjunction_af
.Lx1035_0:
                        .quad            .Lx1035_0_s
.Lx1035_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n856_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn1037:             .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1037]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n848_disjunction_af
                                                                                        jmp   n848_disjunction_as
n856_call_builtin_icon_β:
                                                                                        jmp   n848_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n857_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1038_0]
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n858_var_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n862_var_α
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "q0"
#-----------------------------------------------------------------------------------------------------------------------
n858_var_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n863_var_α
#-----------------------------------------------------------------------------------------------------------------------
n859_assign_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              rdx, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n848_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n865_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n861_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n855_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n862_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n867_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n863_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n868_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n864_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n869_var_α
#-----------------------------------------------------------------------------------------------------------------------
n865_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1052_0]
                        mov              rsi, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n866_var_ref_α
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n871_var_α
.Lx1052_0:
                        .quad            .Lx1052_0_s
.Lx1052_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n866_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n872_var_α
#-----------------------------------------------------------------------------------------------------------------------
n867_call_proc_staged_α:
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2192]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1056_2
.Lx1056_2:
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n858_var_α
                                                                                        jmp   n873_assign_α
n867_call_proc_staged_β:
                                                                                        jmp   n858_var_α
.Lx1056_0:
                        .quad            .Lx1056_0_s
.Lx1056_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n868_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn1058:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1058]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n864_var_α
                                                                                        jmp   n864_var_α
n868_call_builtin_icon_β:
                                                                                        jmp   n864_var_α
#-----------------------------------------------------------------------------------------------------------------------
n869_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n874_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n870_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1062:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1062]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n876_var_ref_α
                                                                                        jmp   n875_assign_α
n870_call_builtin_icon_β:
                                                                                        jmp   n876_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n871_var_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n877_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n872_var_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n878_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n873_assign_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n858_var_α
#-----------------------------------------------------------------------------------------------------------------------
n874_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lrkfn1069:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1069]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n870_call_builtin_icon_α
                                                                                        jmp   n870_call_builtin_icon_α
n874_call_builtin_icon_β:
                                                                                        jmp   n870_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n875_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n876_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n876_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n880_var_α
#-----------------------------------------------------------------------------------------------------------------------
n877_call_proc_staged_α:
                        lea              rsi, [rbp + 2640]
                        lea              rdx, [rbp + 2672]
                        call             proc_diff_dcα
                                                                                        jmp   .Lx1074_2
.Lx1074_2:
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n866_var_ref_α
                                                                                        jmp   n881_iterate_α
n877_call_proc_staged_β:
                                                                                        jmp   n866_var_ref_α
.Lx1074_0:
                        .quad            .Lx1074_0_s
.Lx1074_0_s:
                        .string          "diff"
#-----------------------------------------------------------------------------------------------------------------------
n878_subscript_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n879_unmark_α
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n882_var_α
#-----------------------------------------------------------------------------------------------------------------------
n879_unmark_α:
                        mov              rsp, qword ptr [rbp + 2336]
                                                                                        jmp   n839_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n880_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n883_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n881_iterate_α:
                        mov              qword ptr [rbp + 2560], 0
.Lx1081_0:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        mov              rdx, qword ptr [rbp + 2560]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              rax, 99
                                                                                        je    n866_var_ref_α
                                                                                        jmp   n885_assign_α
n881_iterate_β:
                        inc              qword ptr [rbp + 2560]
                                                                                        jmp   .Lx1081_0
#-----------------------------------------------------------------------------------------------------------------------
n882_var_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n886_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n883_subscript_α:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n884_var_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n887_var_α
#-----------------------------------------------------------------------------------------------------------------------
n884_var_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n888_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n885_assign_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              rdx, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n890_var_α
#-----------------------------------------------------------------------------------------------------------------------
n886_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2464]
                        mov              rcx, qword ptr [rbp + 2472]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n879_unmark_α
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n891_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n887_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n892_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n888_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn1092:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1092]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n889_var_α
                                                                                        jmp   n893_assign_α
n888_call_builtin_icon_β:
                                                                                        jmp   n889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n889_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n894_var_α
#-----------------------------------------------------------------------------------------------------------------------
n890_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n895_var_α
#-----------------------------------------------------------------------------------------------------------------------
n891_conjunction_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n879_unmark_α
n891_conjunction_β:
                                                                                        jmp   n879_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n892_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n884_var_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n884_var_α
#-----------------------------------------------------------------------------------------------------------------------
n893_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n896_var_α
#-----------------------------------------------------------------------------------------------------------------------
n894_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n897_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n895_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n898_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n896_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n899_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n897_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1106_0]
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    proc_makemdfa_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n900_var_α
.Lx1106_0:
                        .quad            .Lx1106_0_s
.Lx1106_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n898_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3536]
                        mov              rsi, qword ptr [rbp + 3544]
                        mov              rdx, qword ptr [rbp + 3456]
                        mov              rcx, qword ptr [rbp + 3464]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n881_iterate_β
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n901_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n899_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1108_0]
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n884_var_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n902_iterate_α
.Lx1108_0:
                        .quad            .Lx1108_0_s
.Lx1108_0_s:
                        .string          "S"
#-----------------------------------------------------------------------------------------------------------------------
n900_var_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n903_var_α
#-----------------------------------------------------------------------------------------------------------------------
n901_conjunction_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n904_bound_α
n901_conjunction_β:
                                                                                        jmp   n866_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n902_iterate_α:
                        mov              qword ptr [rbp + 432], 0
.Lx1113_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 432]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              rax, 99
                                                                                        je    n884_var_α
                                                                                        jmp   n905_assign_α
n902_iterate_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx1113_0
#-----------------------------------------------------------------------------------------------------------------------
n903_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n906_var_α
#-----------------------------------------------------------------------------------------------------------------------
n904_bound_α:
                        mov              qword ptr [rbp + 2688], rsp
                                                                                        jmp   n907_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n905_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n908_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n906_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n909_var_α
#-----------------------------------------------------------------------------------------------------------------------
n907_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n911_var_ref_α
n907_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx1122_0
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n910_unmark_α
.Lx1122_0:
                                                                                        jmp   n910_unmark_α
n907_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n912_disjunction_β
n907_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                                                                                        jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n908_bound_α:
                        mov              qword ptr [rbp + 480], rsp
                                                                                        jmp   n914_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n909_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n915_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n910_unmark_α:
                        mov              rsp, qword ptr [rbp + 2688]
                                                                                        jmp   n881_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n911_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n916_var_α
n911_var_ref_β:
                                                                                        jmp   n907_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n912_disjunction_α:
                        mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2824], 0
                        mov              dword ptr [rbp + 2832], 0
                                                                                        jmp   n918_var_α
n912_disjunction_as:
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 0
                                                                                        jne   .Lx1132_0
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n917_binop_α
.Lx1132_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1132_1
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n917_binop_α
.Lx1132_1:
                                                                                        jmp   n917_binop_α
n912_disjunction_β:
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 0
                                                                                        je    n912_disjunction_af
                                                                                        jmp   n912_disjunction_af
n912_disjunction_af:
                        add              dword ptr [rbp + 2832], 1
                        mov              eax, dword ptr [rbp + 2832]
                        cmp              eax, 1
                                                                                        je    n919_var_α
                                                                                        jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n913_assign_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              rdx, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n907_disjunction_as
n913_assign_β:
                                                                                        jmp   n910_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n914_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n921_var_α
#-----------------------------------------------------------------------------------------------------------------------
n915_call_proc_staged_α:
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 320]
                        call             proc_finalstates_dcα
                                                                                        jmp   .Lx1137_2
.Lx1137_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    proc_makemdfa_ω
                                                                                        jmp   n922_call_α
n915_call_proc_staged_β:
                                                                                        jmp   proc_makemdfa_ω
.Lx1137_0:
                        .quad            .Lx1137_0_s
.Lx1137_0_s:
                        .string          "finalstates"
#-----------------------------------------------------------------------------------------------------------------------
n916_var_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n923_var_α
#-----------------------------------------------------------------------------------------------------------------------
n917_binop_α:
                        mov              rdi, qword ptr [rbp + 3552]
                        mov              rsi, qword ptr [rbp + 3560]
                        mov              rdx, qword ptr [rbp + 2816]
                        mov              rcx, qword ptr [rbp + 2824]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n910_unmark_α
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n913_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n924_var_α
n918_var_β:
                                                                                        jmp   n912_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n919_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n912_disjunction_as
n919_var_β:
                                                                                        jmp   n912_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n920_call_proc_staged_α:
                        lea              rsi, [rbp + 2912]
                        lea              rdx, [rbp + 2928]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1146_2
.Lx1146_2:
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n912_disjunction_af
                                                                                        jmp   n912_disjunction_as
n920_call_proc_staged_β:
                                                                                        jmp   n912_disjunction_af
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n921_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n925_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_call_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1150:             .string          "dfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1150]
                        lea              rsi, [rbp + 64]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_makemdfa_ω
                                                                                        jmp   n927_return_α
n922_call_β:
                                                                                        jmp   proc_makemdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
n923_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n928_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n920_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n925_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n929_binop_α
.Lx1155_0:
                        .quad            .Lx1155_0_s
.Lx1155_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n926_disjunction_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0
                                                                                        jmp   n931_var_ref_α
n926_disjunction_as:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        jne   .Lx1157_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n930_conjunction_α
.Lx1157_0:
                                                                                        jmp   n930_conjunction_α
n926_disjunction_β:
                        mov              eax, dword ptr [rbp + 560]
                                                                                        jmp   n935_unmark_α
n926_disjunction_af:
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                                                                                        jmp   n935_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n927_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_makemdfa_γ
#-----------------------------------------------------------------------------------------------------------------------
n928_binop_α:
                        mov              rdi, qword ptr [rbp + 3536]
                        mov              rsi, qword ptr [rbp + 3544]
                        mov              rdx, qword ptr [rbp + 3456]
                        mov              rcx, qword ptr [rbp + 3464]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n933_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n929_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n934_var_α
#-----------------------------------------------------------------------------------------------------------------------
n930_conjunction_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n935_unmark_α
n930_conjunction_β:
                                                                                        jmp   n935_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n931_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n936_var_ref_α
n931_var_ref_β:
                                                                                        jmp   n926_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n932_conjunction_α:
                                                                                        jmp   n926_disjunction_as
n932_conjunction_β:
                                                                                        jmp   n935_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n933_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        .section         .rodata
.Lrkfn1166:             .string          "cset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1166]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n907_disjunction_af
                                                                                        jmp   n937_subscript_α
n933_call_builtin_icon_β:
                                                                                        jmp   n907_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n934_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n938_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n935_unmark_α:
                        mov              rsp, qword ptr [rbp + 480]
                                                                                        jmp   n902_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n936_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n939_var_α
#-----------------------------------------------------------------------------------------------------------------------
n937_subscript_α:
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        mov              rdx, qword ptr [rbp + 2992]
                        mov              rcx, qword ptr [rbp + 3000]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n907_disjunction_af
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n940_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n938_binop_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n941_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n939_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n942_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n940_deref_α:
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              rsi, qword ptr [rbp + 3096]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n907_disjunction_af
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n943_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n941_subscript_α:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n926_disjunction_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n944_var_α
#-----------------------------------------------------------------------------------------------------------------------
n942_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx1179_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n945_binop_α
.Lx1179_0:
                        .quad            .Lx1179_0_s
.Lx1179_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n943_unop_test_α:
                        mov              eax, dword ptr [rbp + 3104]
                        cmp              eax, 99
                                                                                        je    n907_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n907_disjunction_af
                        mov              qword ptr [rbp + 2960], 0
                        mov              qword ptr [rbp + 2968], 0
                                                                                        jmp   n946_var_α
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n945_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n948_var_α
#-----------------------------------------------------------------------------------------------------------------------
n946_var_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n912_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n947_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n949_var_α
#-----------------------------------------------------------------------------------------------------------------------
n948_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n950_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n949_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n951_var_α
#-----------------------------------------------------------------------------------------------------------------------
n950_binop_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n952_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n953_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n952_subscript_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n926_disjunction_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n954_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n953_call_proc_staged_α:
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1744]
                        lea              rcx, [rbp + 1760]
                        lea              r8, [rbp + 1776]
                        call             proc_equivdelta_dcα
                                                                                        jmp   .Lx1197_2
.Lx1197_2:
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n926_disjunction_α
                                                                                        jmp   n955_assign_var_α
n953_call_proc_staged_β:
                                                                                        jmp   n926_disjunction_α
.Lx1197_0:
                        .quad            .Lx1197_0_s
.Lx1197_0_s:
                        .string          "equivdelta"
#-----------------------------------------------------------------------------------------------------------------------
n954_deref_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n926_disjunction_af
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n956_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n955_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n926_disjunction_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n926_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n956_subscript_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n926_disjunction_af
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n957_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n957_deref_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n926_disjunction_af
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n958_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n958_unop_test_α:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 99
                                                                                        je    n926_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n926_disjunction_af
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], 0
                                                                                        jmp   n959_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n959_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n960_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n960_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n961_var_α
#-----------------------------------------------------------------------------------------------------------------------
n961_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n962_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n962_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx1209_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n964_binop_α
.Lx1209_0:
                        .quad            .Lx1209_0_s
.Lx1209_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n963_var_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n965_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n964_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n967_var_α
#-----------------------------------------------------------------------------------------------------------------------
n965_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n968_var_α
#-----------------------------------------------------------------------------------------------------------------------
n966_var_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n969_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n967_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n970_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n968_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n971_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n969_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n972_var_α
#-----------------------------------------------------------------------------------------------------------------------
n970_binop_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n973_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n971_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx1224_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n974_binop_α
.Lx1224_0:
                        .quad            .Lx1224_0_s
.Lx1224_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n972_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n975_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n973_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n963_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n976_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n974_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n977_var_α
#-----------------------------------------------------------------------------------------------------------------------
n975_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n978_binop_α
.Lx1229_0:
                        .quad            .Lx1229_0_s
.Lx1229_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n976_deref_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n963_var_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n979_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n977_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n980_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n978_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n981_var_α
#-----------------------------------------------------------------------------------------------------------------------
n979_subscript_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n963_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n982_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n980_binop_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n983_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n981_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n984_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n982_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n985_var_α
#-----------------------------------------------------------------------------------------------------------------------
n983_subscript_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n986_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n984_binop_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n987_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n985_var_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n988_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n986_deref_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n966_var_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n989_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n987_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n935_unmark_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n990_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n988_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx1246_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n991_binop_α
.Lx1246_0:
                        .quad            .Lx1246_0_s
.Lx1246_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n989_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn1248:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1248]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n966_var_α
                                                                                        jmp   n966_var_α
n989_call_builtin_icon_β:
                                                                                        jmp   n966_var_α
#-----------------------------------------------------------------------------------------------------------------------
n990_deref_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n935_unmark_α
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n992_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n991_binop_α:
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n993_var_α
#-----------------------------------------------------------------------------------------------------------------------
n992_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn1252:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1252]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n935_unmark_α
                                                                                        jmp   n932_conjunction_α
n992_call_builtin_icon_β:
                                                                                        jmp   n935_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n993_var_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n994_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n994_binop_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              rdx, qword ptr [rbp + 3488]
                        mov              rcx, qword ptr [rbp + 3496]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n995_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n995_subscript_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n963_var_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n996_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n996_deref_α:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n963_var_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n997_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n997_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n963_var_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n963_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_β:
                                                                                        jmp   proc_makemdfa_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3592]
                        lea              rsp, [rbp + 3616]
                        mov              rbp, [rbp + 3608]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_ω:
                        mov              rax, [rbp + 3600]
                        lea              rsp, [rbp + 3616]
                        mov              rbp, [rbp + 3608]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_makemdfa_dcα:
                        pop              r11
                        sub              rsp, 3632
                        mov              qword ptr [rsp + 3608], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3584], r11
                        lea              rax, [rip + .Lx1259_2]
                        mov              qword ptr [rbp + 3592], rax
                        lea              rax, [rip + .Lx1259_3]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 3408
                        mov              edx, 3584
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_makemdfa_α_body
.Lx1259_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3616
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1259_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3616
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_equiv_α
proc_equiv_α:
                        .global          proc_equiv_α
                        .global          proc_equiv_β
                        .global          proc_equiv_γ
                        .global          proc_equiv_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_equiv_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1260_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1261_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1261_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx1276_0:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 80]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    proc_equiv_ω
                                                                                        jmp   n1262_assign_α
n1261_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx1276_0
#-----------------------------------------------------------------------------------------------------------------------
n1262_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n1263_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1263_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n1264_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1264_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n1266_var_α
n1264_disjunction_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        jne   .Lx1281_0
                                                                                        jmp   n1265_unmark_α
.Lx1281_0:
                                                                                        jmp   n1265_unmark_α
n1264_disjunction_β:
                        mov              eax, dword ptr [rbp + 176]
                                                                                        jmp   n1265_unmark_α
n1264_disjunction_af:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                                                                                        jmp   n1265_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1265_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n1261_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1266_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1267_var_α
n1266_var_β:
                                                                                        jmp   n1264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1267_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1268_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1268_binop_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n1264_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n1269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1269_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1270_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1270_binop_test_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1264_disjunction_af
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n1271_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1271_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1272_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1272_return_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_equiv_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_β:
                                                                                        jmp   proc_equiv_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 312]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_equiv_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 304], r11
                        lea              rax, [rip + .Lx1295_2]
                        mov              qword ptr [rbp + 312], rax
                        lea              rax, [rip + .Lx1295_3]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 288
                        mov              edx, 304
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_equiv_α_body
.Lx1295_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1295_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_equivdelta_α
proc_equivdelta_α:
                        .global          proc_equivdelta_α
                        .global          proc_equivdelta_β
                        .global          proc_equivdelta_γ
                        .global          proc_equivdelta_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_equivdelta_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1296_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1297_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1297_iterate_α:
                        mov              qword ptr [rbp + 352], 0
.Lx1316_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 352]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              rax, 99
                                                                                        je    n1298_var_α
                                                                                        jmp   n1299_assign_α
n1297_iterate_β:
                        inc              qword ptr [rbp + 352]
                                                                                        jmp   .Lx1316_0
#-----------------------------------------------------------------------------------------------------------------------
n1298_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1300_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1299_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n1298_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1300_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1320_0]
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n1301_var_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n1302_var_α
.Lx1320_0:
                        .quad            .Lx1320_0_s
.Lx1320_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n1301_var_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1303_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1302_var_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1304_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1303_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1305_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1304_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx1327_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n1306_binop_α
.Lx1327_0:
                        .quad            .Lx1327_0_s
.Lx1327_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1305_call_proc_staged_α:
                        lea              rsi, [rbp + 144]
                        lea              rdx, [rbp + 160]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1329_2
.Lx1329_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_equivdelta_ω
                                                                                        jmp   n1307_return_α
n1305_call_proc_staged_β:
                                                                                        jmp   proc_equivdelta_ω
.Lx1329_0:
                        .quad            .Lx1329_0_s
.Lx1329_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n1306_binop_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n1308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1307_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_equivdelta_γ
#-----------------------------------------------------------------------------------------------------------------------
n1308_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1309_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1309_binop_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n1310_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1310_subscript_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1301_var_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n1311_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1311_deref_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1301_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n1312_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1312_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n1301_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_β:
                                                                                        jmp   proc_equivdelta_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 424]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_equivdelta_dcα:
                        pop              r11
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 416], r11
                        lea              rax, [rip + .Lx1338_2]
                        mov              qword ptr [rbp + 424], rax
                        lea              rax, [rip + .Lx1338_3]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 384
                        mov              edx, 416
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_equivdelta_α_body
.Lx1338_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1338_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_finalstates_α
proc_finalstates_α:
                        .global          proc_finalstates_α
                        .global          proc_finalstates_β
                        .global          proc_finalstates_γ
                        .global          proc_finalstates_ω
                        sub              rsp, 736
                        mov              [rsp + 712], rcx
                        mov              [rsp + 720], rdx
                        mov              [rsp + 728], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 640
                        mov              edx, 704
                        call             rt_jmp_frame_lexprep2@PLT
proc_finalstates_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1339_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1368:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1368]
                        lea              rsi, [rbp + 624]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n1341_var_α
                                                                                        jmp   n1340_assign_α
n1339_call_builtin_icon_β:
                                                                                        jmp   n1341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1340_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n1341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1341_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1342_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1342_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx1372_0]
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n1343_make_list_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n1344_iterate_α
.Lx1372_0:
                        .quad            .Lx1372_0_s
.Lx1372_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n1343_make_list_α:
                        lea              rdi, [rbp + 320]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n1345_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1344_iterate_α:
                        mov              qword ptr [rbp + 336], 0
.Lx1376_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 336]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 99
                                                                                        je    n1343_make_list_α
                                                                                        jmp   n1346_assign_α
n1344_iterate_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx1376_0
#-----------------------------------------------------------------------------------------------------------------------
n1345_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n1347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1346_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n1348_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1347_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1349_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1348_bound_α:
                        mov              qword ptr [rbp + 384], rsp
                                                                                        jmp   n1351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1349_var_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1352_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1350_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1353_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1354_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1352_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1390:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1390]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n1350_var_α
                                                                                        jmp   n1355_iterate_α
n1352_call_builtin_icon_β:
                                                                                        jmp   n1350_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1353_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_finalstates_γ
#-----------------------------------------------------------------------------------------------------------------------
n1354_var_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1355_iterate_α:
                        mov              qword ptr [rbp + 160], 0
.Lx1395_0:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 160]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              rax, 99
                                                                                        je    n1350_var_α
                                                                                        jmp   n1358_lit_integer_α
n1355_iterate_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx1395_0
#-----------------------------------------------------------------------------------------------------------------------
n1356_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1359_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1357_unmark_α:
                        mov              rsp, qword ptr [rbp + 384]
                                                                                        jmp   n1344_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1358_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx1400_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1360_subscript_α
.Lx1400_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1359_call_proc_staged_α:
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 544]
                        call             proc_equiv_dcα
                                                                                        jmp   .Lx1402_2
.Lx1402_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n1357_unmark_α
                                                                                        jmp   n1361_assign_α
n1359_call_proc_staged_β:
                                                                                        jmp   n1357_unmark_α
.Lx1402_0:
                        .quad            .Lx1402_0_s
.Lx1402_0_s:
                        .string          "equiv"
#-----------------------------------------------------------------------------------------------------------------------
n1360_subscript_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1355_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1362_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1361_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1363_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n1362_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n1355_iterate_β
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1364_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1363_subscript_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n1357_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n1365_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1364_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn1408:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1408]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n1355_iterate_β
                                                                                        jmp   n1355_iterate_β
n1364_call_builtin_icon_β:
                                                                                        jmp   n1355_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1365_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n1366_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1366_assign_var_α:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n1357_unmark_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n1357_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_β:
                                                                                        jmp   proc_finalstates_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 712]
                        lea              rsp, [rbp + 736]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_ω:
                        mov              rax, [rbp + 720]
                        lea              rsp, [rbp + 736]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_finalstates_dcα:
                        pop              r11
                        sub              rsp, 752
                        mov              qword ptr [rsp + 728], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 704], r11
                        lea              rax, [rip + .Lx1412_2]
                        mov              qword ptr [rbp + 712], rax
                        lea              rax, [rip + .Lx1412_3]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 640
                        mov              edx, 704
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_finalstates_α_body
.Lx1412_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -736
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1412_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -736
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_diff_α
proc_diff_α:
                        .global          proc_diff_α
                        .global          proc_diff_β
                        .global          proc_diff_γ
                        .global          proc_diff_ω
                        sub              rsp, 624
                        mov              [rsp + 600], rcx
                        mov              [rsp + 608], rdx
                        mov              [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 592
                        call             rt_jmp_frame_lexprep2@PLT
proc_diff_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1413_lit_charset_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              dword ptr [rbp + 532], -1
                        mov              rax, qword ptr [rip + .Lx1442_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1414_assign_α
.Lx1442_0:
                        .quad            .Lx1442_0_s
.Lx1442_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1414_assign_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n1415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1415_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1416_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1418_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1417_lit_charset_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              dword ptr [rbp + 436], -1
                        mov              rax, qword ptr [rip + .Lx1448_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1419_assign_α
.Lx1448_0:
                        .quad            .Lx1448_0_s
.Lx1448_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1418_iterate_α:
                        mov              qword ptr [rbp + 496], 0
.Lx1450_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              rax, 99
                                                                                        je    n1417_lit_charset_α
                                                                                        jmp   n1420_binop_α
n1418_iterate_β:
                        inc              qword ptr [rbp + 496]
                                                                                        jmp   .Lx1450_0
#-----------------------------------------------------------------------------------------------------------------------
n1419_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n1421_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1420_binop_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n1417_lit_charset_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n1422_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1421_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1422_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n1418_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1423_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1425_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1424_make_list_α:
                        lea              rdi, [rbp + 352]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n1426_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1425_iterate_α:
                        mov              qword ptr [rbp + 400], 0
.Lx1461_0:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 400]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              rax, 99
                                                                                        je    n1424_make_list_α
                                                                                        jmp   n1427_binop_α
n1425_iterate_β:
                        inc              qword ptr [rbp + 400]
                                                                                        jmp   .Lx1461_0
#-----------------------------------------------------------------------------------------------------------------------
n1426_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n1428_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1427_binop_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n1424_make_list_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n1429_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1428_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1429_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n1425_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1430_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1432_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1431_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n1434_var_α
n1431_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx1470_0
                                                                                        jmp   n1433_var_α
.Lx1470_0:
                                                                                        jmp   n1433_var_α
n1431_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n1433_var_α
n1431_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n1433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1432_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1435_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1433_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1436_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1434_var_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1437_unop_α
n1434_var_β:
                                                                                        jmp   n1431_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1435_binop_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n1431_disjunction_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n1438_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n1436_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_diff_γ
#-----------------------------------------------------------------------------------------------------------------------
n1437_unop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n1439_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1438_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx1481_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 256]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 99
                                                                                        je    n1431_disjunction_α
                                                                                        jmp   n1440_call_builtin_icon_α
n1438_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx1481_0
#-----------------------------------------------------------------------------------------------------------------------
n1439_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx1482_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1441_binop_test_α
.Lx1482_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1440_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1484:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1484]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n1438_iterate_β
                                                                                        jmp   n1438_iterate_β
n1440_call_builtin_icon_β:
                                                                                        jmp   n1438_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n1441_binop_test_α:
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 100
                                                                                        je    .Lx1485_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 100
                                                                                        je    .Lx1485_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx1485_2
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx1485_2
.Lx1485_1:
                        mov              rax, qword ptr [rbp + 120]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx
                                                                                        jne   n1431_disjunction_af
                        mov              rcx, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rcx
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rcx
                                                                                        jmp   proc_diff_ω
.Lx1485_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              r8d, 9
                        lea              r9, [rbp + 96]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx1485_1
                        cmp              eax, 1
                                                                                        je    n1431_disjunction_af
                                                                                        jmp   proc_diff_ω
.Lx1485_2:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1431_disjunction_af
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   proc_diff_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_β:
                                                                                        jmp   proc_diff_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 600]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_ω:
                        mov              rax, [rbp + 608]
                        lea              rsp, [rbp + 624]
                        mov              rbp, [rbp + 616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_diff_dcα:
                        pop              r11
                        sub              rsp, 640
                        mov              qword ptr [rsp + 616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 592], r11
                        lea              rax, [rip + .Lx1486_2]
                        mov              qword ptr [rbp + 600], rax
                        lea              rax, [rip + .Lx1486_3]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 544
                        mov              edx, 592
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_diff_α_body
.Lx1486_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1486_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "dfa(Q,S,d,q0,F)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "getdfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_getdfa_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_getdfa_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "readset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_readset_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 352
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_readset_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "showdfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_showdfa_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1664
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_showdfa_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "writeset"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_writeset_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_writeset_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "minimize"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_minimize_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3376
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_minimize_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "marklists"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_marklists_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_marklists_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "makemdfa"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_makemdfa_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 3584
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_makemdfa_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "equiv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_equiv_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_equiv_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "equivdelta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_equivdelta_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_equivdelta_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "finalstates"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_finalstates_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 704
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_finalstates_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "diff"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_diff_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_diff_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "distab"
.Lgvan1:                .string          "dlists"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
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
                        sub              rsp, 408
                        mov              rdi, rsp
                        mov              ecx, 408
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 400], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1487_call_proc_staged_α:
                        call             proc_getdfa_dcα
                                                                                        jmp   .Lx1501_2
.Lx1501_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n1489_lit_integer_α
                                                                                        jmp   n1488_assign_α
n1487_call_proc_staged_β:
                                                                                        jmp   n1489_lit_integer_α
.Lx1501_0:
                        .quad            .Lx1501_0_s
.Lx1501_0_s:
                        .string          "getdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1488_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n1489_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1489_lit_integer_α:
                        mov              qword ptr [rbp + 32], 6
                        mov              rax, qword ptr [rip + .Lx1503_0]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n1490_lit_integer_α
.Lx1503_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1490_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx1504_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n1491_to_α
.Lx1504_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1491_to_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 16], rax
.Lx1506_0:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 56]
                        cmp              rax, rcx
                                                                                        jg    main_ω
                        mov              qword ptr [rbp + 0], 6
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n1492_bound_α
n1491_to_β:
                        inc              qword ptr [rbp + 16]
                                                                                        jmp   .Lx1506_0
#-----------------------------------------------------------------------------------------------------------------------
n1492_bound_α:
                        mov              qword ptr [rbp + 64], rsp
                                                                                        jmp   n1493_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1493_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1509_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1494_lit_string_α
.Lx1509_0:
                        .quad            .Lx1509_0_s
.Lx1509_0_s:
                        .string          "Reduced"
#-----------------------------------------------------------------------------------------------------------------------
n1494_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx1510_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1495_var_α
.Lx1510_0:
                        .quad            .Lx1510_0_s
.Lx1510_0_s:
                        .string          "Original"
#-----------------------------------------------------------------------------------------------------------------------
n1495_var_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1496_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1496_call_proc_staged_α:
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 320]
                        call             proc_showdfa_dcα
                                                                                        jmp   .Lx1514_2
.Lx1514_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n1497_unmark_α
                                                                                        jmp   n1498_call_proc_staged_α
n1496_call_proc_staged_β:
                                                                                        jmp   n1497_unmark_α
.Lx1514_0:
                        .quad            .Lx1514_0_s
.Lx1514_0_s:
                        .string          "showdfa"
#-----------------------------------------------------------------------------------------------------------------------
n1497_unmark_α:
                        mov              rsp, qword ptr [rbp + 64]
                                                                                        jmp   n1491_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1498_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        call             proc_minimize_dcα
                                                                                        jmp   .Lx1518_2
.Lx1518_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n1497_unmark_α
                                                                                        jmp   n1499_call_proc_staged_α
n1498_call_proc_staged_β:
                                                                                        jmp   n1497_unmark_α
.Lx1518_0:
                        .quad            .Lx1518_0_s
.Lx1518_0_s:
                        .string          "minimize"
#-----------------------------------------------------------------------------------------------------------------------
n1499_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 192]
                        call             proc_showdfa_dcα
                                                                                        jmp   .Lx1520_2
.Lx1520_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1497_unmark_α
                                                                                        jmp   n1497_unmark_α
n1499_call_proc_staged_β:
                                                                                        jmp   n1497_unmark_α
.Lx1520_0:
                        .quad            .Lx1520_0_s
.Lx1520_0_s:
                        .string          "showdfa"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 400]
                        add              rsp, 408
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 400]
                        add              rsp, 408
                        ret
                        .section         .note.GNU-stack,"",@progbits
