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
                        sub              rsp, 1832
                        mov              rdi, rsp
                        mov              ecx, 1832
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1824], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx70_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx70_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx70_101
.Lx70_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx70_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_integer_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n2_op11_α
.Lx71_0:
                        .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n2_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn73:               .string          "$put_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n3_lit_string_α
n2_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n5_lit_integer_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
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
n4_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n6_op11_α
.Lx76_0:
                        .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn78:               .string          "$put_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n7_lit_string_α
n6_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n8_op11_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn81:               .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n9_lit_string_α
n8_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n10_op11_α
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn84:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n11_var_ref_α
n10_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn88:               .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n13_var_ref_α
n12_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn92:               .string          "$get_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn96:               .string          "$peek_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n17_lit_string_α
n16_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n18_var_ref_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "user_input"
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn101:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n21_var_ref_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "user_input"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n22_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn106:              .string          "$get_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n23_var_α
n22_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn110:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n25_lit_string_α
n24_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n26_op11_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn113:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n27_var_α
n26_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn117:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n29_lit_string_α
n28_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n30_op11_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn120:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n31_var_α
n30_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn124:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n34_op11_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn127:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n35_var_α
n34_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n36_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn131:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n37_lit_string_α
n36_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n38_op11_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn134:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n39_var_α
n38_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn138:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n41_lit_string_α
n40_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n42_op11_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn141:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n43_var_ref_α
n42_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n45_op11_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "end_of_file"
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn146:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rbp + 672]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n46_var_α
n45_op11_β:
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n48_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n49_op11_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "eof_bad"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n50_op11_α
.Lx150_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn152:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n51_lit_string_α
n49_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_eq@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n52_var_ref_α
n50_op11_β:
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n53_op11_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn158:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n55_lit_string_α
n53_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n56_op11_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "end_of_file"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n57_op11_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn162:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n58_var_ref_α
n56_op11_β:
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn164:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n59_lit_string_α
n57_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n61_op11_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n62_op11_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "end_of_file"
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn170:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n63_move_label_α
n61_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn172:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n64_var_α
n62_op11_β:
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_move_label_α:
                        lea              rax, [rip + n4_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n66_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n65_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n67_op11_α
.Lx179_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_eq@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n47_lit_string_α
                                                                                        jmp   n68_lit_string_α
n67_op11_β:
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n69_op11_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "eof_all_ok"
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn183:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n51_lit_string_α
n69_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n65_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1824]
                        add              rsp, 1832
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1824]
                        add              rsp, 1832
                        ret
                        .section         .note.GNU-stack,"",@progbits
