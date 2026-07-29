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
                        sub              rsp, 1992
                        mov              rdi, rsp
                        mov              ecx, 1992
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1984], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx62_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx62_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx62_101
.Lx62_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx62_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n2_lit_string_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n3_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n4_lit_string_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n5_lit_string_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n6_lit_string_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n7_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n8_lit_string_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n9_lit_string_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n10_lit_string_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n11_lit_string_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n12_op11_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n13_op11_α
n12_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n14_op11_α
n13_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n15_op11_α
n14_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n16_op11_α
n15_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n17_var_ref_α
n16_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
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
                                                                                        jmp   n20_move_label_α
n18_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn83:               .string          "$msort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n21_var_ref_α
n19_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_move_label_α:
                        lea              rax, [rip + n22_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
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
n22_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n23_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n25_var_ref_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1952]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n27_var_ref_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1936]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n29_var_ref_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1920]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n31_var_ref_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1904]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n33_var_ref_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1888]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n35_op11_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n36_op11_α
n35_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n37_op11_α
n36_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n38_op11_α
n37_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n39_op11_α
n38_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n40_op11_α
n39_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx112_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              esi, 1
                                                                                        jne   .Lx112_55
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_55:
                        cmp              esi, 2
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_56:
                        cmp              eax, 13
                                                                                        jne   .Lx112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_41
                        cmp              rax, r8
                                                                                        je    .Lx112_41
                        mov              r8, rax
                                                                                        jmp   .Lx112_40
.Lx112_41:
                        lea              r9, [rbp + 640]
.Lx112_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              esi, 1
                                                                                        jne   .Lx112_57
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_57:
                        cmp              esi, 2
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_58:
                        cmp              eax, 13
                                                                                        jne   .Lx112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx112_43
                        cmp              rax, r9
                                                                                        je    .Lx112_43
                        mov              r9, rax
                                                                                        jmp   .Lx112_42
.Lx112_43:
                        cmp              r8, r9
                                                                                        je    .Lx112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_44
                        cmp              eax, 99
                                                                                        je    .Lx112_44
                        cmp              eax, 13
                                                                                        jne   .Lx112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx112_44
                                                                                        jmp   .Lx112_45
.Lx112_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_53
                        cmp              eax, 99
                                                                                        je    .Lx112_53
                        cmp              eax, 13
                                                                                        jne   .Lx112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_46
.Lx112_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx112_47
                        cmp              eax, 99
                                                                                        je    .Lx112_47
                        cmp              eax, 13
                                                                                        jne   .Lx112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx112_47
                                                                                        jmp   .Lx112_48
.Lx112_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx112_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx112_53
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
                                                                                        jmp   .Lx112_51
.Lx112_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx112_49
                        cmp              edx, 14
                                                                                        je    .Lx112_53
                                                                                        jmp   .Lx112_52
.Lx112_49:
                        cmp              edx, 14
                                                                                        je    .Lx112_52
                        cmp              ecx, 7
                                                                                        je    .Lx112_53
                        cmp              edx, 7
                                                                                        je    .Lx112_53
                        cmp              ecx, 6
                                                                                        jne   .Lx112_50
                        cmp              edx, 6
                                                                                        jne   .Lx112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx112_51
                                                                                        jmp   .Lx112_52
.Lx112_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx112_53
.Lx112_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx112_54
.Lx112_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx112_54
.Lx112_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx112_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n41_var_α
n40_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn116:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n43_lit_string_α
n42_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n44_op11_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn119:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n45_var_α
n44_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn123:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n47_lit_string_α
n46_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n48_op11_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn126:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n49_var_α
n48_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn130:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n51_lit_string_α
n50_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n52_op11_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn133:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n53_var_α
n52_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn137:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n55_lit_string_α
n54_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n56_op11_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn140:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n57_var_α
n56_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn144:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n59_lit_string_α
n58_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n60_op11_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn147:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n61_move_label_α
n60_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_move_label_α:
                        lea              rax, [rip + n18_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1984]
                        add              rsp, 1992
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1984]
                        add              rsp, 1992
                        ret
                        .section         .note.GNU-stack,"",@progbits
