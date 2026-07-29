                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_transport$2F0_α
proc_transport$2F0_α:
                        .global          proc_transport$2F0_α
                        .global          proc_transport$2F0_β
                        .global          proc_transport$2F0_γ
                        .global          proc_transport$2F0_ω
                        sub              rsp, 4528
                        mov              [rsp + 4504], rcx
                        mov              [rsp + 4512], rdx
                        mov              [rsp + 4520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4464
                        mov              edx, 4496
                        call             rt_jmp_frame_lexprep2@PLT
proc_transport$2F0_α_body:
                        lea              rax, [rip + n121_suspend_β]
                        mov              qword ptr [rbp + 4464], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx122_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx122_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx122_101
.Lx122_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx122_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n2_lit_integer_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 2176], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n3_lit_string_α
.Lx124_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n4_lit_integer_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n5_lit_string_α
.Lx126_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n6_lit_integer_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n7_lit_string_α
.Lx128_0:
                        .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n8_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n9_op11_α
n8_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2096]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n10_op11_α
n9_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2248], rax
                        lea              rdi, [rbp + 2208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_lit_string_α
n10_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n13_lit_integer_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   proc_transport$2F0_ω
n12_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 6
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n14_lit_string_α
.Lx135_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n15_lit_integer_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n16_lit_string_α
.Lx137_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n17_lit_integer_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 6
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n18_lit_string_α
.Lx139_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n19_lit_integer_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n20_lit_string_α
.Lx141_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n21_op11_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n22_op11_α
n21_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n23_op11_α
n22_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n24_op11_α
n23_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n25_lit_string_α
n24_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n26_lit_string_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 4336], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n27_lit_integer_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 4240], 6
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n28_lit_string_α
.Lx149_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n29_lit_integer_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 4128], 6
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n30_lit_string_α
.Lx151_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 4112], 1
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n31_lit_integer_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 4016], 6
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n32_lit_string_α
.Lx153_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 4000], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n33_lit_integer_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 3904], 6
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 3912], rax
                                                                                        jmp   n34_lit_string_α
.Lx155_0:
                        .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 3888], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n35_op11_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3976], rax
                        lea              rdi, [rbp + 3936]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n36_op11_α
n35_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 4088], rax
                        lea              rdi, [rbp + 4048]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n37_op11_α
n36_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4160]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n38_op11_α
n37_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4280], rax
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4312], rax
                        lea              rdi, [rbp + 4272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n39_lit_string_α
n38_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n40_lit_string_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 3776], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n41_lit_integer_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 3680], 6
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n42_lit_string_α
.Lx163_0:
                        .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 3664], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n43_lit_integer_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 6
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n44_lit_string_α
.Lx165_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 3552], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n45_lit_integer_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 3456], 6
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n46_lit_string_α
.Lx167_0:
                        .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n47_lit_integer_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 3344], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n48_lit_string_α
.Lx169_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n49_op11_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3416], rax
                        lea              rdi, [rbp + 3376]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n50_op11_α
n49_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n51_op11_α
n50_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3640], rax
                        lea              rdi, [rbp + 3600]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n52_op11_α
n51_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3752], rax
                        lea              rdi, [rbp + 3712]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n53_lit_string_α
n52_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n54_lit_string_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n55_lit_integer_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 3120], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n56_lit_string_α
.Lx177_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n57_lit_integer_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rbp + 3008], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n58_lit_string_α
.Lx179_0:
                        .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 2992], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n59_lit_integer_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n60_lit_string_α
.Lx181_0:
                        .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 2880], 1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n61_lit_integer_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rbp + 2784], 6
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n62_lit_string_α
.Lx183_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n63_op11_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n64_op11_α
n63_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n65_op11_α
n64_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 3080], rax
                        lea              rdi, [rbp + 3040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n66_op11_α
n65_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n67_lit_string_α
n66_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n68_op11_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3248]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n69_op11_α
n68_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3808]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n70_op11_α
n69_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n71_var_ref_α
n70_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   n72_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx196_20
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx196_21
.Lx196_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        call             rt_arg_stage@PLT
.Lx196_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx196_22
                        mov              rax, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx196_23
.Lx196_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        call             rt_arg_stage@PLT
.Lx196_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx196_24
                        mov              rax, qword ptr [rbp + 4352]
                        mov              rdx, qword ptr [rbp + 4360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx196_25
.Lx196_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 4352]
                        mov              rdx, qword ptr [rbp + 4360]
                        call             rt_arg_stage@PLT
.Lx196_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx196_26
                        mov              rax, qword ptr [rbp + 4448]
                        mov              rdx, qword ptr [rbp + 4456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx196_27
.Lx196_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 4448]
                        mov              rdx, qword ptr [rbp + 4456]
                        call             rt_arg_stage@PLT
.Lx196_27:
                        mov              rdi, qword ptr [rip + .Lx196_0]
                        mov              esi, 4
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx196_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx196_3]
                        lea              rdx, [rip + .Lx196_4]
                                                                                        jmp   rax
.Lx196_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx196_2
.Lx196_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx196_2
.Lx196_1:
                        call             rt_faildescr@PLT
.Lx196_2:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n73_var_ref_α
n72_call_proc_staged_β:
                                                                                        jmp   n12_op11_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "transportation/4"
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n75_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n76_lit_integer_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 1632], 6
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n77_lit_string_α
.Lx201_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n78_lit_integer_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n79_lit_string_α
.Lx203_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n80_lit_integer_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n81_lit_string_α
.Lx205_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n82_lit_integer_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n83_lit_string_α
.Lx207_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n84_op11_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n85_op11_α
n84_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n86_op11_α
n85_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n87_op11_α
n86_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n88_lit_string_α
n87_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n89_lit_string_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n90_lit_integer_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n91_lit_string_α
.Lx215_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n92_lit_integer_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n93_lit_string_α
.Lx217_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n94_lit_integer_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n95_lit_string_α
.Lx219_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n96_lit_integer_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n97_lit_string_α
.Lx221_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n98_op11_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n99_op11_α
n98_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n100_op11_α
n99_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n101_op11_α
n100_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n102_lit_string_α
n101_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n103_lit_string_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n104_lit_integer_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n105_lit_string_α
.Lx229_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n106_lit_integer_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n107_lit_string_α
.Lx231_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n108_lit_integer_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n109_lit_string_α
.Lx233_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n110_lit_integer_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n111_lit_string_α
.Lx235_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n112_op11_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n113_op11_α
n112_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n114_op11_α
n113_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n115_op11_α
n114_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
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
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n116_lit_string_α
n115_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n117_op11_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n118_op11_α
n117_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1200]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    proc_transport$2F0_ω
                                                                                        jmp   n119_op11_α
n118_op11_β:
                                                                                        jmp   proc_transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n120_op11_α
n119_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn246:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_proc_staged_β
                                                                                        jmp   n121_suspend_α
n120_op11_β:
                                                                                        jmp   n72_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n121_suspend_α:
                        lea              rax, [rip + n121_suspend_β]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_transport$2F0_γ
n121_suspend_β:
                                                                                        jmp   n72_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_transport$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_transport$2F0_β:
                                                                                        jmp   qword ptr [rbp + 4464]
#-----------------------------------------------------------------------------------------------------------------------
proc_transport$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_transport$2F0_res]
                        push             rax
                        mov              rax, [rbp + 4504]
                        mov              rbp, [rbp + 4520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_transport$2F0_ω:
                        mov              rax, [rbp + 4512]
                        lea              rsp, [rbp + 4528]
                        mov              rbp, [rbp + 4520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_linprog$2F0_α
proc_linprog$2F0_α:
                        .global          proc_linprog$2F0_α
                        .global          proc_linprog$2F0_β
                        .global          proc_linprog$2F0_γ
                        .global          proc_linprog$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_linprog$2F0_α_body:
                        lea              rax, [rip + n253_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx254_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx254_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx254_101
.Lx254_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx254_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_linprog$2F0_ω
                                                                                        jmp   n250_call_proc_staged_α
n249_op11_β:
                                                                                        jmp   proc_linprog$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 5
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx256_1
                        lea              rcx, [rip + .Lx256_3]
                        lea              rdx, [rip + .Lx256_4]
                                                                                        jmp   rax
.Lx256_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx256_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx256_2
.Lx256_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx256_2
.Lx256_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx256_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx256_2
.Lx256_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx256_2
.Lx256_1:
                        call             rt_faildescr@PLT
.Lx256_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n252_op11_α
                                                                                        jmp   n251_call_proc_staged_α
n250_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "radiation/0"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_proc_staged_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              edi, 0
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx258_1
                        lea              rcx, [rip + .Lx258_3]
                        lea              rdx, [rip + .Lx258_4]
                                                                                        jmp   rax
.Lx258_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx258_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx258_2
.Lx258_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx258_2
.Lx258_4:
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx258_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx258_2
.Lx258_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx258_2
.Lx258_1:
                        call             rt_faildescr@PLT
.Lx258_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n250_call_proc_staged_β
                                                                                        jmp   n253_suspend_α
n251_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "transport/0"
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
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
                                                                                        je    proc_linprog$2F0_ω
                                                                                        jmp   proc_linprog$2F0_ω
n252_op11_β:
                                                                                        jmp   proc_linprog$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_suspend_α:
                        lea              rax, [rip + n253_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_linprog$2F0_γ
n253_suspend_β:
                                                                                        jmp   n251_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_linprog$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_linprog$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_linprog$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_linprog$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_linprog$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
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
                        lea              rax, [rip + n268_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n262_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx269_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx269_101
.Lx269_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx269_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n263_lit_string_α
n262_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n264_lit_string_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n265_op11_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "clp/simplex"
#-----------------------------------------------------------------------------------------------------------------------
n265_op11_α:
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
                                                                                        je    n267_op11_α
                                                                                        jmp   n266_call_proc_staged_α
n265_op11_β:
                                                                                        jmp   n267_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx274_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx274_21
.Lx274_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx274_21:
                        mov              rdi, qword ptr [rip + .Lx274_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx274_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4]
                                                                                        jmp   rax
.Lx274_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx274_2
.Lx274_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx274_2
.Lx274_1:
                        call             rt_faildescr@PLT
.Lx274_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n267_op11_α
                                                                                        jmp   n268_suspend_α
n266_call_proc_staged_β:
                                                                                        jmp   n267_op11_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n267_op11_α:
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
n267_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n268_suspend_α:
                        lea              rax, [rip + n268_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n268_suspend_β:
                                                                                        jmp   n266_call_proc_staged_β
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
                        lea              rax, [rip + n289_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n278_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx290_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx290_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx290_101
.Lx290_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx290_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n279_lit_string_α
n278_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n280_lit_string_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "linprog"
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n281_lit_string_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n282_lit_string_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n283_lit_integer_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "linprog"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n284_op11_α
.Lx295_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
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
                                                                                        jmp   n285_lit_string_α
n284_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n286_op11_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
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
                                                                                        je    n288_op11_α
                                                                                        jmp   n287_call_proc_staged_α
n286_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx300_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx300_21
.Lx300_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx300_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx300_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx300_23
.Lx300_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx300_23:
                        mov              rdi, qword ptr [rip + .Lx300_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx300_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx300_3]
                        lea              rdx, [rip + .Lx300_4]
                                                                                        jmp   rax
.Lx300_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx300_2
.Lx300_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx300_2
.Lx300_1:
                        call             rt_faildescr@PLT
.Lx300_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n289_suspend_α
n287_call_proc_staged_β:
                                                                                        jmp   n288_op11_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
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
n288_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_suspend_α:
                        lea              rax, [rip + n289_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n289_suspend_β:
                                                                                        jmp   n287_call_proc_staged_β
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
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n304_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx315_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx315_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx315_101
.Lx315_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx315_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n305_lit_string_α
n304_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n306_lit_string_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n307_lit_string_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n308_lit_string_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n309_op11_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "file_search_path"
#-----------------------------------------------------------------------------------------------------------------------
n309_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n310_lit_integer_α
n309_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n311_op11_α
.Lx321_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n311_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n313_op11_α
                                                                                        jmp   n312_call_proc_staged_α
n311_op11_β:
                                                                                        jmp   n313_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx324_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx324_21
.Lx324_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx324_21:
                        mov              rdi, qword ptr [rip + .Lx324_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx324_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx324_3]
                        lea              rdx, [rip + .Lx324_4]
                                                                                        jmp   rax
.Lx324_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx324_2
.Lx324_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx324_2
.Lx324_1:
                        call             rt_faildescr@PLT
.Lx324_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n313_op11_α
                                                                                        jmp   n314_suspend_α
n312_call_proc_staged_β:
                                                                                        jmp   n313_op11_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
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
n313_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n314_suspend_α:
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n314_suspend_β:
                                                                                        jmp   n312_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_1$2F0_res]
                        push             rax
                        mov              rax, [rbp + 392]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_1$2F0_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_radiation$2F0_α
proc_radiation$2F0_α:
                        .global          proc_radiation$2F0_α
                        .global          proc_radiation$2F0_β
                        .global          proc_radiation$2F0_γ
                        .global          proc_radiation$2F0_ω
                        sub              rsp, 4624
                        mov              [rsp + 4600], rcx
                        mov              [rsp + 4608], rdx
                        mov              [rsp + 4616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4416
                        mov              edx, 4592
                        call             rt_jmp_frame_lexprep2@PLT
proc_radiation$2F0_α_body:
                        lea              rax, [rip + n454_suspend_β]
                        mov              qword ptr [rbp + 4416], rax
#-----------------------------------------------------------------------------------------------------------------------
n328_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx455_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx455_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx455_101
.Lx455_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx455_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n329_var_ref_α
n328_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4576]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                                                                                        jmp   n330_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx459_20
                        mov              rax, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx459_21
.Lx459_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        call             rt_arg_stage@PLT
.Lx459_21:
                        mov              rdi, qword ptr [rip + .Lx459_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx459_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx459_3]
                        lea              rdx, [rip + .Lx459_4]
                                                                                        jmp   rax
.Lx459_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx459_2
.Lx459_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx459_2
.Lx459_1:
                        call             rt_faildescr@PLT
.Lx459_2:
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n331_lit_string_α
n330_call_proc_staged_β:
                                                                                        jmp   n332_op11_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "gen_state/1"
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:
                        mov              qword ptr [rbp + 4304], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n333_lit_string_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "=<"
#-----------------------------------------------------------------------------------------------------------------------
n332_op11_α:
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
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   proc_radiation$2F0_ω
n332_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 4192], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n334_lit_string_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:
                        mov              qword ptr [rbp + 4096], 1
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n335_lit_real_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_real_α:
                        mov              qword ptr [rbp + 3984], 7
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n336_lit_string_α
.Lx464_0:
                        .quad            4599075939470750515
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 4000], 1
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n337_op11_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n337_op11_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 4072], rax
                        lea              rdi, [rbp + 4032]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n338_lit_string_α
n337_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rbp + 3968], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 3976], rax
                                                                                        jmp   n339_lit_string_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n340_lit_real_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_real_α:
                        mov              qword ptr [rbp + 3760], 7
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n341_lit_string_α
.Lx469_0:
                        .quad            4591870180066957722
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 3776], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n342_op11_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n342_op11_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3808]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n343_lit_string_α
n342_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n344_op11_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n344_op11_α:
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3944], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n345_op11_α
n344_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4136], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 4152], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 4168], rax
                        lea              rdi, [rbp + 4128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n346_lit_real_α
n345_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_real_α:
                        mov              qword ptr [rbp + 4208], 7
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n347_op11_α
.Lx475_0:
                        .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n347_op11_α:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4248], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4264], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4280], rax
                        lea              rdi, [rbp + 4240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n348_var_ref_α
n347_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4576]
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                                                                                        jmp   n349_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4560]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n350_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx482_20
                        mov              rax, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx482_21
.Lx482_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4224]
                        mov              rdx, qword ptr [rbp + 4232]
                        call             rt_arg_stage@PLT
.Lx482_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx482_22
                        mov              rax, qword ptr [rbp + 4320]
                        mov              rdx, qword ptr [rbp + 4328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx482_23
.Lx482_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4320]
                        mov              rdx, qword ptr [rbp + 4328]
                        call             rt_arg_stage@PLT
.Lx482_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx482_24
                        mov              rax, qword ptr [rbp + 4336]
                        mov              rdx, qword ptr [rbp + 4344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx482_25
.Lx482_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 4336]
                        mov              rdx, qword ptr [rbp + 4344]
                        call             rt_arg_stage@PLT
.Lx482_25:
                        mov              rdi, qword ptr [rip + .Lx482_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx482_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx482_3]
                        lea              rdx, [rip + .Lx482_4]
                                                                                        jmp   rax
.Lx482_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx482_2
.Lx482_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx482_2
.Lx482_1:
                        call             rt_faildescr@PLT
.Lx482_2:
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 99
                                                                                        je    n330_call_proc_staged_β
                                                                                        jmp   n351_lit_string_α
n350_call_proc_staged_β:
                                                                                        jmp   n330_call_proc_staged_β
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:
                        mov              qword ptr [rbp + 3616], 1
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n352_lit_string_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n353_lit_string_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n354_lit_real_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_real_α:
                        mov              qword ptr [rbp + 3296], 7
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n355_lit_string_α
.Lx486_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n356_op11_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3384], rax
                        lea              rdi, [rbp + 3344]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n357_lit_string_α
n356_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n358_lit_string_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n359_lit_real_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_real_α:
                        mov              qword ptr [rbp + 3072], 7
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n360_lit_string_α
.Lx491_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n361_op11_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n362_lit_string_α
n361_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n363_op11_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n364_op11_α
n363_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n364_op11_α:
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3480], rax
                        lea              rdi, [rbp + 3440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n365_lit_integer_α
n364_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:
                        mov              qword ptr [rbp + 3520], 6
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n366_op11_α
.Lx497_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3592], rax
                        lea              rdi, [rbp + 3552]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n367_var_ref_α
n366_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4560]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n368_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4544]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n369_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n369_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx504_20
                        mov              rax, qword ptr [rbp + 3536]
                        mov              rdx, qword ptr [rbp + 3544]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx504_21
.Lx504_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3536]
                        mov              rdx, qword ptr [rbp + 3544]
                        call             rt_arg_stage@PLT
.Lx504_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx504_22
                        mov              rax, qword ptr [rbp + 3632]
                        mov              rdx, qword ptr [rbp + 3640]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx504_23
.Lx504_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3632]
                        mov              rdx, qword ptr [rbp + 3640]
                        call             rt_arg_stage@PLT
.Lx504_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx504_24
                        mov              rax, qword ptr [rbp + 3648]
                        mov              rdx, qword ptr [rbp + 3656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx504_25
.Lx504_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 3648]
                        mov              rdx, qword ptr [rbp + 3656]
                        call             rt_arg_stage@PLT
.Lx504_25:
                        mov              rdi, qword ptr [rip + .Lx504_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx504_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx504_3]
                        lea              rdx, [rip + .Lx504_4]
                                                                                        jmp   rax
.Lx504_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx504_2
.Lx504_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx504_2
.Lx504_1:
                        call             rt_faildescr@PLT
.Lx504_2:
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n350_call_proc_staged_β
                                                                                        jmp   n370_lit_string_α
n369_call_proc_staged_β:
                                                                                        jmp   n350_call_proc_staged_β
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n371_lit_string_α
.Lx505_0:
                        .quad            .Lx505_0_s
.Lx505_0_s:
                        .string          ">="
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n372_lit_string_α
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 2720], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n373_lit_real_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_real_α:
                        mov              qword ptr [rbp + 2608], 7
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n374_lit_string_α
.Lx508_0:
                        .quad            4603579539098121011
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n375_op11_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
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
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n376_lit_string_α
n375_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n377_lit_string_α
.Lx511_0:
                        .quad            .Lx511_0_s
.Lx511_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n378_lit_real_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_real_α:
                        mov              qword ptr [rbp + 2384], 7
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n379_lit_string_α
.Lx513_0:
                        .quad            4600877379321698714
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n380_op11_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n380_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n381_lit_string_α
n380_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n382_op11_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n383_op11_α
n382_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_op11_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2792], rax
                        lea              rdi, [rbp + 2752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n384_lit_integer_α
n383_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:
                        mov              qword ptr [rbp + 2832], 6
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n385_op11_α
.Lx519_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n385_op11_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n386_var_ref_α
n385_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4544]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n387_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4528]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n388_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_20
                        mov              rax, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx526_21
.Lx526_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2848]
                        mov              rdx, qword ptr [rbp + 2856]
                        call             rt_arg_stage@PLT
.Lx526_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_22
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx526_23
.Lx526_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        call             rt_arg_stage@PLT
.Lx526_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_24
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx526_25
.Lx526_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        call             rt_arg_stage@PLT
.Lx526_25:
                        mov              rdi, qword ptr [rip + .Lx526_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx526_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx526_3]
                        lea              rdx, [rip + .Lx526_4]
                                                                                        jmp   rax
.Lx526_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_1:
                        call             rt_faildescr@PLT
.Lx526_2:
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n369_call_proc_staged_β
                                                                                        jmp   n389_lit_string_α
n388_call_proc_staged_β:
                                                                                        jmp   n369_call_proc_staged_β
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n390_lit_string_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          ">="
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n391_lit_string_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n392_lit_string_α
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n393_op11_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n393_op11_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2104], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n394_lit_integer_α
n393_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n395_op11_α
.Lx532_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n395_op11_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2216], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n396_var_ref_α
n395_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4528]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n397_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4512]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n398_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n398_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx539_20
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx539_21
.Lx539_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        call             rt_arg_stage@PLT
.Lx539_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx539_22
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx539_23
.Lx539_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx539_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx539_24
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx539_25
.Lx539_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        call             rt_arg_stage@PLT
.Lx539_25:
                        mov              rdi, qword ptr [rip + .Lx539_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx539_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx539_3]
                        lea              rdx, [rip + .Lx539_4]
                                                                                        jmp   rax
.Lx539_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx539_2
.Lx539_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx539_2
.Lx539_1:
                        call             rt_faildescr@PLT
.Lx539_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n388_call_proc_staged_β
                                                                                        jmp   n399_lit_string_α
n398_call_proc_staged_β:
                                                                                        jmp   n388_call_proc_staged_β
.Lx539_0:
                        .quad            .Lx539_0_s
.Lx539_0_s:
                        .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n400_lit_string_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          ">="
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n401_lit_string_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n402_lit_string_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n403_op11_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n403_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1712]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n404_lit_integer_α
n403_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n405_op11_α
.Lx545_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n405_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n406_var_ref_α
n405_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4512]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n407_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4496]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n408_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_20
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx552_21
.Lx552_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        call             rt_arg_stage@PLT
.Lx552_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_22
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx552_23
.Lx552_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx552_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_24
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx552_25
.Lx552_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        call             rt_arg_stage@PLT
.Lx552_25:
                        mov              rdi, qword ptr [rip + .Lx552_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx552_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx552_3]
                        lea              rdx, [rip + .Lx552_4]
                                                                                        jmp   rax
.Lx552_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx552_2
.Lx552_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx552_2
.Lx552_1:
                        call             rt_faildescr@PLT
.Lx552_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n398_call_proc_staged_β
                                                                                        jmp   n409_lit_string_α
n408_call_proc_staged_β:
                                                                                        jmp   n398_call_proc_staged_β
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n410_lit_string_α
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n411_lit_real_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_real_α:
                        mov              qword ptr [rbp + 1328], 7
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n412_lit_string_α
.Lx555_0:
                        .quad            4600877379321698714
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n413_op11_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n414_lit_string_α
n413_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n415_lit_string_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n416_lit_real_α
.Lx559_0:
                        .quad            .Lx559_0_s
.Lx559_0_s:
                        .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_real_α:
                        mov              qword ptr [rbp + 1104], 7
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n417_lit_string_α
.Lx560_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n418_op11_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n419_lit_string_α
n418_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n420_op11_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    proc_radiation$2F0_ω
                                                                                        jmp   n421_op11_α
n420_op11_β:
                                                                                        jmp   proc_radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n422_var_ref_α
n421_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4496]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n423_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n424_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n424_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx571_20
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx571_21
.Lx571_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        call             rt_arg_stage@PLT
.Lx571_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx571_22
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx571_23
.Lx571_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        call             rt_arg_stage@PLT
.Lx571_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx571_24
                        mov              rax, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx571_25
.Lx571_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1568]
                        mov              rdx, qword ptr [rbp + 1576]
                        call             rt_arg_stage@PLT
.Lx571_25:
                        mov              rdi, qword ptr [rip + .Lx571_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx571_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx571_3]
                        lea              rdx, [rip + .Lx571_4]
                                                                                        jmp   rax
.Lx571_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx571_2
.Lx571_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx571_2
.Lx571_1:
                        call             rt_faildescr@PLT
.Lx571_2:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n408_call_proc_staged_β
                                                                                        jmp   n425_var_ref_α
n424_call_proc_staged_β:
                                                                                        jmp   n408_call_proc_staged_β
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "minimize/3"
#-----------------------------------------------------------------------------------------------------------------------
n425_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n426_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n427_lit_integer_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "rdiv"
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n428_lit_integer_α
.Lx575_0:
                        .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n429_op11_α
.Lx576_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n429_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n430_op11_α
n429_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n424_call_proc_staged_β
                                                                                        jmp   n431_var_ref_α
n430_op11_β:
                                                                                        jmp   n424_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n432_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n433_lit_integer_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "rdiv"
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n434_lit_integer_α
.Lx582_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:
                        mov              qword ptr [rbp + 704], 6
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n435_op11_α
.Lx583_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n436_op11_α
n435_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n436_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n424_call_proc_staged_β
                                                                                        jmp   n437_var_ref_α
n436_op11_β:
                                                                                        jmp   n424_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n438_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n439_lit_integer_α
.Lx588_0:
                        .quad            .Lx588_0_s
.Lx588_0_s:
                        .string          "rdiv"
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n440_lit_integer_α
.Lx589_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n441_op11_α
.Lx590_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n332_op11_α
                                                                                        jmp   n442_op11_α
n441_op11_β:
                                                                                        jmp   n332_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n442_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n424_call_proc_staged_β
                                                                                        jmp   n443_var_ref_α
n442_op11_β:
                                                                                        jmp   n424_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n444_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4480]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n445_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n445_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx598_21
.Lx598_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx598_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx598_23
.Lx598_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx598_23:
                        mov              rdi, qword ptr [rip + .Lx598_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx598_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx598_3]
                        lea              rdx, [rip + .Lx598_4]
                                                                                        jmp   rax
.Lx598_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx598_2
.Lx598_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx598_2
.Lx598_1:
                        call             rt_faildescr@PLT
.Lx598_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n424_call_proc_staged_β
                                                                                        jmp   n446_var_ref_α
n445_call_proc_staged_β:
                                                                                        jmp   n424_call_proc_staged_β
.Lx598_0:
                        .quad            .Lx598_0_s
.Lx598_0_s:
                        .string          "objective/2"
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n447_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n448_var_ref_α
.Lx601_0:
                        .quad            .Lx601_0_s
.Lx601_0_s:
                        .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4464]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n449_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n449_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx605_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx605_21
.Lx605_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx605_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx605_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx605_23
.Lx605_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx605_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx605_24
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx605_25
.Lx605_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx605_25:
                        mov              rdi, qword ptr [rip + .Lx605_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx605_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx605_3]
                        lea              rdx, [rip + .Lx605_4]
                                                                                        jmp   rax
.Lx605_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx605_2
.Lx605_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx605_2
.Lx605_1:
                        call             rt_faildescr@PLT
.Lx605_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n445_call_proc_staged_β
                                                                                        jmp   n450_var_ref_α
n449_call_proc_staged_β:
                                                                                        jmp   n445_call_proc_staged_β
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "variable_value/3"
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4432]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n451_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n452_var_ref_α
.Lx608_0:
                        .quad            .Lx608_0_s
.Lx608_0_s:
                        .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4448]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n453_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx612_21
.Lx612_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx612_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_22
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx612_23
.Lx612_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx612_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx612_24
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx612_25
.Lx612_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx612_25:
                        mov              rdi, qword ptr [rip + .Lx612_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx612_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx612_3]
                        lea              rdx, [rip + .Lx612_4]
                                                                                        jmp   rax
.Lx612_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx612_2
.Lx612_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx612_2
.Lx612_1:
                        call             rt_faildescr@PLT
.Lx612_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n449_call_proc_staged_β
                                                                                        jmp   n454_suspend_α
n453_call_proc_staged_β:
                                                                                        jmp   n449_call_proc_staged_β
.Lx612_0:
                        .quad            .Lx612_0_s
.Lx612_0_s:
                        .string          "variable_value/3"
#-----------------------------------------------------------------------------------------------------------------------
n454_suspend_α:
                        lea              rax, [rip + n454_suspend_β]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_radiation$2F0_γ
n454_suspend_β:
                                                                                        jmp   n453_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_radiation$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_radiation$2F0_β:
                                                                                        jmp   qword ptr [rbp + 4416]
#-----------------------------------------------------------------------------------------------------------------------
proc_radiation$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_radiation$2F0_res]
                        push             rax
                        mov              rax, [rbp + 4600]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_radiation$2F0_ω:
                        mov              rax, [rbp + 4608]
                        lea              rsp, [rbp + 4624]
                        mov              rbp, [rbp + 4616]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "transport/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_transport$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "linprog/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_linprog$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "radiation/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_radiation$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 4592
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
n615_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n616_lit_string_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n617_op11_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "clp/simplex"
#-----------------------------------------------------------------------------------------------------------------------
n617_op11_α:
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
                                                                                        jmp   n618_call_proc_staged_α
n617_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n618_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx623_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx623_21
.Lx623_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx623_21:
                        mov              rdi, qword ptr [rip + .Lx623_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx623_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx623_3]
                        lea              rdx, [rip + .Lx623_4]
                                                                                        jmp   rax
.Lx623_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx623_2
.Lx623_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx623_2
.Lx623_1:
                        call             rt_faildescr@PLT
.Lx623_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n618_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
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
