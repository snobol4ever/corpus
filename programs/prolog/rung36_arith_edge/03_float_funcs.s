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
                        sub              rsp, 1784
                        mov              rdi, rsp
                        mov              ecx, 1784
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1776], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx60_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx60_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx60_101
.Lx60_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx60_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n2_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_real_α:
                        mov              qword ptr [rbp + 1648], 7
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n3_op11_α
.Lx63_0:
                        .quad            4615514078110652826
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn65:               .string          "$ax_trunc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_op11_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n6_var_α
n4_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
n5_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn71:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_lit_string_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n9_op11_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn74:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_var_ref_α
n9_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n11_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_real_α:
                        mov              qword ptr [rbp + 1424], 7
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n12_op11_α
.Lx77_0:
                        .quad            13838886114965428634
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn79:               .string          "$ax_trunc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n13_op11_α
n12_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n14_var_α
n13_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn84:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n16_lit_string_α
n15_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n17_op11_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn87:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n18_var_ref_α
n17_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n19_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_real_α:
                        mov              qword ptr [rbp + 1200], 7
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n20_op11_α
.Lx90_0:
                        .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn92:               .string          "$ax_round"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n21_op11_α
n20_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n22_var_α
n21_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1064], rax
                        .section         .rodata
.Lrkfn97:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n24_lit_string_α
n23_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n25_op11_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn100:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n26_var_ref_α
n25_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n27_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_real_α:
                        mov              qword ptr [rbp + 976], 7
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n28_op11_α
.Lx103_0:
                        .quad            4616752568008179712
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn105:              .string          "$ax_round"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rbp + 944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n29_op11_α
n28_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n30_var_α
n29_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn110:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n32_lit_string_α
n31_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n33_op11_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn113:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n34_var_ref_α
n33_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n35_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_real_α:
                        mov              qword ptr [rbp + 752], 7
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n36_op11_α
.Lx116_0:
                        .quad            4614388178203810202
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn118:              .string          "$ax_ceil"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n37_op11_α
n36_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n38_var_α
n37_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn123:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n40_lit_string_α
n39_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n41_op11_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn126:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n42_var_ref_α
n41_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n43_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_real_α:
                        mov              qword ptr [rbp + 528], 7
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n44_op11_α
.Lx129_0:
                        .quad            4615514078110652826
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn131:              .string          "$ax_floor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n45_op11_α
n44_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n46_var_α
n45_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n47_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn136:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n48_lit_string_α
n47_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n49_op11_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn139:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n50_var_ref_α
n49_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n51_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_real_α:
                        mov              qword ptr [rbp + 304], 7
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n52_op11_α
.Lx142_0:
                        .quad            13837760215058586010
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn144:              .string          "$ax_floor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n53_op11_α
n52_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n54_var_α
n53_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn149:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n56_lit_string_α
n55_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n57_op11_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn152:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n58_move_label_α
n57_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_move_label_α:
                        lea              rax, [rip + n5_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n59_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n59_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n59_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1776]
                        add              rsp, 1784
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1776]
                        add              rsp, 1784
                        ret
                        .section         .note.GNU-stack,"",@progbits
