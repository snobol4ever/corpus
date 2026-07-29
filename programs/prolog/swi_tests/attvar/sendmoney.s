                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sendmoney$2F0_α
proc_sendmoney$2F0_α:
                        .global          proc_sendmoney$2F0_α
                        .global          proc_sendmoney$2F0_β
                        .global          proc_sendmoney$2F0_γ
                        .global          proc_sendmoney$2F0_ω
                        sub              rsp, 2096
                        mov              [rsp + 2072], rcx
                        mov              [rsp + 2080], rdx
                        mov              [rsp + 2088], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2032
                        mov              edx, 2064
                        call             rt_jmp_frame_lexprep2@PLT
proc_sendmoney$2F0_α_body:
                        lea              rax, [rip + n55_suspend_β]
                        mov              qword ptr [rbp + 2032], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx56_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx56_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx56_101
.Lx56_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx56_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n2_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_proc_staged_α:
                        mov              qword ptr [rbp + 1984], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx60_20
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx60_21
.Lx60_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_arg_stage@PLT
.Lx60_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx60_1
                        lea              rcx, [rip + .Lx60_3]
                        lea              rdx, [rip + .Lx60_4]
                                                                                        jmp   rax
.Lx60_3:
                        mov              qword ptr [rbp + 1992], rsp
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx60_5
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx60_2
.Lx60_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx60_2
.Lx60_4:
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx60_6
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx60_2
.Lx60_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx60_2
.Lx60_1:
                        call             rt_faildescr@PLT
.Lx60_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n3_var_ref_α
n2_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1992]
                                                                                        jmp   qword ptr [rsp]
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "send/1"
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
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
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   proc_sendmoney$2F0_ω
n4_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n6_lit_string_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n7_lit_integer_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n8_lit_string_α
.Lx66_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n9_lit_integer_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 1632], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n10_lit_string_α
.Lx68_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n11_lit_integer_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n12_lit_string_α
.Lx70_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n13_lit_integer_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n14_lit_string_α
.Lx72_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n15_op11_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n16_op11_α
n15_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n17_op11_α
n16_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n18_op11_α
n17_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n19_lit_string_α
n18_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n20_lit_string_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n21_lit_integer_α
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n22_lit_string_α
.Lx80_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n23_lit_integer_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n24_lit_string_α
.Lx82_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n25_lit_integer_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n26_lit_string_α
.Lx84_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n27_lit_integer_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n28_lit_string_α
.Lx86_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n29_op11_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n30_op11_α
n29_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n31_op11_α
n30_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n32_op11_α
n31_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1216]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n34_lit_string_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n35_lit_integer_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n36_lit_string_α
.Lx94_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n37_lit_integer_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n38_lit_string_α
.Lx96_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n39_lit_integer_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n40_lit_string_α
.Lx98_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n41_lit_integer_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n42_lit_string_α
.Lx100_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n43_lit_integer_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n44_lit_string_α
.Lx102_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n45_op11_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n46_op11_α
n45_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n47_op11_α
n46_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n48_op11_α
n47_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n49_op11_α
n48_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n50_lit_string_α
n49_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n51_op11_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n52_op11_α
n51_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    proc_sendmoney$2F0_ω
                                                                                        jmp   n53_op11_α
n52_op11_β:
                                                                                        jmp   proc_sendmoney$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n54_op11_α
n53_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn114:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n2_call_proc_staged_β
                                                                                        jmp   n55_suspend_α
n54_op11_β:
                                                                                        jmp   n2_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n55_suspend_α:
                        lea              rax, [rip + n55_suspend_β]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sendmoney$2F0_γ
n55_suspend_β:
                                                                                        jmp   n2_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_sendmoney$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sendmoney$2F0_β:
                                                                                        jmp   qword ptr [rbp + 2032]
#-----------------------------------------------------------------------------------------------------------------------
proc_sendmoney$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_sendmoney$2F0_res]
                        push             rax
                        mov              rax, [rbp + 2072]
                        mov              rbp, [rbp + 2088]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sendmoney$2F0_ω:
                        mov              rax, [rbp + 2080]
                        lea              rsp, [rbp + 2096]
                        mov              rbp, [rbp + 2088]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$2C$2F2_α
proc_$2C$2F2_α:
                        .global          proc_$2C$2F2_α
                        .global          proc_$2C$2F2_β
                        .global          proc_$2C$2F2_γ
                        .global          proc_$2C$2F2_ω
                        sub              rsp, 4944
                        mov              [rsp + 4920], rcx
                        mov              [rsp + 4928], rdx
                        mov              [rsp + 4936], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4800
                        mov              edx, 4912
                        call             rt_jmp_frame_lexprep2@PLT
proc_$2C$2F2_α_body:
                        lea              rax, [rip + n137_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx274_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx274_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx274_101
.Lx274_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx274_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n118_var_ref_α
n117_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 4768], 6
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n120_lit_integer_α
.Lx277_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 4784], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n121_op11_α
.Lx278_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4728], rax
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4744], rax
                        lea              rdi, [rbp + 4704]
                        lea              r8, [rbp + 4704]
.Lx279_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx279_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx279_111
                        cmp              esi, 1
                                                                                        jne   .Lx279_112
                        mov              r8, rax
                                                                                        jmp   .Lx279_110
.Lx279_112:
                        cmp              esi, 2
                                                                                        jne   .Lx279_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx279_111
                        mov              r8, rax
                                                                                        jmp   .Lx279_110
.Lx279_113:
                        cmp              eax, 13
                                                                                        jne   .Lx279_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx279_111
                        cmp              rax, r8
                                                                                        je    .Lx279_111
                        mov              r8, rax
                                                                                        jmp   .Lx279_110
.Lx279_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx279_114
                        cmp              eax, 99
                                                                                        je    .Lx279_114
                        cmp              eax, 13
                                                                                        jne   .Lx279_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx279_114
                                                                                        jmp   .Lx279_118
.Lx279_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx279_115
                        cmp              eax, 6
                                                                                        jne   .Lx279_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx279_114
                        movabs           rdx, 9
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx279_115
                                                                                        jmp   .Lx279_114
.Lx279_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx279_117
.Lx279_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx279_117
.Lx279_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx279_117:
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    n123_var_ref_α
                                                                                        jmp   n122_var_ref_α
n121_op11_β:
                                                                                        jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                                                                                        jmp   n124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                                                                                        jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 4672], 6
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n126_op11_α
.Lx284_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 4448], 6
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n127_lit_integer_α
.Lx285_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4624]
                        movabs           rsi, 9
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n128_var_ref_α
n126_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rbp + 4464], 6
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n130_op11_α
.Lx287_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                                                                                        jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4504], rax
                        lea              rdi, [rbp + 4496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n123_var_ref_α
n129_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4408], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4424], rax
                        lea              rdi, [rbp + 4384]
                        lea              r8, [rbp + 4384]
.Lx291_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx291_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx291_111
                        cmp              esi, 1
                                                                                        jne   .Lx291_112
                        mov              r8, rax
                                                                                        jmp   .Lx291_110
.Lx291_112:
                        cmp              esi, 2
                                                                                        jne   .Lx291_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx291_111
                        mov              r8, rax
                                                                                        jmp   .Lx291_110
.Lx291_113:
                        cmp              eax, 13
                                                                                        jne   .Lx291_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx291_111
                        cmp              rax, r8
                                                                                        je    .Lx291_111
                        mov              r8, rax
                                                                                        jmp   .Lx291_110
.Lx291_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx291_114
                        cmp              eax, 99
                                                                                        je    .Lx291_114
                        cmp              eax, 13
                                                                                        jne   .Lx291_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx291_114
                                                                                        jmp   .Lx291_118
.Lx291_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx291_115
                        cmp              eax, 6
                                                                                        jne   .Lx291_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx291_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx291_115
                                                                                        jmp   .Lx291_114
.Lx291_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx291_117
.Lx291_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx291_117
.Lx291_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx291_117:
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              eax, 99
                                                                                        je    n133_var_ref_α
                                                                                        jmp   n132_var_ref_α
n130_op11_β:
                                                                                        jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                                                                                        jmp   n134_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4560], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4568], rax
                        lea              rdi, [rbp + 4544]
                        lea              r8, [rbp + 4544]
.Lx298_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx298_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        cmp              esi, 1
                                                                                        jne   .Lx298_55
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_55:
                        cmp              esi, 2
                                                                                        jne   .Lx298_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_56:
                        cmp              eax, 13
                                                                                        jne   .Lx298_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        cmp              rax, r8
                                                                                        je    .Lx298_41
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_41:
                        lea              r9, [rbp + 4560]
.Lx298_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx298_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        cmp              esi, 1
                                                                                        jne   .Lx298_57
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_57:
                        cmp              esi, 2
                                                                                        jne   .Lx298_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_58:
                        cmp              eax, 13
                                                                                        jne   .Lx298_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        cmp              rax, r9
                                                                                        je    .Lx298_43
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_43:
                        cmp              r8, r9
                                                                                        je    .Lx298_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_44
                        cmp              eax, 99
                                                                                        je    .Lx298_44
                        cmp              eax, 13
                                                                                        jne   .Lx298_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx298_44
                                                                                        jmp   .Lx298_45
.Lx298_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_53
                        cmp              eax, 99
                                                                                        je    .Lx298_53
                        cmp              eax, 13
                                                                                        jne   .Lx298_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx298_53
                                                                                        jmp   .Lx298_46
.Lx298_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx298_53
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
                                                                                        jmp   .Lx298_51
.Lx298_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_47
                        cmp              eax, 99
                                                                                        je    .Lx298_47
                        cmp              eax, 13
                                                                                        jne   .Lx298_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx298_47
                                                                                        jmp   .Lx298_48
.Lx298_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx298_53
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
                                                                                        jmp   .Lx298_51
.Lx298_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx298_49
                        cmp              edx, 14
                                                                                        je    .Lx298_53
                                                                                        jmp   .Lx298_52
.Lx298_49:
                        cmp              edx, 14
                                                                                        je    .Lx298_52
                        cmp              ecx, 7
                                                                                        je    .Lx298_53
                        cmp              edx, 7
                                                                                        je    .Lx298_53
                        cmp              ecx, 6
                                                                                        jne   .Lx298_50
                        cmp              edx, 6
                                                                                        jne   .Lx298_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx298_51
                                                                                        jmp   .Lx298_52
.Lx298_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx298_53
.Lx298_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx298_54
.Lx298_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx298_54
.Lx298_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx298_54:
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 99
                                                                                        je    n129_op11_α
                                                                                        jmp   n137_suspend_α
n134_op11_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 4352], 6
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n138_op11_α
.Lx299_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4896]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n139_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n137_suspend_α:
                        lea              rax, [rip + n137_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n137_suspend_β:
                                                                                        jmp   n129_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4304]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n140_var_ref_α
n138_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4104], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4120], rax
                        lea              rdi, [rbp + 4096]
                        lea              r8, [rbp + 4096]
.Lx305_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx305_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        cmp              esi, 1
                                                                                        jne   .Lx305_55
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_55:
                        cmp              esi, 2
                                                                                        jne   .Lx305_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_56:
                        cmp              eax, 13
                                                                                        jne   .Lx305_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        cmp              rax, r8
                                                                                        je    .Lx305_41
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_41:
                        lea              r9, [rbp + 4112]
.Lx305_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx305_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        cmp              esi, 1
                                                                                        jne   .Lx305_57
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_57:
                        cmp              esi, 2
                                                                                        jne   .Lx305_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_58:
                        cmp              eax, 13
                                                                                        jne   .Lx305_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        cmp              rax, r9
                                                                                        je    .Lx305_43
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_43:
                        cmp              r8, r9
                                                                                        je    .Lx305_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_44
                        cmp              eax, 99
                                                                                        je    .Lx305_44
                        cmp              eax, 13
                                                                                        jne   .Lx305_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx305_44
                                                                                        jmp   .Lx305_45
.Lx305_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_53
                        cmp              eax, 99
                                                                                        je    .Lx305_53
                        cmp              eax, 13
                                                                                        jne   .Lx305_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx305_53
                                                                                        jmp   .Lx305_46
.Lx305_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx305_53
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
                                                                                        jmp   .Lx305_51
.Lx305_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_47
                        cmp              eax, 99
                                                                                        je    .Lx305_47
                        cmp              eax, 13
                                                                                        jne   .Lx305_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx305_47
                                                                                        jmp   .Lx305_48
.Lx305_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx305_53
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
                                                                                        jmp   .Lx305_51
.Lx305_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx305_49
                        cmp              edx, 14
                                                                                        je    .Lx305_53
                                                                                        jmp   .Lx305_52
.Lx305_49:
                        cmp              edx, 14
                                                                                        je    .Lx305_52
                        cmp              ecx, 7
                                                                                        je    .Lx305_53
                        cmp              edx, 7
                                                                                        je    .Lx305_53
                        cmp              ecx, 6
                                                                                        jne   .Lx305_50
                        cmp              edx, 6
                                                                                        jne   .Lx305_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx305_51
                                                                                        jmp   .Lx305_52
.Lx305_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx305_53
.Lx305_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx305_54
.Lx305_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx305_54
.Lx305_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx305_54:
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              eax, 99
                                                                                        je    n143_op11_α
                                                                                        jmp   n142_var_ref_α
n139_op11_β:
                                                                                        jmp   n143_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n144_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4176]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n133_var_ref_α
n141_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3752], rax
                        lea              rdi, [rbp + 3744]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n146_var_ref_α
n143_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n147_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 4064], 1
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n148_var_ref_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4232], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4248], rax
                        lea              rdi, [rbp + 4224]
                        lea              r8, [rbp + 4224]
.Lx317_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx317_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_41
                        cmp              esi, 1
                                                                                        jne   .Lx317_55
                        mov              r8, rax
                                                                                        jmp   .Lx317_40
.Lx317_55:
                        cmp              esi, 2
                                                                                        jne   .Lx317_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx317_41
                        mov              r8, rax
                                                                                        jmp   .Lx317_40
.Lx317_56:
                        cmp              eax, 13
                                                                                        jne   .Lx317_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_41
                        cmp              rax, r8
                                                                                        je    .Lx317_41
                        mov              r8, rax
                                                                                        jmp   .Lx317_40
.Lx317_41:
                        lea              r9, [rbp + 4240]
.Lx317_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx317_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_43
                        cmp              esi, 1
                                                                                        jne   .Lx317_57
                        mov              r9, rax
                                                                                        jmp   .Lx317_42
.Lx317_57:
                        cmp              esi, 2
                                                                                        jne   .Lx317_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx317_43
                        mov              r9, rax
                                                                                        jmp   .Lx317_42
.Lx317_58:
                        cmp              eax, 13
                                                                                        jne   .Lx317_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_43
                        cmp              rax, r9
                                                                                        je    .Lx317_43
                        mov              r9, rax
                                                                                        jmp   .Lx317_42
.Lx317_43:
                        cmp              r8, r9
                                                                                        je    .Lx317_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_44
                        cmp              eax, 99
                                                                                        je    .Lx317_44
                        cmp              eax, 13
                                                                                        jne   .Lx317_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx317_44
                                                                                        jmp   .Lx317_45
.Lx317_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_53
                        cmp              eax, 99
                                                                                        je    .Lx317_53
                        cmp              eax, 13
                                                                                        jne   .Lx317_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx317_53
                                                                                        jmp   .Lx317_46
.Lx317_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx317_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx317_53
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
                                                                                        jmp   .Lx317_51
.Lx317_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_47
                        cmp              eax, 99
                                                                                        je    .Lx317_47
                        cmp              eax, 13
                                                                                        jne   .Lx317_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx317_47
                                                                                        jmp   .Lx317_48
.Lx317_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx317_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx317_53
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
                                                                                        jmp   .Lx317_51
.Lx317_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx317_49
                        cmp              edx, 14
                                                                                        je    .Lx317_53
                                                                                        jmp   .Lx317_52
.Lx317_49:
                        cmp              edx, 14
                                                                                        je    .Lx317_52
                        cmp              ecx, 7
                                                                                        je    .Lx317_53
                        cmp              edx, 7
                                                                                        je    .Lx317_53
                        cmp              ecx, 6
                                                                                        jne   .Lx317_50
                        cmp              edx, 6
                                                                                        jne   .Lx317_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx317_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx317_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx317_51
                                                                                        jmp   .Lx317_52
.Lx317_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx317_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx317_53
.Lx317_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx317_54
.Lx317_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx317_54
.Lx317_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx317_54:
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n150_suspend_α
n147_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 3696], 6
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n152_lit_string_α
.Lx320_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n150_suspend_α:
                        lea              rax, [rip + n150_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n150_suspend_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_string_α:
                        mov              qword ptr [rbp + 3968], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n153_lit_integer_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 3712], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n154_op11_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 3856], 6
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n155_var_ref_α
.Lx325_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n154_op11_α:
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3672], rax
                        lea              rdi, [rbp + 3632]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n157_var_ref_α
                                                                                        jmp   n156_var_ref_α
n154_op11_β:
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4896]
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                                                                                        jmp   n158_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n160_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3944], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n161_op11_α
n158_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n162_lit_string_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rbp + 2928], 6
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n163_lit_string_α
.Lx335_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 4040], rax
                        lea              rdi, [rbp + 4000]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              eax, 99
                                                                                        je    n143_op11_α
                                                                                        jmp   n164_op11_α
n161_op11_β:
                                                                                        jmp   n143_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n165_var_ref_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:
                        mov              qword ptr [rbp + 2944], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n166_op11_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3792]
                        lea              r8, [rbp + 3792]
.Lx339_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx339_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx339_41
                        cmp              esi, 1
                                                                                        jne   .Lx339_55
                        mov              r8, rax
                                                                                        jmp   .Lx339_40
.Lx339_55:
                        cmp              esi, 2
                                                                                        jne   .Lx339_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx339_41
                        mov              r8, rax
                                                                                        jmp   .Lx339_40
.Lx339_56:
                        cmp              eax, 13
                                                                                        jne   .Lx339_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx339_41
                        cmp              rax, r8
                                                                                        je    .Lx339_41
                        mov              r8, rax
                                                                                        jmp   .Lx339_40
.Lx339_41:
                        lea              r9, [rbp + 3808]
.Lx339_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx339_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx339_43
                        cmp              esi, 1
                                                                                        jne   .Lx339_57
                        mov              r9, rax
                                                                                        jmp   .Lx339_42
.Lx339_57:
                        cmp              esi, 2
                                                                                        jne   .Lx339_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx339_43
                        mov              r9, rax
                                                                                        jmp   .Lx339_42
.Lx339_58:
                        cmp              eax, 13
                                                                                        jne   .Lx339_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx339_43
                        cmp              rax, r9
                                                                                        je    .Lx339_43
                        mov              r9, rax
                                                                                        jmp   .Lx339_42
.Lx339_43:
                        cmp              r8, r9
                                                                                        je    .Lx339_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx339_44
                        cmp              eax, 99
                                                                                        je    .Lx339_44
                        cmp              eax, 13
                                                                                        jne   .Lx339_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx339_44
                                                                                        jmp   .Lx339_45
.Lx339_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx339_53
                        cmp              eax, 99
                                                                                        je    .Lx339_53
                        cmp              eax, 13
                                                                                        jne   .Lx339_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx339_53
                                                                                        jmp   .Lx339_46
.Lx339_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx339_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx339_53
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
                                                                                        jmp   .Lx339_51
.Lx339_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx339_47
                        cmp              eax, 99
                                                                                        je    .Lx339_47
                        cmp              eax, 13
                                                                                        jne   .Lx339_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx339_47
                                                                                        jmp   .Lx339_48
.Lx339_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx339_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx339_53
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
                                                                                        jmp   .Lx339_51
.Lx339_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx339_49
                        cmp              edx, 14
                                                                                        je    .Lx339_53
                                                                                        jmp   .Lx339_52
.Lx339_49:
                        cmp              edx, 14
                                                                                        je    .Lx339_52
                        cmp              ecx, 7
                                                                                        je    .Lx339_53
                        cmp              edx, 7
                                                                                        je    .Lx339_53
                        cmp              ecx, 6
                                                                                        jne   .Lx339_50
                        cmp              edx, 6
                                                                                        jne   .Lx339_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx339_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx339_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx339_51
                                                                                        jmp   .Lx339_52
.Lx339_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx339_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx339_53
.Lx339_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx339_54
.Lx339_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx339_54
.Lx339_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx339_54:
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    n143_op11_α
                                                                                        jmp   n167_suspend_α
n164_op11_β:
                                                                                        jmp   n143_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n168_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n166_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2864]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n170_var_ref_α
                                                                                        jmp   n169_var_ref_α
n166_op11_β:
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n167_suspend_α:
                        lea              rax, [rip + n167_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n167_suspend_β:
                                                                                        jmp   n143_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                                                                                        jmp   n171_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_op11_α:
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n174_var_ref_α
n171_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n175_lit_string_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:
                        mov              qword ptr [rbp + 2160], 6
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n176_lit_string_α
.Lx353_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                                                                                        jmp   n177_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:
                        mov              qword ptr [rbp + 2720], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n178_var_ref_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n179_op11_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n177_op11_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3536]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        cmp              eax, 99
                                                                                        je    n181_op11_α
                                                                                        jmp   n180_op11_α
n177_op11_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2096]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n184_var_ref_α
                                                                                        jmp   n183_var_ref_α
n179_op11_β:
                                                                                        jmp   n184_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_op11_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3328]
                        lea              r8, [rbp + 3328]
.Lx362_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx362_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_41
                        cmp              esi, 1
                                                                                        jne   .Lx362_55
                        mov              r8, rax
                                                                                        jmp   .Lx362_40
.Lx362_55:
                        cmp              esi, 2
                                                                                        jne   .Lx362_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx362_41
                        mov              r8, rax
                                                                                        jmp   .Lx362_40
.Lx362_56:
                        cmp              eax, 13
                                                                                        jne   .Lx362_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_41
                        cmp              rax, r8
                                                                                        je    .Lx362_41
                        mov              r8, rax
                                                                                        jmp   .Lx362_40
.Lx362_41:
                        lea              r9, [rbp + 3344]
.Lx362_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx362_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_43
                        cmp              esi, 1
                                                                                        jne   .Lx362_57
                        mov              r9, rax
                                                                                        jmp   .Lx362_42
.Lx362_57:
                        cmp              esi, 2
                                                                                        jne   .Lx362_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx362_43
                        mov              r9, rax
                                                                                        jmp   .Lx362_42
.Lx362_58:
                        cmp              eax, 13
                                                                                        jne   .Lx362_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx362_43
                        cmp              rax, r9
                                                                                        je    .Lx362_43
                        mov              r9, rax
                                                                                        jmp   .Lx362_42
.Lx362_43:
                        cmp              r8, r9
                                                                                        je    .Lx362_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx362_44
                        cmp              eax, 99
                                                                                        je    .Lx362_44
                        cmp              eax, 13
                                                                                        jne   .Lx362_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx362_44
                                                                                        jmp   .Lx362_45
.Lx362_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx362_53
                        cmp              eax, 99
                                                                                        je    .Lx362_53
                        cmp              eax, 13
                                                                                        jne   .Lx362_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx362_53
                                                                                        jmp   .Lx362_46
.Lx362_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx362_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx362_53
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
                                                                                        jmp   .Lx362_51
.Lx362_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx362_47
                        cmp              eax, 99
                                                                                        je    .Lx362_47
                        cmp              eax, 13
                                                                                        jne   .Lx362_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx362_47
                                                                                        jmp   .Lx362_48
.Lx362_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx362_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx362_53
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
                                                                                        jmp   .Lx362_51
.Lx362_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx362_49
                        cmp              edx, 14
                                                                                        je    .Lx362_53
                                                                                        jmp   .Lx362_52
.Lx362_49:
                        cmp              edx, 14
                                                                                        je    .Lx362_52
                        cmp              ecx, 7
                                                                                        je    .Lx362_53
                        cmp              edx, 7
                                                                                        je    .Lx362_53
                        cmp              ecx, 6
                                                                                        jne   .Lx362_50
                        cmp              edx, 6
                                                                                        jne   .Lx362_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx362_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx362_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx362_51
                                                                                        jmp   .Lx362_52
.Lx362_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx362_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx362_53
.Lx362_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx362_54
.Lx362_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx362_54
.Lx362_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx362_54:
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 99
                                                                                        je    n181_op11_α
                                                                                        jmp   n185_var_ref_α
n180_op11_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n181_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2976]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n157_var_ref_α
n181_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n186_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n187_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n188_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_op11_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2696], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n190_var_ref_α
n186_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n191_lit_string_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n192_lit_string_α
.Lx374_0:
                        .quad            516
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n193_var_ref_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n194_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n195_var_ref_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n196_op11_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n197_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n194_op11_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n198_op11_α
n194_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n202_var_ref_α
                                                                                        jmp   n201_var_ref_α
n196_op11_β:
                                                                                        jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n203_lit_integer_α
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n198_op11_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2560]
                        lea              r8, [rbp + 2560]
.Lx387_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx387_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        cmp              esi, 1
                                                                                        jne   .Lx387_55
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_55:
                        cmp              esi, 2
                                                                                        jne   .Lx387_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_56:
                        cmp              eax, 13
                                                                                        jne   .Lx387_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_41
                        cmp              rax, r8
                                                                                        je    .Lx387_41
                        mov              r8, rax
                                                                                        jmp   .Lx387_40
.Lx387_41:
                        lea              r9, [rbp + 2576]
.Lx387_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx387_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        cmp              esi, 1
                                                                                        jne   .Lx387_57
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_57:
                        cmp              esi, 2
                                                                                        jne   .Lx387_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_58:
                        cmp              eax, 13
                                                                                        jne   .Lx387_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx387_43
                        cmp              rax, r9
                                                                                        je    .Lx387_43
                        mov              r9, rax
                                                                                        jmp   .Lx387_42
.Lx387_43:
                        cmp              r8, r9
                                                                                        je    .Lx387_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_44
                        cmp              eax, 99
                                                                                        je    .Lx387_44
                        cmp              eax, 13
                                                                                        jne   .Lx387_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx387_44
                                                                                        jmp   .Lx387_45
.Lx387_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_53
                        cmp              eax, 99
                                                                                        je    .Lx387_53
                        cmp              eax, 13
                                                                                        jne   .Lx387_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx387_53
                                                                                        jmp   .Lx387_46
.Lx387_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx387_53
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
                                                                                        jmp   .Lx387_51
.Lx387_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx387_47
                        cmp              eax, 99
                                                                                        je    .Lx387_47
                        cmp              eax, 13
                                                                                        jne   .Lx387_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx387_47
                                                                                        jmp   .Lx387_48
.Lx387_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx387_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx387_53
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
                                                                                        jmp   .Lx387_51
.Lx387_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx387_49
                        cmp              edx, 14
                                                                                        je    .Lx387_53
                                                                                        jmp   .Lx387_52
.Lx387_49:
                        cmp              edx, 14
                                                                                        je    .Lx387_52
                        cmp              ecx, 7
                                                                                        je    .Lx387_53
                        cmp              edx, 7
                                                                                        je    .Lx387_53
                        cmp              ecx, 6
                                                                                        jne   .Lx387_50
                        cmp              edx, 6
                                                                                        jne   .Lx387_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx387_51
                                                                                        jmp   .Lx387_52
.Lx387_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx387_53
.Lx387_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx387_54
.Lx387_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx387_54
.Lx387_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx387_54:
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n204_var_ref_α
n198_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n170_var_ref_α
n199_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n205_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n207_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 3088], 6
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n208_var_ref_α
.Lx395_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n209_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n210_var_ref_α
n205_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n211_var_ref_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n212_lit_integer_α
.Lx400_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n213_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n214_var_ref_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n215_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n216_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n217_op11_α
.Lx408_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n213_op11_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n218_op11_α
n213_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_op11_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n220_op11_α
n215_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n222_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n217_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        lea              r8, [rbp + 896]
.Lx415_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx415_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_111
                        cmp              esi, 1
                                                                                        jne   .Lx415_112
                        mov              r8, rax
                                                                                        jmp   .Lx415_110
.Lx415_112:
                        cmp              esi, 2
                                                                                        jne   .Lx415_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx415_111
                        mov              r8, rax
                                                                                        jmp   .Lx415_110
.Lx415_113:
                        cmp              eax, 13
                                                                                        jne   .Lx415_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_111
                        cmp              rax, r8
                                                                                        je    .Lx415_111
                        mov              r8, rax
                                                                                        jmp   .Lx415_110
.Lx415_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_114
                        cmp              eax, 99
                                                                                        je    .Lx415_114
                        cmp              eax, 13
                                                                                        jne   .Lx415_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx415_114
                                                                                        jmp   .Lx415_118
.Lx415_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx415_115
                        cmp              eax, 6
                                                                                        jne   .Lx415_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx415_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx415_115
                                                                                        jmp   .Lx415_114
.Lx415_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx415_117
.Lx415_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx415_117
.Lx415_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx415_117:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n224_var_ref_α
                                                                                        jmp   n223_var_ref_α
n217_op11_β:
                                                                                        jmp   n224_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_op11_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    n181_op11_α
                                                                                        jmp   n225_op11_α
n218_op11_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n226_lit_integer_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n220_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1792]
                        lea              r8, [rbp + 1792]
.Lx418_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx418_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_41
                        cmp              esi, 1
                                                                                        jne   .Lx418_55
                        mov              r8, rax
                                                                                        jmp   .Lx418_40
.Lx418_55:
                        cmp              esi, 2
                                                                                        jne   .Lx418_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx418_41
                        mov              r8, rax
                                                                                        jmp   .Lx418_40
.Lx418_56:
                        cmp              eax, 13
                                                                                        jne   .Lx418_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_41
                        cmp              rax, r8
                                                                                        je    .Lx418_41
                        mov              r8, rax
                                                                                        jmp   .Lx418_40
.Lx418_41:
                        lea              r9, [rbp + 1808]
.Lx418_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx418_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_43
                        cmp              esi, 1
                                                                                        jne   .Lx418_57
                        mov              r9, rax
                                                                                        jmp   .Lx418_42
.Lx418_57:
                        cmp              esi, 2
                                                                                        jne   .Lx418_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx418_43
                        mov              r9, rax
                                                                                        jmp   .Lx418_42
.Lx418_58:
                        cmp              eax, 13
                                                                                        jne   .Lx418_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_43
                        cmp              rax, r9
                                                                                        je    .Lx418_43
                        mov              r9, rax
                                                                                        jmp   .Lx418_42
.Lx418_43:
                        cmp              r8, r9
                                                                                        je    .Lx418_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx418_44
                        cmp              eax, 99
                                                                                        je    .Lx418_44
                        cmp              eax, 13
                                                                                        jne   .Lx418_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx418_44
                                                                                        jmp   .Lx418_45
.Lx418_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx418_53
                        cmp              eax, 99
                                                                                        je    .Lx418_53
                        cmp              eax, 13
                                                                                        jne   .Lx418_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx418_53
                                                                                        jmp   .Lx418_46
.Lx418_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx418_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx418_53
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
                                                                                        jmp   .Lx418_51
.Lx418_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx418_47
                        cmp              eax, 99
                                                                                        je    .Lx418_47
                        cmp              eax, 13
                                                                                        jne   .Lx418_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx418_47
                                                                                        jmp   .Lx418_48
.Lx418_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx418_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx418_53
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
                                                                                        jmp   .Lx418_51
.Lx418_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx418_49
                        cmp              edx, 14
                                                                                        je    .Lx418_53
                                                                                        jmp   .Lx418_52
.Lx418_49:
                        cmp              edx, 14
                                                                                        je    .Lx418_52
                        cmp              ecx, 7
                                                                                        je    .Lx418_53
                        cmp              edx, 7
                                                                                        je    .Lx418_53
                        cmp              ecx, 6
                                                                                        jne   .Lx418_50
                        cmp              edx, 6
                                                                                        jne   .Lx418_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx418_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx418_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx418_51
                                                                                        jmp   .Lx418_52
.Lx418_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx418_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx418_53
.Lx418_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx418_54
.Lx418_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx418_54
.Lx418_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx418_54:
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n227_var_ref_α
n220_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n221_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n184_var_ref_α
n221_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n229_op11_α
                                                                                        jmp   n228_op11_α
n222_op11_β:
                                                                                        jmp   n229_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n225_op11_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3024]
                        lea              r8, [rbp + 3024]
.Lx425_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx425_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_41
                        cmp              esi, 1
                                                                                        jne   .Lx425_55
                        mov              r8, rax
                                                                                        jmp   .Lx425_40
.Lx425_55:
                        cmp              esi, 2
                                                                                        jne   .Lx425_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx425_41
                        mov              r8, rax
                                                                                        jmp   .Lx425_40
.Lx425_56:
                        cmp              eax, 13
                                                                                        jne   .Lx425_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_41
                        cmp              rax, r8
                                                                                        je    .Lx425_41
                        mov              r8, rax
                                                                                        jmp   .Lx425_40
.Lx425_41:
                        lea              r9, [rbp + 3040]
.Lx425_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx425_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_43
                        cmp              esi, 1
                                                                                        jne   .Lx425_57
                        mov              r9, rax
                                                                                        jmp   .Lx425_42
.Lx425_57:
                        cmp              esi, 2
                                                                                        jne   .Lx425_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx425_43
                        mov              r9, rax
                                                                                        jmp   .Lx425_42
.Lx425_58:
                        cmp              eax, 13
                                                                                        jne   .Lx425_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx425_43
                        cmp              rax, r9
                                                                                        je    .Lx425_43
                        mov              r9, rax
                                                                                        jmp   .Lx425_42
.Lx425_43:
                        cmp              r8, r9
                                                                                        je    .Lx425_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx425_44
                        cmp              eax, 99
                                                                                        je    .Lx425_44
                        cmp              eax, 13
                                                                                        jne   .Lx425_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx425_44
                                                                                        jmp   .Lx425_45
.Lx425_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx425_53
                        cmp              eax, 99
                                                                                        je    .Lx425_53
                        cmp              eax, 13
                                                                                        jne   .Lx425_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx425_53
                                                                                        jmp   .Lx425_46
.Lx425_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx425_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx425_53
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
                                                                                        jmp   .Lx425_51
.Lx425_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx425_47
                        cmp              eax, 99
                                                                                        je    .Lx425_47
                        cmp              eax, 13
                                                                                        jne   .Lx425_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx425_47
                                                                                        jmp   .Lx425_48
.Lx425_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx425_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx425_53
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
                                                                                        jmp   .Lx425_51
.Lx425_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx425_49
                        cmp              edx, 14
                                                                                        je    .Lx425_53
                                                                                        jmp   .Lx425_52
.Lx425_49:
                        cmp              edx, 14
                                                                                        je    .Lx425_52
                        cmp              ecx, 7
                                                                                        je    .Lx425_53
                        cmp              edx, 7
                                                                                        je    .Lx425_53
                        cmp              ecx, 6
                                                                                        jne   .Lx425_50
                        cmp              edx, 6
                                                                                        jne   .Lx425_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx425_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx425_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx425_51
                                                                                        jmp   .Lx425_52
.Lx425_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx425_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx425_53
.Lx425_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx425_54
.Lx425_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx425_54
.Lx425_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx425_54:
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n181_op11_α
                                                                                        jmp   n232_suspend_α
n225_op11_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n233_var_ref_α
.Lx426_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1136]
                        lea              r8, [rbp + 1136]
.Lx429_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx429_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_41
                        cmp              esi, 1
                                                                                        jne   .Lx429_55
                        mov              r8, rax
                                                                                        jmp   .Lx429_40
.Lx429_55:
                        cmp              esi, 2
                                                                                        jne   .Lx429_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx429_41
                        mov              r8, rax
                                                                                        jmp   .Lx429_40
.Lx429_56:
                        cmp              eax, 13
                                                                                        jne   .Lx429_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_41
                        cmp              rax, r8
                                                                                        je    .Lx429_41
                        mov              r8, rax
                                                                                        jmp   .Lx429_40
.Lx429_41:
                        lea              r9, [rbp + 1152]
.Lx429_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx429_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_43
                        cmp              esi, 1
                                                                                        jne   .Lx429_57
                        mov              r9, rax
                                                                                        jmp   .Lx429_42
.Lx429_57:
                        cmp              esi, 2
                                                                                        jne   .Lx429_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx429_43
                        mov              r9, rax
                                                                                        jmp   .Lx429_42
.Lx429_58:
                        cmp              eax, 13
                                                                                        jne   .Lx429_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx429_43
                        cmp              rax, r9
                                                                                        je    .Lx429_43
                        mov              r9, rax
                                                                                        jmp   .Lx429_42
.Lx429_43:
                        cmp              r8, r9
                                                                                        je    .Lx429_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx429_44
                        cmp              eax, 99
                                                                                        je    .Lx429_44
                        cmp              eax, 13
                                                                                        jne   .Lx429_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx429_44
                                                                                        jmp   .Lx429_45
.Lx429_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx429_53
                        cmp              eax, 99
                                                                                        je    .Lx429_53
                        cmp              eax, 13
                                                                                        jne   .Lx429_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx429_53
                                                                                        jmp   .Lx429_46
.Lx429_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx429_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx429_53
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
                                                                                        jmp   .Lx429_51
.Lx429_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx429_47
                        cmp              eax, 99
                                                                                        je    .Lx429_47
                        cmp              eax, 13
                                                                                        jne   .Lx429_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx429_47
                                                                                        jmp   .Lx429_48
.Lx429_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx429_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx429_53
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
                                                                                        jmp   .Lx429_51
.Lx429_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx429_49
                        cmp              edx, 14
                                                                                        je    .Lx429_53
                                                                                        jmp   .Lx429_52
.Lx429_49:
                        cmp              edx, 14
                                                                                        je    .Lx429_52
                        cmp              ecx, 7
                                                                                        je    .Lx429_53
                        cmp              edx, 7
                                                                                        je    .Lx429_53
                        cmp              ecx, 6
                                                                                        jne   .Lx429_50
                        cmp              edx, 6
                                                                                        jne   .Lx429_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx429_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx429_51
                                                                                        jmp   .Lx429_52
.Lx429_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx429_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx429_53
.Lx429_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx429_54
.Lx429_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx429_54
.Lx429_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx429_54:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n229_op11_α
                                                                                        jmp   n235_var_ref_α
n228_op11_β:
                                                                                        jmp   n229_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n229_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n202_var_ref_α
n229_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n236_op11_α
.Lx431_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n237_lit_integer_α
.Lx432_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n232_suspend_α:
                        lea              rax, [rip + n232_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n232_suspend_β:
                                                                                        jmp   n181_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n238_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n239_var_ref_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n242_op11_α
                                                                                        jmp   n241_var_ref_α
n236_op11_β:
                                                                                        jmp   n242_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n243_op11_α
.Lx441_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n238_op11_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n244_op11_α
n238_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n245_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n246_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n247_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n242_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n224_var_ref_α
n242_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n243_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx450_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx450_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_111
                        cmp              esi, 1
                                                                                        jne   .Lx450_112
                        mov              r8, rax
                                                                                        jmp   .Lx450_110
.Lx450_112:
                        cmp              esi, 2
                                                                                        jne   .Lx450_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx450_111
                        mov              r8, rax
                                                                                        jmp   .Lx450_110
.Lx450_113:
                        cmp              eax, 13
                                                                                        jne   .Lx450_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx450_111
                        cmp              rax, r8
                                                                                        je    .Lx450_111
                        mov              r8, rax
                                                                                        jmp   .Lx450_110
.Lx450_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx450_114
                        cmp              eax, 99
                                                                                        je    .Lx450_114
                        cmp              eax, 13
                                                                                        jne   .Lx450_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx450_114
                                                                                        jmp   .Lx450_118
.Lx450_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx450_115
                        cmp              eax, 6
                                                                                        jne   .Lx450_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx450_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx450_115
                                                                                        jmp   .Lx450_114
.Lx450_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx450_117
.Lx450_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx450_117
.Lx450_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx450_117:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n249_op11_α
                                                                                        jmp   n248_var_ref_α
n243_op11_β:
                                                                                        jmp   n249_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n244_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n250_op11_α
n244_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n251_lit_integer_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1056]
                        lea              r8, [rbp + 1056]
.Lx453_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx453_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_41
                        cmp              esi, 1
                                                                                        jne   .Lx453_55
                        mov              r8, rax
                                                                                        jmp   .Lx453_40
.Lx453_55:
                        cmp              esi, 2
                                                                                        jne   .Lx453_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx453_41
                        mov              r8, rax
                                                                                        jmp   .Lx453_40
.Lx453_56:
                        cmp              eax, 13
                                                                                        jne   .Lx453_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_41
                        cmp              rax, r8
                                                                                        je    .Lx453_41
                        mov              r8, rax
                                                                                        jmp   .Lx453_40
.Lx453_41:
                        lea              r9, [rbp + 1072]
.Lx453_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx453_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_43
                        cmp              esi, 1
                                                                                        jne   .Lx453_57
                        mov              r9, rax
                                                                                        jmp   .Lx453_42
.Lx453_57:
                        cmp              esi, 2
                                                                                        jne   .Lx453_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx453_43
                        mov              r9, rax
                                                                                        jmp   .Lx453_42
.Lx453_58:
                        cmp              eax, 13
                                                                                        jne   .Lx453_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx453_43
                        cmp              rax, r9
                                                                                        je    .Lx453_43
                        mov              r9, rax
                                                                                        jmp   .Lx453_42
.Lx453_43:
                        cmp              r8, r9
                                                                                        je    .Lx453_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx453_44
                        cmp              eax, 99
                                                                                        je    .Lx453_44
                        cmp              eax, 13
                                                                                        jne   .Lx453_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx453_44
                                                                                        jmp   .Lx453_45
.Lx453_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx453_53
                        cmp              eax, 99
                                                                                        je    .Lx453_53
                        cmp              eax, 13
                                                                                        jne   .Lx453_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx453_53
                                                                                        jmp   .Lx453_46
.Lx453_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx453_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx453_53
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
                                                                                        jmp   .Lx453_51
.Lx453_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx453_47
                        cmp              eax, 99
                                                                                        je    .Lx453_47
                        cmp              eax, 13
                                                                                        jne   .Lx453_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx453_47
                                                                                        jmp   .Lx453_48
.Lx453_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx453_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx453_53
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
                                                                                        jmp   .Lx453_51
.Lx453_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx453_49
                        cmp              edx, 14
                                                                                        je    .Lx453_53
                                                                                        jmp   .Lx453_52
.Lx453_49:
                        cmp              edx, 14
                                                                                        je    .Lx453_52
                        cmp              ecx, 7
                                                                                        je    .Lx453_53
                        cmp              edx, 7
                                                                                        je    .Lx453_53
                        cmp              ecx, 6
                                                                                        jne   .Lx453_50
                        cmp              edx, 6
                                                                                        jne   .Lx453_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx453_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx453_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx453_51
                                                                                        jmp   .Lx453_52
.Lx453_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx453_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx453_53
.Lx453_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx453_54
.Lx453_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx453_54
.Lx453_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx453_54:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n229_op11_α
                                                                                        jmp   n252_suspend_α
n246_op11_β:
                                                                                        jmp   n229_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n253_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
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
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   proc_$2C$2F2_ω
n249_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_op11_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2256]
                        lea              r8, [rbp + 2256]
.Lx459_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx459_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_41
                        cmp              esi, 1
                                                                                        jne   .Lx459_55
                        mov              r8, rax
                                                                                        jmp   .Lx459_40
.Lx459_55:
                        cmp              esi, 2
                                                                                        jne   .Lx459_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx459_41
                        mov              r8, rax
                                                                                        jmp   .Lx459_40
.Lx459_56:
                        cmp              eax, 13
                                                                                        jne   .Lx459_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_41
                        cmp              rax, r8
                                                                                        je    .Lx459_41
                        mov              r8, rax
                                                                                        jmp   .Lx459_40
.Lx459_41:
                        lea              r9, [rbp + 2272]
.Lx459_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx459_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_43
                        cmp              esi, 1
                                                                                        jne   .Lx459_57
                        mov              r9, rax
                                                                                        jmp   .Lx459_42
.Lx459_57:
                        cmp              esi, 2
                                                                                        jne   .Lx459_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx459_43
                        mov              r9, rax
                                                                                        jmp   .Lx459_42
.Lx459_58:
                        cmp              eax, 13
                                                                                        jne   .Lx459_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx459_43
                        cmp              rax, r9
                                                                                        je    .Lx459_43
                        mov              r9, rax
                                                                                        jmp   .Lx459_42
.Lx459_43:
                        cmp              r8, r9
                                                                                        je    .Lx459_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_44
                        cmp              eax, 99
                                                                                        je    .Lx459_44
                        cmp              eax, 13
                                                                                        jne   .Lx459_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx459_44
                                                                                        jmp   .Lx459_45
.Lx459_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_53
                        cmp              eax, 99
                                                                                        je    .Lx459_53
                        cmp              eax, 13
                                                                                        jne   .Lx459_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx459_53
                                                                                        jmp   .Lx459_46
.Lx459_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx459_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx459_53
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
                                                                                        jmp   .Lx459_51
.Lx459_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx459_47
                        cmp              eax, 99
                                                                                        je    .Lx459_47
                        cmp              eax, 13
                                                                                        jne   .Lx459_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx459_47
                                                                                        jmp   .Lx459_48
.Lx459_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx459_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx459_53
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
                                                                                        jmp   .Lx459_51
.Lx459_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx459_49
                        cmp              edx, 14
                                                                                        je    .Lx459_53
                                                                                        jmp   .Lx459_52
.Lx459_49:
                        cmp              edx, 14
                                                                                        je    .Lx459_52
                        cmp              ecx, 7
                                                                                        je    .Lx459_53
                        cmp              edx, 7
                                                                                        je    .Lx459_53
                        cmp              ecx, 6
                                                                                        jne   .Lx459_50
                        cmp              edx, 6
                                                                                        jne   .Lx459_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx459_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx459_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx459_51
                                                                                        jmp   .Lx459_52
.Lx459_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx459_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx459_53
.Lx459_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx459_54
.Lx459_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx459_54
.Lx459_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx459_54:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n199_op11_α
                                                                                        jmp   n255_suspend_α
n250_op11_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n256_var_ref_α
.Lx460_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n252_suspend_α:
                        lea              rax, [rip + n252_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n252_suspend_β:
                                                                                        jmp   n229_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n253_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx463_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              esi, 1
                                                                                        jne   .Lx463_55
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_55:
                        cmp              esi, 2
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_56:
                        cmp              eax, 13
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              rax, r8
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_41:
                        lea              r9, [rbp + 752]
.Lx463_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              esi, 1
                                                                                        jne   .Lx463_57
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_57:
                        cmp              esi, 2
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_58:
                        cmp              eax, 13
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              rax, r9
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_43:
                        cmp              r8, r9
                                                                                        je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_44
                        cmp              eax, 99
                                                                                        je    .Lx463_44
                        cmp              eax, 13
                                                                                        jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx463_44
                                                                                        jmp   .Lx463_45
.Lx463_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_53
                        cmp              eax, 99
                                                                                        je    .Lx463_53
                        cmp              eax, 13
                                                                                        jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_46
.Lx463_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
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
                                                                                        jmp   .Lx463_51
.Lx463_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_47
                        cmp              eax, 99
                                                                                        je    .Lx463_47
                        cmp              eax, 13
                                                                                        jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_47
                                                                                        jmp   .Lx463_48
.Lx463_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
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
                                                                                        jmp   .Lx463_51
.Lx463_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx463_49
                        cmp              edx, 14
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_52
.Lx463_49:
                        cmp              edx, 14
                                                                                        je    .Lx463_52
                        cmp              ecx, 7
                                                                                        je    .Lx463_53
                        cmp              edx, 7
                                                                                        je    .Lx463_53
                        cmp              ecx, 6
                                                                                        jne   .Lx463_50
                        cmp              edx, 6
                                                                                        jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx463_51
                                                                                        jmp   .Lx463_52
.Lx463_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
.Lx463_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx463_54
.Lx463_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx463_54
.Lx463_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx463_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n242_op11_α
                                                                                        jmp   n257_suspend_α
n253_op11_β:
                                                                                        jmp   n242_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n258_op11_α
.Lx464_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n255_suspend_α:
                        lea              rax, [rip + n255_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n255_suspend_β:
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n259_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n257_suspend_α:
                        lea              rax, [rip + n257_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n257_suspend_β:
                                                                                        jmp   n242_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n258_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n249_op11_α
                                                                                        jmp   n260_var_ref_α
n258_op11_β:
                                                                                        jmp   n249_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n259_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n261_op11_α
n259_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n261_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n263_op11_α
n261_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n264_lit_string_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n263_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1488]
                        lea              r8, [rbp + 1488]
.Lx477_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx477_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_41
                        cmp              esi, 1
                                                                                        jne   .Lx477_55
                        mov              r8, rax
                                                                                        jmp   .Lx477_40
.Lx477_55:
                        cmp              esi, 2
                                                                                        jne   .Lx477_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx477_41
                        mov              r8, rax
                                                                                        jmp   .Lx477_40
.Lx477_56:
                        cmp              eax, 13
                                                                                        jne   .Lx477_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_41
                        cmp              rax, r8
                                                                                        je    .Lx477_41
                        mov              r8, rax
                                                                                        jmp   .Lx477_40
.Lx477_41:
                        lea              r9, [rbp + 1504]
.Lx477_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx477_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_43
                        cmp              esi, 1
                                                                                        jne   .Lx477_57
                        mov              r9, rax
                                                                                        jmp   .Lx477_42
.Lx477_57:
                        cmp              esi, 2
                                                                                        jne   .Lx477_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx477_43
                        mov              r9, rax
                                                                                        jmp   .Lx477_42
.Lx477_58:
                        cmp              eax, 13
                                                                                        jne   .Lx477_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx477_43
                        cmp              rax, r9
                                                                                        je    .Lx477_43
                        mov              r9, rax
                                                                                        jmp   .Lx477_42
.Lx477_43:
                        cmp              r8, r9
                                                                                        je    .Lx477_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx477_44
                        cmp              eax, 99
                                                                                        je    .Lx477_44
                        cmp              eax, 13
                                                                                        jne   .Lx477_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx477_44
                                                                                        jmp   .Lx477_45
.Lx477_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx477_53
                        cmp              eax, 99
                                                                                        je    .Lx477_53
                        cmp              eax, 13
                                                                                        jne   .Lx477_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx477_53
                                                                                        jmp   .Lx477_46
.Lx477_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx477_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx477_53
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
                                                                                        jmp   .Lx477_51
.Lx477_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx477_47
                        cmp              eax, 99
                                                                                        je    .Lx477_47
                        cmp              eax, 13
                                                                                        jne   .Lx477_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx477_47
                                                                                        jmp   .Lx477_48
.Lx477_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx477_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx477_53
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
                                                                                        jmp   .Lx477_51
.Lx477_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx477_49
                        cmp              edx, 14
                                                                                        je    .Lx477_53
                                                                                        jmp   .Lx477_52
.Lx477_49:
                        cmp              edx, 14
                                                                                        je    .Lx477_52
                        cmp              ecx, 7
                                                                                        je    .Lx477_53
                        cmp              edx, 7
                                                                                        je    .Lx477_53
                        cmp              ecx, 6
                                                                                        jne   .Lx477_50
                        cmp              edx, 6
                                                                                        jne   .Lx477_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx477_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx477_51
                                                                                        jmp   .Lx477_52
.Lx477_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx477_53
.Lx477_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx477_54
.Lx477_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx477_54
.Lx477_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx477_54:
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n265_suspend_α
n263_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n266_var_ref_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "all_different"
#-----------------------------------------------------------------------------------------------------------------------
n265_suspend_α:
                        lea              rax, [rip + n265_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n265_suspend_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n267_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n267_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n268_lit_string_α
n267_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n269_var_ref_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n270_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_$2C$2F2_ω
                                                                                        jmp   n271_op11_α
n270_op11_β:
                                                                                        jmp   proc_$2C$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n271_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n249_op11_α
                                                                                        jmp   n272_op11_α
n271_op11_β:
                                                                                        jmp   n249_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n272_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx489_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx489_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx489_41
                        cmp              esi, 1
                                                                                        jne   .Lx489_55
                        mov              r8, rax
                                                                                        jmp   .Lx489_40
.Lx489_55:
                        cmp              esi, 2
                                                                                        jne   .Lx489_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx489_41
                        mov              r8, rax
                                                                                        jmp   .Lx489_40
.Lx489_56:
                        cmp              eax, 13
                                                                                        jne   .Lx489_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx489_41
                        cmp              rax, r8
                                                                                        je    .Lx489_41
                        mov              r8, rax
                                                                                        jmp   .Lx489_40
.Lx489_41:
                        lea              r9, [rbp + 160]
.Lx489_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx489_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx489_43
                        cmp              esi, 1
                                                                                        jne   .Lx489_57
                        mov              r9, rax
                                                                                        jmp   .Lx489_42
.Lx489_57:
                        cmp              esi, 2
                                                                                        jne   .Lx489_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx489_43
                        mov              r9, rax
                                                                                        jmp   .Lx489_42
.Lx489_58:
                        cmp              eax, 13
                                                                                        jne   .Lx489_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx489_43
                        cmp              rax, r9
                                                                                        je    .Lx489_43
                        mov              r9, rax
                                                                                        jmp   .Lx489_42
.Lx489_43:
                        cmp              r8, r9
                                                                                        je    .Lx489_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx489_44
                        cmp              eax, 99
                                                                                        je    .Lx489_44
                        cmp              eax, 13
                                                                                        jne   .Lx489_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx489_44
                                                                                        jmp   .Lx489_45
.Lx489_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx489_53
                        cmp              eax, 99
                                                                                        je    .Lx489_53
                        cmp              eax, 13
                                                                                        jne   .Lx489_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx489_53
                                                                                        jmp   .Lx489_46
.Lx489_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx489_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx489_53
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
                                                                                        jmp   .Lx489_51
.Lx489_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx489_47
                        cmp              eax, 99
                                                                                        je    .Lx489_47
                        cmp              eax, 13
                                                                                        jne   .Lx489_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx489_47
                                                                                        jmp   .Lx489_48
.Lx489_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx489_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx489_53
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
                                                                                        jmp   .Lx489_51
.Lx489_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx489_49
                        cmp              edx, 14
                                                                                        je    .Lx489_53
                                                                                        jmp   .Lx489_52
.Lx489_49:
                        cmp              edx, 14
                                                                                        je    .Lx489_52
                        cmp              ecx, 7
                                                                                        je    .Lx489_53
                        cmp              edx, 7
                                                                                        je    .Lx489_53
                        cmp              ecx, 6
                                                                                        jne   .Lx489_50
                        cmp              edx, 6
                                                                                        jne   .Lx489_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx489_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx489_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx489_51
                                                                                        jmp   .Lx489_52
.Lx489_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx489_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx489_53
.Lx489_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx489_54
.Lx489_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx489_54
.Lx489_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx489_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n249_op11_α
                                                                                        jmp   n273_suspend_α
n272_op11_β:
                                                                                        jmp   n249_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n273_suspend_α:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$2C$2F2_γ
n273_suspend_β:
                                                                                        jmp   n249_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_β:
                                                                                        jmp   qword ptr [rbp + 4800]
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$2C$2F2_res]
                        push             rax
                        mov              rax, [rbp + 4920]
                        mov              rbp, [rbp + 4936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$2C$2F2_ω:
                        mov              rax, [rbp + 4928]
                        lea              rsp, [rbp + 4944]
                        mov              rbp, [rbp + 4936]
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
                        lea              rax, [rip + n494_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n492_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n493_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx497_60:
                        .section         .rodata
.Lbynamegenfn215:       .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn215]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n494_suspend_α
n493_call_builtin_gen_β:
                                                                                        jmp   .Lx497_60
#-----------------------------------------------------------------------------------------------------------------------
n494_suspend_α:
                        lea              rax, [rip + n494_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n494_suspend_β:
                                                                                        jmp   n493_call_builtin_gen_β
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
                        .globl           proc_send$2F1_α
proc_send$2F1_α:
                        .global          proc_send$2F1_α
                        .global          proc_send$2F1_β
                        .global          proc_send$2F1_γ
                        .global          proc_send$2F1_ω
                        sub              rsp, 3824
                        mov              [rsp + 3800], rcx
                        mov              [rsp + 3808], rdx
                        mov              [rsp + 3816], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3552
                        mov              edx, 3792
                        call             rt_jmp_frame_lexprep2@PLT
proc_send$2F1_α_body:
                        lea              rax, [rip + n597_suspend_β]
                        mov              qword ptr [rbp + 3552], rax
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx598_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx598_101
.Lx598_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx598_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n501_var_ref_α
n500_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n502_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 3536], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n503_lit_string_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n504_var_ref_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n505_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n506_var_ref_α
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n507_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n508_var_ref_α
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n509_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n510_var_ref_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:
                        mov              qword ptr [rbp + 2992], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n512_op11_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n512_op11_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 3040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n513_op11_α
n512_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n513_op11_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3192], rax
                        lea              rdi, [rbp + 3152]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n514_op11_α
n513_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n514_op11_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3304], rax
                        lea              rdi, [rbp + 3264]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n515_op11_α
n514_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n515_op11_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3416], rax
                        lea              rdi, [rbp + 3376]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n516_lit_string_α
n515_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n517_lit_string_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:
                        mov              qword ptr [rbp + 2880], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n518_var_ref_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n520_var_ref_α
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n521_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n522_var_ref_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n524_var_ref_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n525_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n526_op11_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n526_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n527_op11_α
n526_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n528_op11_α
n527_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n528_op11_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2704]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n529_op11_α
n528_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n529_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n530_lit_string_α
n529_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n531_lit_string_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n532_var_ref_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n533_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n534_var_ref_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n535_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n536_var_ref_α
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n537_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n538_var_ref_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n539_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n540_var_ref_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n542_op11_α
.Lx653_0:
                        .quad            .Lx653_0_s
.Lx653_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n542_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1808]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n543_op11_α
n542_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n543_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n544_op11_α
n543_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2032]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n545_op11_α
n544_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n545_op11_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2144]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n546_op11_α
n545_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n546_op11_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n547_lit_string_α
n546_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n547_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n548_op11_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n548_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n549_op11_α
n548_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n549_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n550_op11_α
n549_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n550_op11_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3512], rax
                        lea              rdi, [rbp + 3472]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n551_op11_α
n550_op11_β:
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n551_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1696]
                        lea              r8, [rbp + 1696]
.Lx663_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx663_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_41
                        cmp              esi, 1
                                                                                        jne   .Lx663_55
                        mov              r8, rax
                                                                                        jmp   .Lx663_40
.Lx663_55:
                        cmp              esi, 2
                                                                                        jne   .Lx663_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx663_41
                        mov              r8, rax
                                                                                        jmp   .Lx663_40
.Lx663_56:
                        cmp              eax, 13
                                                                                        jne   .Lx663_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_41
                        cmp              rax, r8
                                                                                        je    .Lx663_41
                        mov              r8, rax
                                                                                        jmp   .Lx663_40
.Lx663_41:
                        lea              r9, [rbp + 1712]
.Lx663_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx663_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_43
                        cmp              esi, 1
                                                                                        jne   .Lx663_57
                        mov              r9, rax
                                                                                        jmp   .Lx663_42
.Lx663_57:
                        cmp              esi, 2
                                                                                        jne   .Lx663_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx663_43
                        mov              r9, rax
                                                                                        jmp   .Lx663_42
.Lx663_58:
                        cmp              eax, 13
                                                                                        jne   .Lx663_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx663_43
                        cmp              rax, r9
                                                                                        je    .Lx663_43
                        mov              r9, rax
                                                                                        jmp   .Lx663_42
.Lx663_43:
                        cmp              r8, r9
                                                                                        je    .Lx663_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx663_44
                        cmp              eax, 99
                                                                                        je    .Lx663_44
                        cmp              eax, 13
                                                                                        jne   .Lx663_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx663_44
                                                                                        jmp   .Lx663_45
.Lx663_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx663_53
                        cmp              eax, 99
                                                                                        je    .Lx663_53
                        cmp              eax, 13
                                                                                        jne   .Lx663_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx663_53
                                                                                        jmp   .Lx663_46
.Lx663_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx663_53
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
                                                                                        jmp   .Lx663_51
.Lx663_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx663_47
                        cmp              eax, 99
                                                                                        je    .Lx663_47
                        cmp              eax, 13
                                                                                        jne   .Lx663_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx663_47
                                                                                        jmp   .Lx663_48
.Lx663_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx663_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx663_53
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
                                                                                        jmp   .Lx663_51
.Lx663_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx663_49
                        cmp              edx, 14
                                                                                        je    .Lx663_53
                                                                                        jmp   .Lx663_52
.Lx663_49:
                        cmp              edx, 14
                                                                                        je    .Lx663_52
                        cmp              ecx, 7
                                                                                        je    .Lx663_53
                        cmp              edx, 7
                                                                                        je    .Lx663_53
                        cmp              ecx, 6
                                                                                        jne   .Lx663_50
                        cmp              edx, 6
                                                                                        jne   .Lx663_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx663_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx663_51
                                                                                        jmp   .Lx663_52
.Lx663_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx663_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx663_53
.Lx663_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx663_54
.Lx663_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx663_54
.Lx663_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx663_54:
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n553_var_ref_α
n551_op11_β:
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n552_op11_α:
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
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   proc_send$2F1_ω
n552_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n553_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n554_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n555_var_ref_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n555_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n556_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n556_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n557_var_ref_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n558_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n559_var_ref_α
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n560_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n561_var_ref_α
.Lx676_0:
                        .quad            .Lx676_0_s
.Lx676_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n561_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n562_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n563_var_ref_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n563_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n564_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n565_var_ref_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n566_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n566_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n567_var_ref_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n567_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n568_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n569_var_ref_α
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n570_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n571_op11_α
.Lx691_0:
                        .quad            .Lx691_0_s
.Lx691_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n571_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n572_op11_α
n571_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n573_op11_α
n572_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n573_op11_α:
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
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n574_op11_α
n573_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n574_op11_α:
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
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n575_op11_α
n574_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n575_op11_α:
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
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n576_op11_α
n575_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n576_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n577_op11_α
n576_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n577_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n578_op11_α
n577_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n578_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n579_op11_α
n578_op11_β:
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n579_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx700_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx700_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx700_41
                        cmp              esi, 1
                                                                                        jne   .Lx700_55
                        mov              r8, rax
                                                                                        jmp   .Lx700_40
.Lx700_55:
                        cmp              esi, 2
                                                                                        jne   .Lx700_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx700_41
                        mov              r8, rax
                                                                                        jmp   .Lx700_40
.Lx700_56:
                        cmp              eax, 13
                                                                                        jne   .Lx700_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx700_41
                        cmp              rax, r8
                                                                                        je    .Lx700_41
                        mov              r8, rax
                                                                                        jmp   .Lx700_40
.Lx700_41:
                        lea              r9, [rbp + 736]
.Lx700_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx700_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx700_43
                        cmp              esi, 1
                                                                                        jne   .Lx700_57
                        mov              r9, rax
                                                                                        jmp   .Lx700_42
.Lx700_57:
                        cmp              esi, 2
                                                                                        jne   .Lx700_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx700_43
                        mov              r9, rax
                                                                                        jmp   .Lx700_42
.Lx700_58:
                        cmp              eax, 13
                                                                                        jne   .Lx700_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx700_43
                        cmp              rax, r9
                                                                                        je    .Lx700_43
                        mov              r9, rax
                                                                                        jmp   .Lx700_42
.Lx700_43:
                        cmp              r8, r9
                                                                                        je    .Lx700_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx700_44
                        cmp              eax, 99
                                                                                        je    .Lx700_44
                        cmp              eax, 13
                                                                                        jne   .Lx700_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx700_44
                                                                                        jmp   .Lx700_45
.Lx700_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx700_53
                        cmp              eax, 99
                                                                                        je    .Lx700_53
                        cmp              eax, 13
                                                                                        jne   .Lx700_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx700_53
                                                                                        jmp   .Lx700_46
.Lx700_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx700_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx700_53
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
                                                                                        jmp   .Lx700_51
.Lx700_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx700_47
                        cmp              eax, 99
                                                                                        je    .Lx700_47
                        cmp              eax, 13
                                                                                        jne   .Lx700_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx700_47
                                                                                        jmp   .Lx700_48
.Lx700_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx700_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx700_53
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
                                                                                        jmp   .Lx700_51
.Lx700_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx700_49
                        cmp              edx, 14
                                                                                        je    .Lx700_53
                                                                                        jmp   .Lx700_52
.Lx700_49:
                        cmp              edx, 14
                                                                                        je    .Lx700_52
                        cmp              ecx, 7
                                                                                        je    .Lx700_53
                        cmp              edx, 7
                                                                                        je    .Lx700_53
                        cmp              ecx, 6
                                                                                        jne   .Lx700_50
                        cmp              edx, 6
                                                                                        jne   .Lx700_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx700_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx700_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx700_51
                                                                                        jmp   .Lx700_52
.Lx700_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx700_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx700_53
.Lx700_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx700_54
.Lx700_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx700_54
.Lx700_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx700_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n580_var_ref_α
n579_op11_β:
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3584]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n581_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n582_var_ref_α
.Lx703_0:
                        .quad            .Lx703_0_s
.Lx703_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n583_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n584_var_ref_α
.Lx706_0:
                        .quad            .Lx706_0_s
.Lx706_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n585_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n586_var_ref_α
.Lx709_0:
                        .quad            .Lx709_0_s
.Lx709_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3616]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n587_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n588_var_ref_α
.Lx712_0:
                        .quad            .Lx712_0_s
.Lx712_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n589_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n590_op11_α
.Lx715_0:
                        .quad            .Lx715_0_s
.Lx715_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n590_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n591_op11_α
n590_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n591_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n592_op11_α
n591_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n592_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_send$2F1_ω
                                                                                        jmp   n593_op11_α
n592_op11_β:
                                                                                        jmp   proc_send$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n593_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n594_op11_α
n593_op11_β:
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n594_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
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
                        lea              r9, [rbp + 208]
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n595_var_ref_α
n594_op11_β:
                                                                                        jmp   n552_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n596_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n596_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx724_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx724_21
.Lx724_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx724_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx724_1
                        lea              rcx, [rip + .Lx724_3]
                        lea              rdx, [rip + .Lx724_4]
                                                                                        jmp   rax
.Lx724_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx724_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx724_2
.Lx724_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx724_2
.Lx724_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx724_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx724_2
.Lx724_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx724_2
.Lx724_1:
                        call             rt_faildescr@PLT
.Lx724_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n552_op11_α
                                                                                        jmp   n597_suspend_α
n596_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx724_0:
                        .quad            .Lx724_0_s
.Lx724_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n597_suspend_α:
                        lea              rax, [rip + n597_suspend_β]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_send$2F1_γ
n597_suspend_β:
                                                                                        jmp   n596_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_send$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_send$2F1_β:
                                                                                        jmp   qword ptr [rbp + 3552]
#-----------------------------------------------------------------------------------------------------------------------
proc_send$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_send$2F1_res]
                        push             rax
                        mov              rax, [rbp + 3800]
                        mov              rbp, [rbp + 3816]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_send$2F1_ω:
                        mov              rax, [rbp + 3808]
                        lea              rsp, [rbp + 3824]
                        mov              rbp, [rbp + 3816]
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
                        lea              rax, [rip + n738_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n727_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx739_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx739_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx739_101
.Lx739_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx739_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n728_lit_string_α
n727_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n729_lit_string_α
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "sendmoney"
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx741_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n730_lit_string_α
.Lx741_0:
                        .quad            .Lx741_0_s
.Lx741_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n731_lit_string_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx743_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n732_lit_integer_α
.Lx743_0:
                        .quad            .Lx743_0_s
.Lx743_0_s:
                        .string          "sendmoney"
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n733_op11_α
.Lx744_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n733_op11_α:
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
                                                                                        jmp   n734_lit_string_α
n733_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n735_op11_α
.Lx746_0:
                        .quad            .Lx746_0_s
.Lx746_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n735_op11_α:
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
                                                                                        je    n737_op11_α
                                                                                        jmp   n736_call_proc_staged_α
n735_op11_β:
                                                                                        jmp   n737_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx749_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx749_21
.Lx749_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx749_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx749_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx749_23
.Lx749_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx749_23:
                        mov              rdi, qword ptr [rip + .Lx749_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx749_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx749_3]
                        lea              rdx, [rip + .Lx749_4]
                                                                                        jmp   rax
.Lx749_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx749_2
.Lx749_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx749_2
.Lx749_1:
                        call             rt_faildescr@PLT
.Lx749_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n737_op11_α
                                                                                        jmp   n738_suspend_α
n736_call_proc_staged_β:
                                                                                        jmp   n737_op11_α
.Lx749_0:
                        .quad            .Lx749_0_s
.Lx749_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n737_op11_α:
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
n737_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n738_suspend_α:
                        lea              rax, [rip + n738_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n738_suspend_β:
                                                                                        jmp   n736_call_proc_staged_β
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
                        lea              rax, [rip + n759_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n753_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx760_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx760_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx760_101
.Lx760_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx760_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n754_lit_string_α
n753_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n755_lit_string_α
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n756_op11_α
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "clp/bounds"
#-----------------------------------------------------------------------------------------------------------------------
n756_op11_α:
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
                                                                                        je    n758_op11_α
                                                                                        jmp   n757_call_proc_staged_α
n756_op11_β:
                                                                                        jmp   n758_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n757_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx765_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx765_21
.Lx765_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx765_21:
                        mov              rdi, qword ptr [rip + .Lx765_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx765_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx765_3]
                        lea              rdx, [rip + .Lx765_4]
                                                                                        jmp   rax
.Lx765_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx765_2
.Lx765_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx765_2
.Lx765_1:
                        call             rt_faildescr@PLT
.Lx765_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n758_op11_α
                                                                                        jmp   n759_suspend_α
n757_call_proc_staged_β:
                                                                                        jmp   n758_op11_α
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n758_op11_α:
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
n758_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n759_suspend_α:
                        lea              rax, [rip + n759_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n759_suspend_β:
                                                                                        jmp   n757_call_proc_staged_β
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
.Lstartup_pname0:       .string          "sendmoney/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sendmoney$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2064
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          ",/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$2C$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "send/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_send$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3792
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
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
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n770_lit_string_α
.Lx773_0:
                        .quad            .Lx773_0_s
.Lx773_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx774_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n771_op11_α
.Lx774_0:
                        .quad            .Lx774_0_s
.Lx774_0_s:
                        .string          "clp/bounds"
#-----------------------------------------------------------------------------------------------------------------------
n771_op11_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n772_call_proc_staged_α
n771_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n772_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx777_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx777_21
.Lx777_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx777_21:
                        mov              rdi, qword ptr [rip + .Lx777_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx777_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx777_3]
                        lea              rdx, [rip + .Lx777_4]
                                                                                        jmp   rax
.Lx777_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx777_2
.Lx777_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx777_2
.Lx777_1:
                        call             rt_faildescr@PLT
.Lx777_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n772_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 152
                        ret
                        .section         .note.GNU-stack,"",@progbits
