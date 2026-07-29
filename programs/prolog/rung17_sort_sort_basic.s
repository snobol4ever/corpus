                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 1432
                        mov              rdi, rsp
                        mov              ecx, 1432
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1424], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx45_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx45_101
.Lx45_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx45_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n2_lit_string_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n3_lit_string_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n4_lit_string_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n5_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n6_lit_string_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n7_lit_string_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n8_lit_string_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n9_lit_string_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n10_op11_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n11_op11_α
n10_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n12_op11_α
n11_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
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
                                                                                        je    main_ω
                                                                                        jmp   n13_op11_α
n12_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n14_var_ref_α
n13_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n17_move_label_α
n15_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn63:               .string          "$sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n18_var_ref_α
n16_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_move_label_α:
                        lea              rax, [rip + n19_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
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
n19_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n20_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n22_var_ref_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n24_var_ref_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n26_var_ref_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n28_op11_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n29_op11_α
n28_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n30_op11_α
n29_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n31_op11_α
n30_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        lea              r8, [rbp + 432]
.Lx84_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx84_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_41
                        cmp              esi, 1
                                                                                        jne   .Lx84_55
                        mov              r8, rax
                                                                                        jmp   .Lx84_40
.Lx84_55:
                        cmp              esi, 2
                                                                                        jne   .Lx84_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_41
                        mov              r8, rax
                                                                                        jmp   .Lx84_40
.Lx84_56:
                        cmp              eax, 13
                                                                                        jne   .Lx84_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_41
                        cmp              rax, r8
                                                                                        je    .Lx84_41
                        mov              r8, rax
                                                                                        jmp   .Lx84_40
.Lx84_41:
                        lea              r9, [rbp + 448]
.Lx84_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx84_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_43
                        cmp              esi, 1
                                                                                        jne   .Lx84_57
                        mov              r9, rax
                                                                                        jmp   .Lx84_42
.Lx84_57:
                        cmp              esi, 2
                                                                                        jne   .Lx84_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx84_43
                        mov              r9, rax
                                                                                        jmp   .Lx84_42
.Lx84_58:
                        cmp              eax, 13
                                                                                        jne   .Lx84_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx84_43
                        cmp              rax, r9
                                                                                        je    .Lx84_43
                        mov              r9, rax
                                                                                        jmp   .Lx84_42
.Lx84_43:
                        cmp              r8, r9
                                                                                        je    .Lx84_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_44
                        cmp              eax, 99
                                                                                        je    .Lx84_44
                        cmp              eax, 13
                                                                                        jne   .Lx84_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx84_44
                                                                                        jmp   .Lx84_45
.Lx84_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_53
                        cmp              eax, 99
                                                                                        je    .Lx84_53
                        cmp              eax, 13
                                                                                        jne   .Lx84_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx84_53
                                                                                        jmp   .Lx84_46
.Lx84_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx84_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx84_53
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
                                                                                        jmp   .Lx84_51
.Lx84_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx84_47
                        cmp              eax, 99
                                                                                        je    .Lx84_47
                        cmp              eax, 13
                                                                                        jne   .Lx84_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx84_47
                                                                                        jmp   .Lx84_48
.Lx84_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx84_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx84_53
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
                                                                                        jmp   .Lx84_51
.Lx84_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx84_49
                        cmp              edx, 14
                                                                                        je    .Lx84_53
                                                                                        jmp   .Lx84_52
.Lx84_49:
                        cmp              edx, 14
                                                                                        je    .Lx84_52
                        cmp              ecx, 7
                                                                                        je    .Lx84_53
                        cmp              edx, 7
                                                                                        je    .Lx84_53
                        cmp              ecx, 6
                                                                                        jne   .Lx84_50
                        cmp              edx, 6
                                                                                        jne   .Lx84_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx84_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx84_51
                                                                                        jmp   .Lx84_52
.Lx84_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx84_53
.Lx84_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx84_54
.Lx84_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx84_54
.Lx84_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx84_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n32_var_α
n31_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn88:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n34_lit_string_α
n33_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n35_op11_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn91:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n36_var_α
n35_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn95:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n38_lit_string_α
n37_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n39_op11_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn98:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n40_var_α
n39_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn102:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n42_lit_string_α
n41_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n43_op11_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn105:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n15_op11_α
                                                                                        jmp   n44_move_label_α
n43_op11_β:
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_move_label_α:
                        lea              rax, [rip + n15_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n20_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1424]
                        add              rsp, 1432
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1424]
                        add              rsp, 1432
                        ret
                        .section         .note.GNU-stack,"",@progbits
