                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1040
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx29_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx29_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx29_101
.Lx29_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx29_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n3_op11_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "copy_stream_data"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx33_2]
                                                                                        jmp   .Lx33_3
.Lx33_2:
                        .quad            .Lx33_2_s
.Lx33_2_s:
                        .string          "copy_stream_data"
.Lx33_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n7_lit_string_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n8_lit_string_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n9_op11_α
.Lx39_0:
                        .quad            .Lx39_0_s
.Lx39_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n10_lit_string_α
n9_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n11_lit_string_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n12_lit_string_α
.Lx42_0:
                        .quad            .Lx42_0_s
.Lx42_0_s:
                        .string          "condition"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n13_lit_string_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "access_file"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n14_lit_string_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "/dev/zero"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n15_op11_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "exist"
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n16_op11_α
n15_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n17_lit_string_α
n16_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n18_lit_string_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n19_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "condition"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n20_op11_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "supports_interrupts"
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n21_lit_string_α
n20_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n22_op11_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n23_op11_α
n22_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n24_op11_α
n23_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n25_op11_α
n24_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx56_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx56_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_41
                        cmp              esi, 1
                                                                                        jne   .Lx56_55
                        mov              r8, rax
                                                                                        jmp   .Lx56_40
.Lx56_55:
                        cmp              esi, 2
                                                                                        jne   .Lx56_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx56_41
                        mov              r8, rax
                                                                                        jmp   .Lx56_40
.Lx56_56:
                        cmp              eax, 13
                                                                                        jne   .Lx56_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_41
                        cmp              rax, r8
                                                                                        je    .Lx56_41
                        mov              r8, rax
                                                                                        jmp   .Lx56_40
.Lx56_41:
                        lea              r9, [rbp + 224]
.Lx56_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx56_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_43
                        cmp              esi, 1
                                                                                        jne   .Lx56_57
                        mov              r9, rax
                                                                                        jmp   .Lx56_42
.Lx56_57:
                        cmp              esi, 2
                                                                                        jne   .Lx56_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx56_43
                        mov              r9, rax
                                                                                        jmp   .Lx56_42
.Lx56_58:
                        cmp              eax, 13
                                                                                        jne   .Lx56_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx56_43
                        cmp              rax, r9
                                                                                        je    .Lx56_43
                        mov              r9, rax
                                                                                        jmp   .Lx56_42
.Lx56_43:
                        cmp              r8, r9
                                                                                        je    .Lx56_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx56_44
                        cmp              eax, 99
                                                                                        je    .Lx56_44
                        cmp              eax, 13
                                                                                        jne   .Lx56_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx56_44
                                                                                        jmp   .Lx56_45
.Lx56_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx56_53
                        cmp              eax, 99
                                                                                        je    .Lx56_53
                        cmp              eax, 13
                                                                                        jne   .Lx56_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx56_53
                                                                                        jmp   .Lx56_46
.Lx56_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx56_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx56_53
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
                                                                                        jmp   .Lx56_51
.Lx56_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx56_47
                        cmp              eax, 99
                                                                                        je    .Lx56_47
                        cmp              eax, 13
                                                                                        jne   .Lx56_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx56_47
                                                                                        jmp   .Lx56_48
.Lx56_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx56_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx56_53
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
                                                                                        jmp   .Lx56_51
.Lx56_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx56_49
                        cmp              edx, 14
                                                                                        je    .Lx56_53
                                                                                        jmp   .Lx56_52
.Lx56_49:
                        cmp              edx, 14
                                                                                        je    .Lx56_52
                        cmp              ecx, 7
                                                                                        je    .Lx56_53
                        cmp              edx, 7
                                                                                        je    .Lx56_53
                        cmp              ecx, 6
                                                                                        jne   .Lx56_50
                        cmp              edx, 6
                                                                                        jne   .Lx56_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx56_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx56_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx56_51
                                                                                        jmp   .Lx56_52
.Lx56_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx56_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx56_53
.Lx56_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx56_54
.Lx56_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx56_54
.Lx56_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx56_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n26_lit_string_α
n25_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n27_call_proc_staged_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "cp_zero_null"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx59_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx59_21
.Lx59_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx59_21:
                        mov              edi, 10
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx59_1
                        lea              rcx, [rip + .Lx59_3]
                        lea              rdx, [rip + .Lx59_4]
                                                                                        jmp   rax
.Lx59_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx59_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx59_2
.Lx59_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx59_2
.Lx59_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx59_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx59_2
.Lx59_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx59_2
.Lx59_1:
                        call             rt_faildescr@PLT
.Lx59_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n28_suspend_α
n27_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "test_interrupt/1"
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n28_suspend_β:
                                                                                        jmp   n27_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1040]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1064]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
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
                        lea              rax, [rip + n64_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n63_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx67_60:
                        .section         .rodata
.Lbynamegenfn31:        .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn31]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n64_suspend_α
n63_call_builtin_gen_β:
                                                                                        jmp   .Lx67_60
#-----------------------------------------------------------------------------------------------------------------------
n64_suspend_α:
                        lea              rax, [rip + n64_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n64_suspend_β:
                                                                                        jmp   n63_call_builtin_gen_β
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
                        .globl           proc_run$2F2_α
proc_run$2F2_α:
                        .global          proc_run$2F2_α
                        .global          proc_run$2F2_β
                        .global          proc_run$2F2_γ
                        .global          proc_run$2F2_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_run$2F2_α_body:
                        lea              rax, [rip + n83_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx84_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx84_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx84_101
.Lx84_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx84_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_run$2F2_ω
                                                                                        jmp   n71_var_ref_α
n70_op11_β:
                                                                                        jmp   proc_run$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx89_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx89_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        cmp              esi, 1
                                                                                        jne   .Lx89_55
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_55:
                        cmp              esi, 2
                                                                                        jne   .Lx89_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_56:
                        cmp              eax, 13
                                                                                        jne   .Lx89_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        cmp              rax, r8
                                                                                        je    .Lx89_41
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_41:
                        lea              r9, [rbp + 400]
.Lx89_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx89_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        cmp              esi, 1
                                                                                        jne   .Lx89_57
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_57:
                        cmp              esi, 2
                                                                                        jne   .Lx89_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_58:
                        cmp              eax, 13
                                                                                        jne   .Lx89_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        cmp              rax, r9
                                                                                        je    .Lx89_43
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_43:
                        cmp              r8, r9
                                                                                        je    .Lx89_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_44
                        cmp              eax, 99
                                                                                        je    .Lx89_44
                        cmp              eax, 13
                                                                                        jne   .Lx89_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx89_44
                                                                                        jmp   .Lx89_45
.Lx89_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_53
                        cmp              eax, 99
                                                                                        je    .Lx89_53
                        cmp              eax, 13
                                                                                        jne   .Lx89_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx89_53
                                                                                        jmp   .Lx89_46
.Lx89_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx89_53
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
                                                                                        jmp   .Lx89_51
.Lx89_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_47
                        cmp              eax, 99
                                                                                        je    .Lx89_47
                        cmp              eax, 13
                                                                                        jne   .Lx89_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx89_47
                                                                                        jmp   .Lx89_48
.Lx89_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx89_53
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
                                                                                        jmp   .Lx89_51
.Lx89_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx89_49
                        cmp              edx, 14
                                                                                        je    .Lx89_53
                                                                                        jmp   .Lx89_52
.Lx89_49:
                        cmp              edx, 14
                                                                                        je    .Lx89_52
                        cmp              ecx, 7
                                                                                        je    .Lx89_53
                        cmp              edx, 7
                                                                                        je    .Lx89_53
                        cmp              ecx, 6
                                                                                        jne   .Lx89_50
                        cmp              edx, 6
                                                                                        jne   .Lx89_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx89_51
                                                                                        jmp   .Lx89_52
.Lx89_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx89_53
.Lx89_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx89_54
.Lx89_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx89_54
.Lx89_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx89_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
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
                                                                                        je    proc_run$2F2_ω
                                                                                        jmp   proc_run$2F2_ω
n75_op11_β:
                                                                                        jmp   proc_run$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n77_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx95_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx95_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx95_41
                        cmp              esi, 1
                                                                                        jne   .Lx95_55
                        mov              r8, rax
                                                                                        jmp   .Lx95_40
.Lx95_55:
                        cmp              esi, 2
                                                                                        jne   .Lx95_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx95_41
                        mov              r8, rax
                                                                                        jmp   .Lx95_40
.Lx95_56:
                        cmp              eax, 13
                                                                                        jne   .Lx95_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx95_41
                        cmp              rax, r8
                                                                                        je    .Lx95_41
                        mov              r8, rax
                                                                                        jmp   .Lx95_40
.Lx95_41:
                        lea              r9, [rbp + 320]
.Lx95_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx95_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx95_43
                        cmp              esi, 1
                                                                                        jne   .Lx95_57
                        mov              r9, rax
                                                                                        jmp   .Lx95_42
.Lx95_57:
                        cmp              esi, 2
                                                                                        jne   .Lx95_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx95_43
                        mov              r9, rax
                                                                                        jmp   .Lx95_42
.Lx95_58:
                        cmp              eax, 13
                                                                                        jne   .Lx95_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx95_43
                        cmp              rax, r9
                                                                                        je    .Lx95_43
                        mov              r9, rax
                                                                                        jmp   .Lx95_42
.Lx95_43:
                        cmp              r8, r9
                                                                                        je    .Lx95_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx95_44
                        cmp              eax, 99
                                                                                        je    .Lx95_44
                        cmp              eax, 13
                                                                                        jne   .Lx95_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx95_44
                                                                                        jmp   .Lx95_45
.Lx95_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx95_53
                        cmp              eax, 99
                                                                                        je    .Lx95_53
                        cmp              eax, 13
                                                                                        jne   .Lx95_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx95_53
                                                                                        jmp   .Lx95_46
.Lx95_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx95_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx95_53
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
                                                                                        jmp   .Lx95_51
.Lx95_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx95_47
                        cmp              eax, 99
                                                                                        je    .Lx95_47
                        cmp              eax, 13
                                                                                        jne   .Lx95_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx95_47
                                                                                        jmp   .Lx95_48
.Lx95_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx95_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx95_53
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
                                                                                        jmp   .Lx95_51
.Lx95_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx95_49
                        cmp              edx, 14
                                                                                        je    .Lx95_53
                                                                                        jmp   .Lx95_52
.Lx95_49:
                        cmp              edx, 14
                                                                                        je    .Lx95_52
                        cmp              ecx, 7
                                                                                        je    .Lx95_53
                        cmp              edx, 7
                                                                                        je    .Lx95_53
                        cmp              ecx, 6
                                                                                        jne   .Lx95_50
                        cmp              edx, 6
                                                                                        jne   .Lx95_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx95_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx95_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx95_51
                                                                                        jmp   .Lx95_52
.Lx95_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx95_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx95_53
.Lx95_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx95_54
.Lx95_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx95_54
.Lx95_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx95_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n78_var_ref_α
n77_op11_β:
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n80_call_proc_staged_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "running"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx100_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx100_21
.Lx100_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx100_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx100_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx100_23
.Lx100_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx100_23:
                        mov              rdi, qword ptr [rip + .Lx100_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx100_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx100_3]
                        lea              rdx, [rip + .Lx100_4]
                                                                                        jmp   rax
.Lx100_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx100_2
.Lx100_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx100_2
.Lx100_1:
                        call             rt_faildescr@PLT
.Lx100_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n81_var_ref_α
n80_call_proc_staged_β:
                                                                                        jmp   n75_op11_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "thread_send_message/2"
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n82_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n82_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx104_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx104_21
.Lx104_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx104_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx104_1
                        lea              rcx, [rip + .Lx104_3]
                        lea              rdx, [rip + .Lx104_4]
                                                                                        jmp   rax
.Lx104_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx104_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx104_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_1:
                        call             rt_faildescr@PLT
.Lx104_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n80_call_proc_staged_β
                                                                                        jmp   n83_suspend_α
n82_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n83_suspend_α:
                        lea              rax, [rip + n83_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_run$2F2_γ
n83_suspend_β:
                                                                                        jmp   n82_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_run$2F2_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_run$2F2_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1264
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx143_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx143_101
.Lx143_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx143_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n108_var_ref_α
n107_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n110_op11_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        mov              rsi, qword ptr [rip + .Lx147_2]
                                                                                        jmp   .Lx147_3
.Lx147_2:
                        .quad            .Lx147_2_s
.Lx147_2_s:
                        .string          "interrupt"
.Lx147_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n111_var_ref_α
n110_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n112_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n114_op11_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "copy_stream_data"
#-----------------------------------------------------------------------------------------------------------------------
n114_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              rsi, qword ptr [rip + .Lx152_2]
                                                                                        jmp   .Lx152_3
.Lx152_2:
                        .quad            .Lx152_2_s
.Lx152_2_s:
                        .string          "copy_stream_data"
.Lx152_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n115_var_ref_α
n114_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n116_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n117_lit_string_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n118_lit_string_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n119_op11_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n120_lit_string_α
n119_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n121_lit_string_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n122_lit_string_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "condition"
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n123_lit_string_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "access_file"
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n124_lit_string_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "/dev/zero"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n125_op11_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "exist"
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n126_op11_α
n125_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n127_lit_string_α
n126_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n128_lit_string_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n129_lit_string_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "condition"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n130_op11_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "supports_interrupts"
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n131_lit_string_α
n130_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n132_op11_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n133_op11_α
n132_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n134_op11_α
n133_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n135_op11_α
n134_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx174_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              esi, 1
                                                                                        jne   .Lx174_55
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_55:
                        cmp              esi, 2
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_56:
                        cmp              eax, 13
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              rax, r8
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_41:
                        lea              r9, [rbp + 368]
.Lx174_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              esi, 1
                                                                                        jne   .Lx174_57
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_57:
                        cmp              esi, 2
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_58:
                        cmp              eax, 13
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              rax, r9
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_43:
                        cmp              r8, r9
                                                                                        je    .Lx174_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_44
                        cmp              eax, 99
                                                                                        je    .Lx174_44
                        cmp              eax, 13
                                                                                        jne   .Lx174_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx174_44
                                                                                        jmp   .Lx174_45
.Lx174_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_53
                        cmp              eax, 99
                                                                                        je    .Lx174_53
                        cmp              eax, 13
                                                                                        jne   .Lx174_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_46
.Lx174_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_47
                        cmp              eax, 99
                                                                                        je    .Lx174_47
                        cmp              eax, 13
                                                                                        jne   .Lx174_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_47
                                                                                        jmp   .Lx174_48
.Lx174_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx174_49
                        cmp              edx, 14
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_52
.Lx174_49:
                        cmp              edx, 14
                                                                                        je    .Lx174_52
                        cmp              ecx, 7
                                                                                        je    .Lx174_53
                        cmp              edx, 7
                                                                                        je    .Lx174_53
                        cmp              ecx, 6
                                                                                        jne   .Lx174_50
                        cmp              edx, 6
                                                                                        jne   .Lx174_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx174_51
                                                                                        jmp   .Lx174_52
.Lx174_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
.Lx174_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx174_54
.Lx174_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx174_54
.Lx174_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx174_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n136_var_ref_α
n135_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n138_lit_string_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "test_interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n139_op11_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "cp_zero_null"
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n140_op11_α
n139_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx180_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx180_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_41
                        cmp              esi, 1
                                                                                        jne   .Lx180_55
                        mov              r8, rax
                                                                                        jmp   .Lx180_40
.Lx180_55:
                        cmp              esi, 2
                                                                                        jne   .Lx180_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx180_41
                        mov              r8, rax
                                                                                        jmp   .Lx180_40
.Lx180_56:
                        cmp              eax, 13
                                                                                        jne   .Lx180_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_41
                        cmp              rax, r8
                                                                                        je    .Lx180_41
                        mov              r8, rax
                                                                                        jmp   .Lx180_40
.Lx180_41:
                        lea              r9, [rbp + 208]
.Lx180_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx180_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_43
                        cmp              esi, 1
                                                                                        jne   .Lx180_57
                        mov              r9, rax
                                                                                        jmp   .Lx180_42
.Lx180_57:
                        cmp              esi, 2
                                                                                        jne   .Lx180_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx180_43
                        mov              r9, rax
                                                                                        jmp   .Lx180_42
.Lx180_58:
                        cmp              eax, 13
                                                                                        jne   .Lx180_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx180_43
                        cmp              rax, r9
                                                                                        je    .Lx180_43
                        mov              r9, rax
                                                                                        jmp   .Lx180_42
.Lx180_43:
                        cmp              r8, r9
                                                                                        je    .Lx180_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx180_44
                        cmp              eax, 99
                                                                                        je    .Lx180_44
                        cmp              eax, 13
                                                                                        jne   .Lx180_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx180_44
                                                                                        jmp   .Lx180_45
.Lx180_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx180_53
                        cmp              eax, 99
                                                                                        je    .Lx180_53
                        cmp              eax, 13
                                                                                        jne   .Lx180_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx180_53
                                                                                        jmp   .Lx180_46
.Lx180_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx180_53
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
                                                                                        jmp   .Lx180_51
.Lx180_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx180_47
                        cmp              eax, 99
                                                                                        je    .Lx180_47
                        cmp              eax, 13
                                                                                        jne   .Lx180_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx180_47
                                                                                        jmp   .Lx180_48
.Lx180_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx180_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx180_53
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
                                                                                        jmp   .Lx180_51
.Lx180_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx180_49
                        cmp              edx, 14
                                                                                        je    .Lx180_53
                                                                                        jmp   .Lx180_52
.Lx180_49:
                        cmp              edx, 14
                                                                                        je    .Lx180_52
                        cmp              ecx, 7
                                                                                        je    .Lx180_53
                        cmp              edx, 7
                                                                                        je    .Lx180_53
                        cmp              ecx, 6
                                                                                        jne   .Lx180_50
                        cmp              edx, 6
                                                                                        jne   .Lx180_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx180_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx180_51
                                                                                        jmp   .Lx180_52
.Lx180_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx180_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx180_53
.Lx180_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx180_54
.Lx180_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx180_54
.Lx180_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx180_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n112_op11_α
                                                                                        jmp   n141_move_label_α
n140_op11_β:
                                                                                        jmp   n112_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_move_label_α:
                        lea              rax, [rip + n112_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n142_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n142_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n142_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1272]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 1312
                        mov              qword ptr [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1264], r11
                        lea              rax, [rip + .Lx185_2]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rax, [rip + .Lx185_3]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 1264
                        mov              edx, 1264
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx185_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1296
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx185_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1296
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n189_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n186_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx191_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx191_101
.Lx191_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx191_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n187_lit_string_α
n186_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n188_call_proc_staged_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx194_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx194_21
.Lx194_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx194_21:
                        mov              rdi, qword ptr [rip + .Lx194_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx194_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx194_3]
                        lea              rdx, [rip + .Lx194_4]
                                                                                        jmp   rax
.Lx194_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx194_2
.Lx194_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx194_2
.Lx194_1:
                        call             rt_faildescr@PLT
.Lx194_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n190_op11_α
                                                                                        jmp   n189_suspend_α
n188_call_proc_staged_β:
                                                                                        jmp   n190_op11_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n189_suspend_α:
                        lea              rax, [rip + n189_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n189_suspend_β:
                                                                                        jmp   n188_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n190_op11_α:
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
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n190_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n204_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n198_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx205_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx205_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx205_101
.Lx205_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx205_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n199_lit_string_α
n198_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n200_lit_integer_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "test_interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n201_op11_α
.Lx207_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n203_op11_α
                                                                                        jmp   n202_call_proc_staged_α
n201_op11_β:
                                                                                        jmp   n203_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx210_21
.Lx210_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx210_21:
                        mov              rdi, qword ptr [rip + .Lx210_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx210_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4]
                                                                                        jmp   rax
.Lx210_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_1:
                        call             rt_faildescr@PLT
.Lx210_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n203_op11_α
                                                                                        jmp   n204_suspend_α
n202_call_proc_staged_β:
                                                                                        jmp   n203_op11_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n203_op11_α:
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
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n203_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n204_suspend_α:
                        lea              rax, [rip + n204_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n204_suspend_β:
                                                                                        jmp   n202_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n225_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n214_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx226_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx226_101
.Lx226_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx226_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n215_lit_string_α
n214_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n216_lit_string_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "test_interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n217_lit_string_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n218_lit_string_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n219_lit_integer_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "test_interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n220_op11_α
.Lx231_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n220_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n221_lit_string_α
n220_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n222_op11_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n223_call_proc_staged_α
n222_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx236_21
.Lx236_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx236_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx236_23
.Lx236_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx236_23:
                        mov              rdi, qword ptr [rip + .Lx236_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx236_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx236_3]
                        lea              rdx, [rip + .Lx236_4]
                                                                                        jmp   rax
.Lx236_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_1:
                        call             rt_faildescr@PLT
.Lx236_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n225_suspend_α
n223_call_proc_staged_β:
                                                                                        jmp   n224_op11_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n224_op11_α:
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
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n224_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_suspend_α:
                        lea              rax, [rip + n225_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n225_suspend_β:
                                                                                        jmp   n223_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 400]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cp_zero_null$2F0_α
proc_cp_zero_null$2F0_α:
                        .global          proc_cp_zero_null$2F0_α
                        .global          proc_cp_zero_null$2F0_β
                        .global          proc_cp_zero_null$2F0_γ
                        .global          proc_cp_zero_null$2F0_ω
                        sub              rsp, 1312
                        mov              [rsp + 1288], rcx
                        mov              [rsp + 1296], rdx
                        mov              [rsp + 1304], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1232
                        mov              edx, 1280
                        call             rt_jmp_frame_lexprep2@PLT
proc_cp_zero_null$2F0_α_body:
                        lea              rax, [rip + n275_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
#-----------------------------------------------------------------------------------------------------------------------
n240_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx276_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx276_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx276_101
.Lx276_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx276_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_cp_zero_null$2F0_ω
                                                                                        jmp   n241_lit_string_α
n240_op11_β:
                                                                                        jmp   proc_cp_zero_null$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n242_lit_string_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "/dev/zero"
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n243_var_ref_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n244_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n245_lit_string_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n246_lit_string_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n247_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n247_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    proc_cp_zero_null$2F0_ω
                                                                                        jmp   n248_lit_string_α
n247_op11_β:
                                                                                        jmp   proc_cp_zero_null$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n249_op11_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n250_op11_α
n249_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n250_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn288:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 912]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n252_lit_string_α
n250_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n251_op11_α:
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
                                                                                        je    proc_cp_zero_null$2F0_ω
                                                                                        jmp   proc_cp_zero_null$2F0_ω
n251_op11_β:
                                                                                        jmp   proc_cp_zero_null$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n253_lit_string_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "/dev/null"
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n254_var_ref_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n255_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n256_lit_string_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n257_lit_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n258_op11_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n258_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    proc_cp_zero_null$2F0_ω
                                                                                        jmp   n259_lit_string_α
n258_op11_β:
                                                                                        jmp   proc_cp_zero_null$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n260_op11_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n260_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n261_op11_α
n260_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n261_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn301:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rbp + 576]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n262_lit_string_α
n261_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n263_var_ref_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "copy_stream_data"
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n264_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n265_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n265_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n266_lit_string_α
n265_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n267_lit_string_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n268_var_ref_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "close"
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n269_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n269_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_cp_zero_null$2F0_ω
                                                                                        jmp   n270_lit_string_α
n269_op11_β:
                                                                                        jmp   proc_cp_zero_null$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n271_var_ref_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "close"
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n272_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_cp_zero_null$2F0_ω
                                                                                        jmp   n273_op11_α
n272_op11_β:
                                                                                        jmp   proc_cp_zero_null$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n273_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n274_call_proc_staged_α
n273_op11_β:
                                                                                        jmp   n251_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n274_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx319_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx319_21
.Lx319_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx319_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx319_22
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx319_23
.Lx319_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx319_23:
                        mov              rdi, qword ptr [rip + .Lx319_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx319_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4]
                                                                                        jmp   rax
.Lx319_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx319_2
.Lx319_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx319_2
.Lx319_1:
                        call             rt_faildescr@PLT
.Lx319_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n251_op11_α
                                                                                        jmp   n275_suspend_α
n274_call_proc_staged_β:
                                                                                        jmp   n251_op11_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "call_cleanup/2"
#-----------------------------------------------------------------------------------------------------------------------
n275_suspend_α:
                        lea              rax, [rip + n275_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_cp_zero_null$2F0_γ
n275_suspend_β:
                                                                                        jmp   n274_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_cp_zero_null$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cp_zero_null$2F0_β:
                                                                                        jmp   qword ptr [rbp + 1232]
#-----------------------------------------------------------------------------------------------------------------------
proc_cp_zero_null$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_cp_zero_null$2F0_res]
                        push             rax
                        mov              rax, [rbp + 1288]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cp_zero_null$2F0_ω:
                        mov              rax, [rbp + 1296]
                        lea              rsp, [rbp + 1312]
                        mov              rbp, [rbp + 1304]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_interrupt$2F0_α
proc_test_interrupt$2F0_α:
                        .global          proc_test_interrupt$2F0_α
                        .global          proc_test_interrupt$2F0_β
                        .global          proc_test_interrupt$2F0_γ
                        .global          proc_test_interrupt$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_interrupt$2F0_α_body:
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n322_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx330_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx330_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx330_101
.Lx330_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx330_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_interrupt$2F0_ω
                                                                                        jmp   n323_lit_string_α
n322_op11_β:
                                                                                        jmp   proc_test_interrupt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n324_lit_string_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n325_lit_string_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n326_op11_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n326_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n328_op11_α
                                                                                        jmp   n327_call_proc_staged_α
n326_op11_β:
                                                                                        jmp   n328_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n327_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx336_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx336_21
.Lx336_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx336_21:
                        mov              rdi, qword ptr [rip + .Lx336_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx336_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx336_3]
                        lea              rdx, [rip + .Lx336_4]
                                                                                        jmp   rax
.Lx336_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx336_2
.Lx336_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx336_2
.Lx336_1:
                        call             rt_faildescr@PLT
.Lx336_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n328_op11_α
                                                                                        jmp   n329_suspend_α
n327_call_proc_staged_β:
                                                                                        jmp   n328_op11_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
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
                                                                                        je    proc_test_interrupt$2F0_ω
                                                                                        jmp   proc_test_interrupt$2F0_ω
n328_op11_β:
                                                                                        jmp   proc_test_interrupt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_suspend_α:
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_interrupt$2F0_γ
n329_suspend_β:
                                                                                        jmp   n327_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_interrupt$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
                        .global          proc_between$2F3_α
                        .global          proc_between$2F3_β
                        .global          proc_between$2F3_γ
                        .global          proc_between$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_between$2F3_α_body:
                        lea              rax, [rip + n344_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n341_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n343_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx351_60:
                        .section         .rodata
.Lbynamegenfn154:       .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn154]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
                                                                                        jmp   n344_suspend_α
n343_call_builtin_gen_β:
                                                                                        jmp   .Lx351_60
#-----------------------------------------------------------------------------------------------------------------------
n344_suspend_α:
                        lea              rax, [rip + n344_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_between$2F3_γ
n344_suspend_β:
                                                                                        jmp   n343_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_between$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_interrupt$2F1_α
proc_test_interrupt$2F1_α:
                        .global          proc_test_interrupt$2F1_α
                        .global          proc_test_interrupt$2F1_β
                        .global          proc_test_interrupt$2F1_γ
                        .global          proc_test_interrupt$2F1_ω
                        sub              rsp, 1904
                        mov              [rsp + 1880], rcx
                        mov              [rsp + 1888], rdx
                        mov              [rsp + 1896], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1744
                        mov              edx, 1872
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_interrupt$2F1_α_body:
                        lea              rax, [rip + n400_suspend_β]
                        mov              qword ptr [rbp + 1744], rax
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx407_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx407_101
.Lx407_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx407_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_interrupt$2F1_ω
                                                                                        jmp   n355_var_ref_α
n354_op11_β:
                                                                                        jmp   proc_test_interrupt$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n356_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n357_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1680]
                        lea              r8, [rbp + 1680]
.Lx412_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx412_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_41
                        cmp              esi, 1
                                                                                        jne   .Lx412_55
                        mov              r8, rax
                                                                                        jmp   .Lx412_40
.Lx412_55:
                        cmp              esi, 2
                                                                                        jne   .Lx412_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx412_41
                        mov              r8, rax
                                                                                        jmp   .Lx412_40
.Lx412_56:
                        cmp              eax, 13
                                                                                        jne   .Lx412_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_41
                        cmp              rax, r8
                                                                                        je    .Lx412_41
                        mov              r8, rax
                                                                                        jmp   .Lx412_40
.Lx412_41:
                        lea              r9, [rbp + 1696]
.Lx412_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx412_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_43
                        cmp              esi, 1
                                                                                        jne   .Lx412_57
                        mov              r9, rax
                                                                                        jmp   .Lx412_42
.Lx412_57:
                        cmp              esi, 2
                                                                                        jne   .Lx412_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx412_43
                        mov              r9, rax
                                                                                        jmp   .Lx412_42
.Lx412_58:
                        cmp              eax, 13
                                                                                        jne   .Lx412_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx412_43
                        cmp              rax, r9
                                                                                        je    .Lx412_43
                        mov              r9, rax
                                                                                        jmp   .Lx412_42
.Lx412_43:
                        cmp              r8, r9
                                                                                        je    .Lx412_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx412_44
                        cmp              eax, 99
                                                                                        je    .Lx412_44
                        cmp              eax, 13
                                                                                        jne   .Lx412_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx412_44
                                                                                        jmp   .Lx412_45
.Lx412_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx412_53
                        cmp              eax, 99
                                                                                        je    .Lx412_53
                        cmp              eax, 13
                                                                                        jne   .Lx412_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx412_53
                                                                                        jmp   .Lx412_46
.Lx412_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx412_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx412_53
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
                                                                                        jmp   .Lx412_51
.Lx412_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx412_47
                        cmp              eax, 99
                                                                                        je    .Lx412_47
                        cmp              eax, 13
                                                                                        jne   .Lx412_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx412_47
                                                                                        jmp   .Lx412_48
.Lx412_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx412_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx412_53
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
                                                                                        jmp   .Lx412_51
.Lx412_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx412_49
                        cmp              edx, 14
                                                                                        je    .Lx412_53
                                                                                        jmp   .Lx412_52
.Lx412_49:
                        cmp              edx, 14
                                                                                        je    .Lx412_52
                        cmp              ecx, 7
                                                                                        je    .Lx412_53
                        cmp              edx, 7
                                                                                        je    .Lx412_53
                        cmp              ecx, 6
                                                                                        jne   .Lx412_50
                        cmp              edx, 6
                                                                                        jne   .Lx412_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx412_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx412_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx412_51
                                                                                        jmp   .Lx412_52
.Lx412_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx412_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx412_53
.Lx412_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx412_54
.Lx412_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx412_54
.Lx412_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx412_54:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n358_var_ref_α
n357_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n360_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n359_op11_α:
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
                                                                                        je    proc_test_interrupt$2F1_ω
                                                                                        jmp   proc_test_interrupt$2F1_ω
n359_op11_β:
                                                                                        jmp   proc_test_interrupt$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n360_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx417_20
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx417_21
.Lx417_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        call             rt_arg_stage@PLT
.Lx417_21:
                        mov              rdi, qword ptr [rip + .Lx417_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx417_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx417_3]
                        lea              rdx, [rip + .Lx417_4]
                                                                                        jmp   rax
.Lx417_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx417_2
.Lx417_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx417_2
.Lx417_1:
                        call             rt_faildescr@PLT
.Lx417_2:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n361_lit_string_α
n360_call_proc_staged_β:
                                                                                        jmp   n359_op11_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "thread_self/1"
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n362_var_ref_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "run"
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n363_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n364_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n365_var_ref_α
n364_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n366_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n367_call_proc_staged_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n367_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx428_20
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx428_21
.Lx428_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        call             rt_arg_stage@PLT
.Lx428_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx428_22
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx428_23
.Lx428_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        call             rt_arg_stage@PLT
.Lx428_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx428_24
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx428_25
.Lx428_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        call             rt_arg_stage@PLT
.Lx428_25:
                        mov              rdi, qword ptr [rip + .Lx428_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx428_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx428_3]
                        lea              rdx, [rip + .Lx428_4]
                                                                                        jmp   rax
.Lx428_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx428_2
.Lx428_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx428_2
.Lx428_1:
                        call             rt_faildescr@PLT
.Lx428_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n360_call_proc_staged_β
                                                                                        jmp   n368_lit_string_α
n367_call_proc_staged_β:
                                                                                        jmp   n360_call_proc_staged_β
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "thread_create/3"
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n369_call_proc_staged_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "running"
#-----------------------------------------------------------------------------------------------------------------------
n369_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx431_20
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx431_21
.Lx431_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        call             rt_arg_stage@PLT
.Lx431_21:
                        mov              rdi, qword ptr [rip + .Lx431_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx431_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx431_3]
                        lea              rdx, [rip + .Lx431_4]
                                                                                        jmp   rax
.Lx431_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx431_2
.Lx431_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx431_2
.Lx431_1:
                        call             rt_faildescr@PLT
.Lx431_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n367_call_proc_staged_β
                                                                                        jmp   n370_lit_real_α
n369_call_proc_staged_β:
                                                                                        jmp   n367_call_proc_staged_β
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "thread_get_message/1"
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_real_α:
                        mov              qword ptr [rbp + 1280], 7
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n371_call_proc_staged_α
.Lx432_0:
                        .quad            4591870180066957722
#-----------------------------------------------------------------------------------------------------------------------
n371_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx434_20
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx434_21
.Lx434_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        call             rt_arg_stage@PLT
.Lx434_21:
                        mov              rdi, qword ptr [rip + .Lx434_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx434_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx434_3]
                        lea              rdx, [rip + .Lx434_4]
                                                                                        jmp   rax
.Lx434_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx434_2
.Lx434_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx434_2
.Lx434_1:
                        call             rt_faildescr@PLT
.Lx434_2:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n369_call_proc_staged_β
                                                                                        jmp   n372_var_ref_α
n371_call_proc_staged_β:
                                                                                        jmp   n369_call_proc_staged_β
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "sleep/1"
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n373_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n374_lit_string_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "throw"
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n375_op11_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "stop"
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n376_call_proc_staged_α
n375_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n376_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx441_20
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx441_21
.Lx441_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        call             rt_arg_stage@PLT
.Lx441_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx441_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx441_23
.Lx441_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx441_23:
                        mov              rdi, qword ptr [rip + .Lx441_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx441_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx441_3]
                        lea              rdx, [rip + .Lx441_4]
                                                                                        jmp   rax
.Lx441_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx441_2
.Lx441_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx441_2
.Lx441_1:
                        call             rt_faildescr@PLT
.Lx441_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n371_call_proc_staged_β
                                                                                        jmp   n377_lit_integer_α
n376_call_proc_staged_β:
                                                                                        jmp   n371_call_proc_staged_β
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "thread_signal/2"
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:
                        mov              qword ptr [rbp + 1008], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n378_lit_integer_α
.Lx442_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n379_var_ref_α
.Lx443_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n380_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_proc_staged_α:
                        mov              qword ptr [rbp + 976], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx447_20
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx447_21
.Lx447_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx447_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx447_22
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx447_23
.Lx447_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx447_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx447_24
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx447_25
.Lx447_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx447_25:
                        mov              edi, 9
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx447_1
                        lea              rcx, [rip + .Lx447_3]
                        lea              rdx, [rip + .Lx447_4]
                                                                                        jmp   rax
.Lx447_3:
                        mov              qword ptr [rbp + 984], rsp
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx447_5
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx447_2
.Lx447_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx447_2
.Lx447_4:
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx447_6
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx447_2
.Lx447_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx447_2
.Lx447_1:
                        call             rt_faildescr@PLT
.Lx447_2:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n376_call_proc_staged_β
                                                                                        jmp   n381_var_ref_α
n380_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 984]
                                                                                        jmp   qword ptr [rsp]
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n382_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n383_var_ref_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "status"
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n384_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n376_call_proc_staged_β
                                                                                        jmp   n385_call_proc_staged_α
n384_op11_β:
                                                                                        jmp   n376_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n385_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx455_20
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx455_21
.Lx455_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        call             rt_arg_stage@PLT
.Lx455_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx455_22
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx455_23
.Lx455_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        call             rt_arg_stage@PLT
.Lx455_23:
                        mov              rdi, qword ptr [rip + .Lx455_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx455_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx455_3]
                        lea              rdx, [rip + .Lx455_4]
                                                                                        jmp   rax
.Lx455_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx455_2
.Lx455_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx455_2
.Lx455_1:
                        call             rt_faildescr@PLT
.Lx455_2:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n380_call_proc_staged_β
                                                                                        jmp   n386_var_ref_α
n385_call_proc_staged_β:
                                                                                        jmp   n380_call_proc_staged_β
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "thread_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n387_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n388_op11_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "running"
#-----------------------------------------------------------------------------------------------------------------------
n388_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn460:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn460]
                        lea              rsi, [rbp + 672]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n390_var_ref_α
                                                                                        jmp   n389_lit_real_α
n388_op11_β:
                                                                                        jmp   n390_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_real_α:
                        mov              qword ptr [rbp + 640], 7
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n391_call_proc_staged_α
.Lx461_0:
                        .quad            4587366580439587226
#-----------------------------------------------------------------------------------------------------------------------
n390_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n392_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n391_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx465_20
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx465_21
.Lx465_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx465_21:
                        mov              rdi, qword ptr [rip + .Lx465_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx465_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx465_3]
                        lea              rdx, [rip + .Lx465_4]
                                                                                        jmp   rax
.Lx465_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx465_2
.Lx465_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx465_2
.Lx465_1:
                        call             rt_faildescr@PLT
.Lx465_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n385_call_proc_staged_β
                                                                                        jmp   n391_call_proc_staged_β
n391_call_proc_staged_β:
                                                                                        jmp   n385_call_proc_staged_β
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "sleep/1"
#-----------------------------------------------------------------------------------------------------------------------
n392_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n393_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx469_20
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx469_21
.Lx469_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx469_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx469_22
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx469_23
.Lx469_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx469_23:
                        mov              rdi, qword ptr [rip + .Lx469_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx469_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx469_3]
                        lea              rdx, [rip + .Lx469_4]
                                                                                        jmp   rax
.Lx469_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx469_2
.Lx469_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx469_2
.Lx469_1:
                        call             rt_faildescr@PLT
.Lx469_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n376_call_proc_staged_β
                                                                                        jmp   n394_var_ref_α
n393_call_proc_staged_β:
                                                                                        jmp   n376_call_proc_staged_β
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "thread_join/2"
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n395_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n396_lit_string_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "exception"
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n397_op11_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "stop"
#-----------------------------------------------------------------------------------------------------------------------
n397_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n399_lit_string_α
                                                                                        jmp   n398_op11_α
n397_op11_β:
                                                                                        jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n398_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn476:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn476]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n399_lit_string_α
                                                                                        jmp   n400_suspend_α
n398_op11_β:
                                                                                        jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n401_lit_string_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n400_suspend_α:
                        lea              rax, [rip + n400_suspend_β]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_interrupt$2F1_γ
n400_suspend_β:
                                                                                        jmp   n376_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n402_var_ref_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "unexpected_status"
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n403_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n403_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_interrupt$2F1_ω
                                                                                        jmp   n404_var_ref_α
n403_op11_β:
                                                                                        jmp   proc_test_interrupt$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n405_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n405_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n393_call_proc_staged_β
                                                                                        jmp   n406_op11_α
n405_op11_β:
                                                                                        jmp   n393_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n406_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn488:              .string          "$throw"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn488]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n393_call_proc_staged_β
                                                                                        jmp   n400_suspend_α
n406_op11_β:
                                                                                        jmp   n393_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1744]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_interrupt$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1880]
                        mov              rbp, [rbp + 1896]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_interrupt$2F1_ω:
                        mov              rax, [rbp + 1888]
                        lea              rsp, [rbp + 1904]
                        mov              rbp, [rbp + 1896]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n489_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx503_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx503_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx503_101
.Lx503_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx503_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n490_lit_string_α
n489_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n491_lit_string_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n492_lit_string_α
.Lx505_0:
                        .quad            .Lx505_0_s
.Lx505_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n493_lit_string_α
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "condition"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n494_lit_string_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n495_lit_string_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "threads"
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n496_op11_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n496_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n497_op11_α
n496_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n497_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n498_lit_string_α
n497_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n499_op11_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n499_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n501_op11_α
                                                                                        jmp   n500_call_proc_staged_α
n499_op11_β:
                                                                                        jmp   n501_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n500_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx515_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx515_21
.Lx515_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx515_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx515_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx515_23
.Lx515_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx515_23:
                        mov              rdi, qword ptr [rip + .Lx515_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx515_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx515_3]
                        lea              rdx, [rip + .Lx515_4]
                                                                                        jmp   rax
.Lx515_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx515_2
.Lx515_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx515_2
.Lx515_1:
                        call             rt_faildescr@PLT
.Lx515_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n501_op11_α
                                                                                        jmp   n502_suspend_α
n500_call_proc_staged_β:
                                                                                        jmp   n501_op11_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "begin_tests/2"
#-----------------------------------------------------------------------------------------------------------------------
n501_op11_α:
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
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n501_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n502_suspend_α:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n502_suspend_β:
                                                                                        jmp   n500_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_supports_interrupts$2F0_α
proc_supports_interrupts$2F0_α:
                        .global          proc_supports_interrupts$2F0_α
                        .global          proc_supports_interrupts$2F0_β
                        .global          proc_supports_interrupts$2F0_γ
                        .global          proc_supports_interrupts$2F0_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_supports_interrupts$2F0_α_body:
                        lea              rax, [rip + n526_suspend_β]
                        mov              qword ptr [rbp + 304], rax
#-----------------------------------------------------------------------------------------------------------------------
n519_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx530_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx530_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx530_101
.Lx530_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx530_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_supports_interrupts$2F0_ω
                                                                                        jmp   n520_var_ref_α
n519_op11_β:
                                                                                        jmp   proc_supports_interrupts$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n521_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n522_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n522_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx536_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx536_21
.Lx536_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx536_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx536_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx536_23
.Lx536_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx536_23:
                        mov              rdi, qword ptr [rip + .Lx536_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx536_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx536_3]
                        lea              rdx, [rip + .Lx536_4]
                                                                                        jmp   rax
.Lx536_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx536_2
.Lx536_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx536_2
.Lx536_1:
                        call             rt_faildescr@PLT
.Lx536_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n524_op11_α
                                                                                        jmp   n523_var_α
n522_call_proc_staged_β:
                                                                                        jmp   n524_op11_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "prolog_alert_signal/2"
#-----------------------------------------------------------------------------------------------------------------------
n523_var_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n525_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n524_op11_α:
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
                                                                                        je    proc_supports_interrupts$2F0_ω
                                                                                        jmp   n526_suspend_α
n524_op11_β:
                                                                                        jmp   proc_supports_interrupts$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n527_op11_α
.Lx540_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n526_suspend_α:
                        lea              rax, [rip + n526_suspend_β]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_supports_interrupts$2F0_γ
n526_suspend_β:
                                                                                        jmp   n528_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n522_call_proc_staged_β
                                                                                        jmp   n529_suspend_α
n527_op11_β:
                                                                                        jmp   n522_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n528_op11_α:
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
                                                                                        je    proc_supports_interrupts$2F0_ω
                                                                                        jmp   proc_supports_interrupts$2F0_ω
n528_op11_β:
                                                                                        jmp   proc_supports_interrupts$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n529_suspend_α:
                        lea              rax, [rip + n529_suspend_β]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_supports_interrupts$2F0_γ
n529_suspend_β:
                                                                                        jmp   n522_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_supports_interrupts$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_supports_interrupts$2F0_β:
                                                                                        jmp   qword ptr [rbp + 304]
#-----------------------------------------------------------------------------------------------------------------------
proc_supports_interrupts$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_supports_interrupts$2F0_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_supports_interrupts$2F0_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
                        .global          proc_pj_dir_1$2F0_α
                        .global          proc_pj_dir_1$2F0_β
                        .global          proc_pj_dir_1$2F0_γ
                        .global          proc_pj_dir_1$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n553_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n547_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx554_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx554_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx554_101
.Lx554_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx554_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n548_lit_string_α
n547_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n549_lit_string_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n550_op11_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n550_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n551_call_proc_staged_α
n550_op11_β:
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n551_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx559_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx559_21
.Lx559_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx559_21:
                        mov              rdi, qword ptr [rip + .Lx559_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx559_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx559_3]
                        lea              rdx, [rip + .Lx559_4]
                                                                                        jmp   rax
.Lx559_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx559_2
.Lx559_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx559_2
.Lx559_1:
                        call             rt_faildescr@PLT
.Lx559_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n553_suspend_α
n551_call_proc_staged_β:
                                                                                        jmp   n552_op11_α
.Lx559_0:
                        .quad            .Lx559_0_s
.Lx559_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
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
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n552_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n553_suspend_α:
                        lea              rax, [rip + n553_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n553_suspend_β:
                                                                                        jmp   n551_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_test$2F2_α]
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
                        .section         .rodata
.Lstartup_pname1:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "run/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_run$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1264
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "cp_zero_null/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_cp_zero_null$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "test_interrupt/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_test_interrupt$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "test_interrupt/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_test_interrupt$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1872
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "supports_interrupts/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_supports_interrupts$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
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
                        sub              rsp, 72
                        mov              rdi, rsp
                        mov              ecx, 72
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n564_call_proc_staged_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "interrupt"
#-----------------------------------------------------------------------------------------------------------------------
n564_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx567_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx567_21
.Lx567_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx567_21:
                        mov              rdi, qword ptr [rip + .Lx567_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx567_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx567_3]
                        lea              rdx, [rip + .Lx567_4]
                                                                                        jmp   rax
.Lx567_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx567_2
.Lx567_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx567_2
.Lx567_1:
                        call             rt_faildescr@PLT
.Lx567_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n564_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 72
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 72
                        ret
                        .section         .note.GNU-stack,"",@progbits
