                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__transport$2F0:
                        sub              rsp, 4544
                        mov              qword ptr [rsp + 4520], rcx
                        mov              qword ptr [rsp + 4528], rdx
                        mov              qword ptr [rsp + 4536], rsp
                        mov              rdi, rsp
                        mov              esi, 4464
                        mov              edx, 4512
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
transport$2F0_α_body:
                        lea              rax, [rip + n120_suspend_β]
                        mov              qword ptr [rsp + 4464], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx122_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx122_101
.Lx122_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx122_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx122_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx122_101
.Lx122_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx122_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n2_lit_integer_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n3_lit_string_α
.Lx124_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n4_lit_integer_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n5_lit_string_α
.Lx126_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n6_lit_integer_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n7_lit_string_α
.Lx128_0:               .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 2
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n8_call_builtin_prolog_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 1984]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_call_builtin_prolog_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_call_builtin_prolog_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2216], rax
                        lea              rdi, [rsp + 2208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_lit_string_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n12_lit_integer_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n13_lit_string_α
.Lx134_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n14_lit_integer_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n15_lit_string_α
.Lx136_0:               .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n16_lit_integer_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n17_lit_string_α
.Lx138_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n18_lit_integer_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n19_lit_string_α
.Lx140_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 2
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n20_call_builtin_prolog_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_call_builtin_prolog_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2456], rax
                        lea              rdi, [rsp + 2448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2568], rax
                        lea              rdi, [rsp + 2560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_call_builtin_prolog_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2680], rax
                        lea              rdi, [rsp + 2672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_lit_string_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n25_lit_string_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 4336], 2            # result
                        mov              dword ptr [rsp + 4340], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n26_lit_integer_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 4248], rax;         jmp   n27_lit_string_α
.Lx148_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 4224], 2            # result
                        mov              dword ptr [rsp + 4228], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n28_lit_integer_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 4128], 3            # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n29_lit_string_α
.Lx150_0:               .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 4112], 2            # result
                        mov              dword ptr [rsp + 4116], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n30_lit_integer_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 4016], 3            # result
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 4024], rax;         jmp   n31_lit_string_α
.Lx152_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n32_lit_integer_α
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rsp + 3904], 3            # result
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 3912], rax;         jmp   n33_lit_string_α
.Lx154_0:               .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 3888], 2            # result
                        mov              dword ptr [rsp + 3892], 2
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n34_call_builtin_prolog_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3968], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3976], rax
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 3960], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 3944], rax
                        lea              rdi, [rsp + 3936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_call_builtin_prolog_α
n34_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 4088], rax
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 4072], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4056], rax
                        lea              rdi, [rsp + 4048]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4184], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4168], rax
                        lea              rdi, [rsp + 4160]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4144], rax
                        mov              qword ptr [rsp + 4152], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_call_builtin_prolog_α
n36_call_builtin_prolog_β:
                        mov              r11, 37;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4312], rax
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4296], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4280], rax
                        lea              rdi, [rsp + 4272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_lit_string_α
n37_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n39_lit_string_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 3776], 2            # result
                        mov              dword ptr [rsp + 3780], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n40_lit_integer_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 41
                        mov              qword ptr [rsp + 3680], 3            # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 3688], rax;         jmp   n41_lit_string_α
.Lx162_0:               .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 3664], 2            # result
                        mov              dword ptr [rsp + 3668], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n42_lit_integer_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rsp + 3568], 3            # result
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n43_lit_string_α
.Lx164_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 3552], 2            # result
                        mov              dword ptr [rsp + 3556], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n44_lit_integer_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 45
                        mov              qword ptr [rsp + 3456], 3            # result
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n45_lit_string_α
.Lx166_0:               .quad            60
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 3440], 2            # result
                        mov              dword ptr [rsp + 3444], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n46_lit_integer_α
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rsp + 3344], 3            # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 3352], rax;         jmp   n47_lit_string_α
.Lx168_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], 2
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n48_call_builtin_prolog_α
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3416], rax
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3384], rax
                        lea              rdi, [rsp + 3376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_call_builtin_prolog_α
n48_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3528], rax
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3496], rax
                        lea              rdi, [rsp + 3488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_call_builtin_prolog_α
n49_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3632], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3640], rax
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3624], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3608], rax
                        lea              rdi, [rsp + 3600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_call_builtin_prolog_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3752], rax
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3720], rax
                        lea              rdi, [rsp + 3712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3696], rax
                        mov              qword ptr [rsp + 3704], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_lit_string_α
n51_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 3312], 2            # result
                        mov              dword ptr [rsp + 3316], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n53_lit_string_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 54
                        mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n54_lit_integer_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 55
                        mov              qword ptr [rsp + 3120], 3            # result
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n55_lit_string_α
.Lx176_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n56_lit_integer_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              r11, 57
                        mov              qword ptr [rsp + 3008], 3            # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n57_lit_string_α
.Lx178_0:               .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n58_lit_integer_α
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rsp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n59_lit_string_α
.Lx180_0:               .quad            70
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 2880], 2            # result
                        mov              dword ptr [rsp + 2884], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n60_lit_integer_α
.Lx181_0:               .quad            .Lx181_0_s
.Lx181_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rsp + 2784], 3            # result
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n61_lit_string_α
.Lx182_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              r11, 62
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 2
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n62_call_builtin_prolog_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2856], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2840], rax
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2824], rax
                        lea              rdi, [rsp + 2816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_call_builtin_prolog_α
n62_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_call_builtin_prolog_α
n63_call_builtin_prolog_β:
                        mov              r11, 64;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 3080], rax
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3048], rax
                        lea              rdi, [rsp + 3040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n65_call_builtin_prolog_α
n64_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3192], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3176], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3160], rax
                        lea              rdi, [rsp + 3152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3136], rax
                        mov              qword ptr [rsp + 3144], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n66_lit_string_α
n65_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 2
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n67_call_builtin_prolog_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 3288], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3256], rax
                        lea              rdi, [rsp + 3248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_call_builtin_prolog_α
n67_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3696]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3704]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_call_builtin_prolog_α
n68_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 4408], rax
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4376], rax
                        lea              rdi, [rsp + 4368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_var_ref_α
n69_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx;         jmp   n71_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_proc_staged_α: mov              r11, 72
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx195_20
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx195_21
.Lx195_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx195_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx195_22
                        mov              rax, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx195_23
.Lx195_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2656]
                        mov              rdx, qword ptr [rsp + 2664]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx195_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx195_24
                        mov              rax, qword ptr [rsp + 4352]
                        mov              rdx, qword ptr [rsp + 4360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx195_25
.Lx195_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 4352]
                        mov              rdx, qword ptr [rsp + 4360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx195_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx195_26
                        mov              rax, qword ptr [rsp + 4448]
                        mov              rdx, qword ptr [rsp + 4456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx195_27
.Lx195_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 4448]
                        mov              rdx, qword ptr [rsp + 4456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx195_27:              mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx195_1
                        mov              rdi, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx195_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx195_3]
                        push             rcx
                        lea              rcx, [rip + .Lx195_3]
                        lea              rdx, [rip + .Lx195_4];               jmp   rax
.Lx195_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx195_2
.Lx195_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx195_2
.Lx195_1:               call             rt_faildescr@PLT
.Lx195_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx195_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
.Lx195_29:              mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                                                                              jmp   n72_var_ref_α
n71_call_proc_staged_β: mov              r11, 72;                             jmp   n121_call_builtin_prolog_α
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "transportation/4"
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n74_lit_string_α
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n75_lit_integer_α
.Lx199_0:               .quad            .Lx199_0_s
.Lx199_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      mov              r11, 76
                        mov              qword ptr [rsp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n76_lit_string_α
.Lx200_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n77_lit_integer_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      mov              r11, 78
                        mov              qword ptr [rsp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n78_lit_string_α
.Lx202_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 79
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n79_lit_integer_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              r11, 80
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n80_lit_string_α
.Lx204_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n81_lit_integer_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 82
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n82_lit_string_α
.Lx206_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 2
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n83_call_builtin_prolog_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_call_builtin_prolog_α
n83_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_call_builtin_prolog_α
n84_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_call_builtin_prolog_α
n85_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              r11, 87
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_lit_string_α
n86_call_builtin_prolog_β:
                        mov              r11, 87;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 88
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n88_lit_string_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n89_lit_integer_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              r11, 90
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n90_lit_string_α
.Lx214_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 91
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n91_lit_integer_α
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              r11, 92
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n92_lit_string_α
.Lx216_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 93
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n93_lit_integer_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 94
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n94_lit_string_α
.Lx218_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 95
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n95_lit_integer_α
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              r11, 96
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n96_lit_string_α
.Lx220_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 97
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 2
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n97_call_builtin_prolog_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_call_builtin_prolog_α
n97_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n99_call_builtin_prolog_α
n98_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_call_builtin_prolog_α
n99_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              r11, 101
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_lit_string_α
n100_call_builtin_prolog_β:
                        mov              r11, 101;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n102_lit_string_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n103_lit_integer_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n104_lit_string_α
.Lx228_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n105_lit_integer_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     mov              r11, 106
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n106_lit_string_α
.Lx230_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n107_lit_integer_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n108_lit_string_α
.Lx232_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n109_lit_integer_α
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              r11, 110
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n110_lit_string_α
.Lx234_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 111
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n111_call_builtin_prolog_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 112
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                        mov              r11, 112;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_call_builtin_prolog_α
n112_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_call_builtin_prolog_α
n113_call_builtin_prolog_β:
                        mov              r11, 114;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_lit_string_α
n114_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 2
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n116_call_builtin_prolog_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_call_builtin_prolog_α
n116_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              r11, 118
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_call_builtin_prolog_α
n117_call_builtin_prolog_β:
                        mov              r11, 118;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1768], rax
                        lea              rdi, [rsp + 1760]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n121_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_call_builtin_prolog_α
n118_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 120
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn245:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn245]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n71_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_suspend_α
n119_call_builtin_prolog_β:
                        mov              r11, 120;                            jmp   n71_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n120_suspend_α:         mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx247_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4464];         jmp   rax
.Lx247_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n120_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n120_suspend_β]
                        mov              qword ptr [rsp + 4464], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   transport$2F0_γ
n120_suspend_β:         mov              r11, 121;                            jmp   n71_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              r11, 122
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    transport$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   transport$2F0_ω
n121_call_builtin_prolog_β:
                        mov              r11, 122;                            jmp   transport$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
transport$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
transport$2F0_β:
                                                                              jmp   n120_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
transport$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx248_50
                        mov              qword ptr [rsp + 4464], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4464];         jmp   rax
.Lx248_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4520]
                        add              rsp, 4544;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
transport$2F0_ω:
                        mov              rcx, qword ptr [rsp + 4528]
                        add              rsp, 4544;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__linprog$2F0:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
linprog$2F0_α_body:
                        lea              rax, [rip + n252_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              r11, 123
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx254_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx254_101
.Lx254_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx254_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx254_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx254_101
.Lx254_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx254_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    linprog$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n250_call_proc_staged_α
n249_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   linprog$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        mov              r11, 124
                        mov              qword ptr [rsp + 144], 0
                        lea              rax, [rip + .Lx256_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx256_1
                        lea              rcx, [rip + .Lx256_3]
                        lea              rdx, [rip + .Lx256_4];               jmp   rax
.Lx256_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx256_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx256_2
.Lx256_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx256_2
.Lx256_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx256_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx256_2
.Lx256_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx256_2
.Lx256_1:               call             rt_faildescr@PLT
.Lx256_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx256_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx256_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                                                                              jmp   n251_call_proc_staged_α
n250_call_proc_staged_β:
                        mov              r11, 124
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n253_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 16
                        mov              r8d, 4416
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n253_call_builtin_prolog_α
                        lea              r8, [rip + .Lx256_7]
                        push             r8
                        lea              rcx, [rip + .Lx256_3]
                        lea              rdx, [rip + .Lx256_4];               jmp   rax
.Lx256_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n253_call_builtin_prolog_α
                                                                              jmp   n251_call_proc_staged_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "radiation/0"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_proc_staged_α:
                        mov              r11, 125
                        mov              qword ptr [rsp + 96], 0
                        lea              rax, [rip + .Lx258_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx258_1
                        lea              rcx, [rip + .Lx258_3]
                        lea              rdx, [rip + .Lx258_4];               jmp   rax
.Lx258_3:               mov              qword ptr [rsp + 104], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx258_5
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx258_2
.Lx258_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx258_2
.Lx258_4:               mov              rax, qword ptr [rsp + 96]
                        test             rax, rax;                            jne   .Lx258_6
                        mov              qword ptr [rsp + 96], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx258_2
.Lx258_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx258_2
.Lx258_1:               call             rt_faildescr@PLT
.Lx258_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx258_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx258_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n250_call_proc_staged_β
                                                                              jmp   n252_suspend_α
n251_call_proc_staged_β:
                        mov              r11, 125
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 96], 0
                        lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n250_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              ecx, 16
                        mov              r8d, 4464
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n250_call_proc_staged_β
                        lea              r8, [rip + .Lx258_7]
                        push             r8
                        lea              rcx, [rip + .Lx258_3]
                        lea              rdx, [rip + .Lx258_4];               jmp   rax
.Lx258_7:               add              rsp, 8
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n250_call_proc_staged_β
                                                                              jmp   n252_suspend_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "transport/0"
#-----------------------------------------------------------------------------------------------------------------------
n252_suspend_α:         mov              r11, 126
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx260_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx260_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n252_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n252_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   linprog$2F0_γ
n252_suspend_β:         mov              r11, 126;                            jmp   n251_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_prolog_α:
                        mov              r11, 127
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    linprog$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   linprog$2F0_ω
n253_call_builtin_prolog_β:
                        mov              r11, 127;                            jmp   linprog$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
linprog$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
linprog$2F0_β:
                                                                              jmp   n252_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
linprog$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx261_50
                        mov              qword ptr [rsp + 176], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx261_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
linprog$2F0_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_2$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n267_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_prolog_α:
                        mov              r11, 128
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx269_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx269_101
.Lx269_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx269_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx269_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx269_101
.Lx269_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx269_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n263_lit_string_α
n262_call_builtin_prolog_β:
                        mov              r11, 128;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n264_lit_string_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 11
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n265_call_builtin_prolog_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "clp/simplex"
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_prolog_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n268_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n266_call_proc_staged_α
n265_call_builtin_prolog_β:
                        mov              r11, 131;                            jmp   n268_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_proc_staged_α:
                        mov              r11, 132
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx274_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx274_21
.Lx274_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx274_21:              mov              rdi, qword ptr [rip + .Lx274_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx274_1
                        mov              rdi, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx274_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx274_3]
                        push             rcx
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4];               jmp   rax
.Lx274_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx274_2
.Lx274_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx274_2
.Lx274_1:               call             rt_faildescr@PLT
.Lx274_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx274_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx274_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n268_call_builtin_prolog_α
                                                                              jmp   n267_suspend_α
n266_call_proc_staged_β:
                        mov              r11, 132;                            jmp   n268_call_builtin_prolog_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n267_suspend_α:         mov              r11, 133
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx276_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx276_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n267_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n267_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n267_suspend_β:         mov              r11, 133;                            jmp   n266_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_2$2F0_ω
n268_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n267_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx277_50
                        mov              qword ptr [rsp + 224], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx277_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n288_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n278_call_builtin_prolog_α:
                        mov              r11, 135
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx290_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx290_101
.Lx290_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx290_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx290_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx290_101
.Lx290_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx290_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n279_lit_string_α
n278_call_builtin_prolog_β:
                        mov              r11, 135;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 7
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n280_lit_string_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "linprog"
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n281_lit_string_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n282_lit_string_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 7
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n283_lit_integer_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "linprog"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n284_call_builtin_prolog_α
.Lx295_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n285_lit_string_α
n284_call_builtin_prolog_β:
                        mov              r11, 141;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 2
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n286_call_builtin_prolog_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_prolog_α:
                        mov              r11, 143
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n289_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n287_call_proc_staged_α
n286_call_builtin_prolog_β:
                        mov              r11, 143;                            jmp   n289_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_proc_staged_α:
                        mov              r11, 144
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx300_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx300_21
.Lx300_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx300_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx300_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx300_23
.Lx300_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx300_23:              mov              rdi, qword ptr [rip + .Lx300_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx300_1
                        mov              rdi, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx300_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx300_3]
                        push             rcx
                        lea              rcx, [rip + .Lx300_3]
                        lea              rdx, [rip + .Lx300_4];               jmp   rax
.Lx300_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx300_2
.Lx300_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx300_2
.Lx300_1:               call             rt_faildescr@PLT
.Lx300_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx300_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx300_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n289_call_builtin_prolog_α
                                                                              jmp   n288_suspend_α
n287_call_proc_staged_β:
                        mov              r11, 144;                            jmp   n289_call_builtin_prolog_α
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n288_suspend_α:         mov              r11, 145
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx302_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx302_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n288_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n288_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n288_suspend_β:         mov              r11, 145;                            jmp   n287_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_0$2F0_ω
n289_call_builtin_prolog_β:
                        mov              r11, 146;                            jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n288_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx303_50
                        mov              qword ptr [rsp + 400], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx303_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 400
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n313_suspend_β]
                        mov              qword ptr [rsp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              r11, 147
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx315_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx315_101
.Lx315_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx315_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx315_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx315_101
.Lx315_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx315_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_lit_string_α
n304_call_builtin_prolog_β:
                        mov              r11, 147;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n306_lit_string_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n307_lit_string_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 4
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n308_lit_string_α
.Lx318_0:               .quad            .Lx318_0_s
.Lx318_0_s:             .string          "user"
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 16
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n309_call_builtin_prolog_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "file_search_path"
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_prolog_α:
                        mov              r11, 152
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n310_lit_integer_α
n309_call_builtin_prolog_β:
                        mov              r11, 152;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n311_call_builtin_prolog_α
.Lx321_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_prolog_α:
                        mov              r11, 154
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n314_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n312_call_proc_staged_α
n311_call_builtin_prolog_β:
                        mov              r11, 154;                            jmp   n314_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_proc_staged_α:
                        mov              r11, 155
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx324_20
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx324_21
.Lx324_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx324_21:              mov              rdi, qword ptr [rip + .Lx324_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx324_1
                        mov              rdi, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx324_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx324_3]
                        push             rcx
                        lea              rcx, [rip + .Lx324_3]
                        lea              rdx, [rip + .Lx324_4];               jmp   rax
.Lx324_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx324_2
.Lx324_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx324_2
.Lx324_1:               call             rt_faildescr@PLT
.Lx324_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx324_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx324_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n314_call_builtin_prolog_α
                                                                              jmp   n313_suspend_α
n312_call_proc_staged_β:
                        mov              r11, 155;                            jmp   n314_call_builtin_prolog_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n313_suspend_α:         mov              r11, 156
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx326_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx326_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n313_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n313_suspend_β]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n313_suspend_β:         mov              r11, 156;                            jmp   n312_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_prolog_α:
                        mov              r11, 157
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_1$2F0_ω
n314_call_builtin_prolog_β:
                        mov              r11, 157;                            jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n313_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx327_50
                        mov              qword ptr [rsp + 368], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 368];          jmp   rax
.Lx327_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__radiation$2F0:
                        sub              rsp, 4640
                        mov              qword ptr [rsp + 4616], rcx
                        mov              qword ptr [rsp + 4624], rdx
                        mov              qword ptr [rsp + 4632], rsp
                        mov              rdi, rsp
                        mov              esi, 4416
                        mov              edx, 4608
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
radiation$2F0_α_body:
                        lea              rax, [rip + n453_suspend_β]
                        mov              qword ptr [rsp + 4416], rax
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
                        mov              r11, 158
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx455_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx455_101
.Lx455_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx455_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx455_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx455_101
.Lx455_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx455_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n329_var_ref_α
n328_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4576]
                        mov              qword ptr [rsp + 4400], rax
                        mov              qword ptr [rsp + 4408], rdx;         jmp   n330_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_proc_staged_α:
                        mov              r11, 160
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx459_20
                        mov              rax, qword ptr [rsp + 4400]
                        mov              rdx, qword ptr [rsp + 4408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx459_21
.Lx459_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 4400]
                        mov              rdx, qword ptr [rsp + 4408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx459_21:              mov              rdi, qword ptr [rip + .Lx459_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx459_1
                        mov              rdi, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx459_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx459_3]
                        push             rcx
                        lea              rcx, [rip + .Lx459_3]
                        lea              rdx, [rip + .Lx459_4];               jmp   rax
.Lx459_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx459_2
.Lx459_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx459_2
.Lx459_1:               call             rt_faildescr@PLT
.Lx459_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx459_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4352]
                        mov              rdx, qword ptr [rsp + 4360]
.Lx459_29:              mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                                                                              jmp   n331_lit_string_α
n330_call_proc_staged_β:
                        mov              r11, 160;                            jmp   n454_call_builtin_prolog_α
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          "gen_state/1"
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 4304], 2            # result
                        mov              dword ptr [rsp + 4308], 2
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 4312], rax;         jmp   n332_lit_string_α
.Lx460_0:               .quad            .Lx460_0_s
.Lx460_0_s:             .string          "=<"
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rsp + 4192], 2            # result
                        mov              dword ptr [rsp + 4196], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n333_lit_string_α
.Lx461_0:               .quad            .Lx461_0_s
.Lx461_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 4096], 2            # result
                        mov              dword ptr [rsp + 4100], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n334_lit_real_α
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_real_α:        mov              r11, 164
                        mov              qword ptr [rsp + 3984], 5            # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n335_lit_string_α
.Lx463_0:               .quad            4599075939470750515
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 4000], 2            # result
                        mov              dword ptr [rsp + 4004], 2
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n336_call_builtin_prolog_α
.Lx464_0:               .quad            .Lx464_0_s
.Lx464_0_s:             .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n336_call_builtin_prolog_α:
                        mov              r11, 166
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 4072], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 4056], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4040], rax
                        lea              rdi, [rsp + 4032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n337_lit_string_α
n336_call_builtin_prolog_β:
                        mov              r11, 166;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 3968], 2            # result
                        mov              dword ptr [rsp + 3972], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 3976], rax;         jmp   n338_lit_string_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n339_lit_real_α
.Lx467_0:               .quad            .Lx467_0_s
.Lx467_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_real_α:        mov              r11, 169
                        mov              qword ptr [rsp + 3760], 5            # result
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n340_lit_string_α
.Lx468_0:               .quad            4591870180066957722
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 3776], 2            # result
                        mov              dword ptr [rsp + 3780], 2
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n341_call_builtin_prolog_α
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n341_call_builtin_prolog_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n342_lit_string_α
n341_call_builtin_prolog_β:
                        mov              r11, 171;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rsp + 3744], 2            # result
                        mov              dword ptr [rsp + 3748], 2
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n343_call_builtin_prolog_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_prolog_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3928], rax
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3904], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3912], rax
                        lea              rdi, [rsp + 3904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n344_call_builtin_prolog_α
n343_call_builtin_prolog_β:
                        mov              r11, 173;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_call_builtin_prolog_α:
                        mov              r11, 174
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 4168], rax
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 4152], rax
                        mov              rax, qword ptr [rsp + 4192]
                        mov              qword ptr [rsp + 4128], rax
                        mov              rax, qword ptr [rsp + 4200]
                        mov              qword ptr [rsp + 4136], rax
                        lea              rdi, [rsp + 4128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n345_lit_real_α
n344_call_builtin_prolog_β:
                        mov              r11, 174;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_real_α:        mov              r11, 175
                        mov              qword ptr [rsp + 4208], 5            # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n346_call_builtin_prolog_α
.Lx474_0:               .quad            4613262278296967578
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_prolog_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4280], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4264], rax
                        mov              rax, qword ptr [rsp + 4304]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4312]
                        mov              qword ptr [rsp + 4248], rax
                        lea              rdi, [rsp + 4240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n347_var_ref_α
n346_call_builtin_prolog_β:
                        mov              r11, 176;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4576]
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx;         jmp   n348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4560]
                        mov              qword ptr [rsp + 4336], rax
                        mov              qword ptr [rsp + 4344], rdx;         jmp   n349_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n349_call_proc_staged_α:
                        mov              r11, 179
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx481_20
                        mov              rax, qword ptr [rsp + 4224]
                        mov              rdx, qword ptr [rsp + 4232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx481_21
.Lx481_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 4224]
                        mov              rdx, qword ptr [rsp + 4232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx481_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx481_22
                        mov              rax, qword ptr [rsp + 4320]
                        mov              rdx, qword ptr [rsp + 4328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx481_23
.Lx481_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 4320]
                        mov              rdx, qword ptr [rsp + 4328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx481_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx481_24
                        mov              rax, qword ptr [rsp + 4336]
                        mov              rdx, qword ptr [rsp + 4344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx481_25
.Lx481_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 4336]
                        mov              rdx, qword ptr [rsp + 4344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx481_25:              mov              rdi, qword ptr [rip + .Lx481_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx481_1
                        mov              rdi, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx481_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx481_3]
                        push             rcx
                        lea              rcx, [rip + .Lx481_3]
                        lea              rdx, [rip + .Lx481_4];               jmp   rax
.Lx481_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx481_2
.Lx481_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx481_2
.Lx481_1:               call             rt_faildescr@PLT
.Lx481_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx481_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 3664]
                        mov              rdx, qword ptr [rsp + 3672]
.Lx481_29:              mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              al, 104;                             je    n330_call_proc_staged_β
                                                                              jmp   n350_lit_string_α
n349_call_proc_staged_β:
                        mov              r11, 179;                            jmp   n330_call_proc_staged_β
.Lx481_0:               .quad            .Lx481_0_s
.Lx481_0_s:             .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rsp + 3616], 2            # result
                        mov              dword ptr [rsp + 3620], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n351_lit_string_α
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 1
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n352_lit_string_α
.Lx483_0:               .quad            .Lx483_0_s
.Lx483_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n353_lit_real_α
.Lx484_0:               .quad            .Lx484_0_s
.Lx484_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_real_α:        mov              r11, 183
                        mov              qword ptr [rsp + 3296], 5            # result
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n354_lit_string_α
.Lx485_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rsp + 3312], 2            # result
                        mov              dword ptr [rsp + 3316], 2
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n355_call_builtin_prolog_α
.Lx486_0:               .quad            .Lx486_0_s
.Lx486_0_s:             .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n355_call_builtin_prolog_α:
                        mov              r11, 185
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3368], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3352], rax
                        lea              rdi, [rsp + 3344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n356_lit_string_α
n355_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n357_lit_string_α
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n358_lit_real_α
.Lx489_0:               .quad            .Lx489_0_s
.Lx489_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_real_α:        mov              r11, 188
                        mov              qword ptr [rsp + 3072], 5            # result
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n359_lit_string_α
.Lx490_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 2
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n360_call_builtin_prolog_α
.Lx491_0:               .quad            .Lx491_0_s
.Lx491_0_s:             .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
                        mov              r11, 190
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3128], rax
                        lea              rdi, [rsp + 3120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n361_lit_string_α
n360_call_builtin_prolog_β:
                        mov              r11, 190;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rsp + 3056], 2            # result
                        mov              dword ptr [rsp + 3060], 2
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 3064], rax;         jmp   n362_call_builtin_prolog_α
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n362_call_builtin_prolog_α:
                        mov              r11, 192
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n363_call_builtin_prolog_α
n362_call_builtin_prolog_β:
                        mov              r11, 192;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n363_call_builtin_prolog_α:
                        mov              r11, 193
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3448], rax
                        lea              rdi, [rsp + 3440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n364_lit_integer_α
n363_call_builtin_prolog_β:
                        mov              r11, 193;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:     mov              r11, 194
                        mov              qword ptr [rsp + 3520], 3            # result
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n365_call_builtin_prolog_α
.Lx496_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
                        mov              r11, 195
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3592], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3576], rax
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3560], rax
                        lea              rdi, [rsp + 3552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n366_var_ref_α
n365_call_builtin_prolog_β:
                        mov              r11, 195;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4560]
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4544]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n368_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_proc_staged_α:
                        mov              r11, 198
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx503_20
                        mov              rax, qword ptr [rsp + 3536]
                        mov              rdx, qword ptr [rsp + 3544]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx503_21
.Lx503_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3536]
                        mov              rdx, qword ptr [rsp + 3544]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx503_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx503_22
                        mov              rax, qword ptr [rsp + 3632]
                        mov              rdx, qword ptr [rsp + 3640]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx503_23
.Lx503_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3632]
                        mov              rdx, qword ptr [rsp + 3640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx503_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx503_24
                        mov              rax, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx503_25
.Lx503_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx503_25:              mov              rdi, qword ptr [rip + .Lx503_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx503_1
                        mov              rdi, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx503_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx503_3]
                        push             rcx
                        lea              rcx, [rip + .Lx503_3]
                        lea              rdx, [rip + .Lx503_4];               jmp   rax
.Lx503_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx503_2
.Lx503_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx503_2
.Lx503_1:               call             rt_faildescr@PLT
.Lx503_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx503_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2976]
                        mov              rdx, qword ptr [rsp + 2984]
.Lx503_29:              mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n349_call_proc_staged_β
                                                                              jmp   n369_lit_string_α
n368_call_proc_staged_β:
                        mov              r11, 198;                            jmp   n349_call_proc_staged_β
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 2928], 2            # result
                        mov              dword ptr [rsp + 2932], 2
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 2936], rax;         jmp   n370_lit_string_α
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          ">="
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 1
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n371_lit_string_α
.Lx505_0:               .quad            .Lx505_0_s
.Lx505_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rsp + 2720], 2            # result
                        mov              dword ptr [rsp + 2724], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n372_lit_real_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_real_α:        mov              r11, 202
                        mov              qword ptr [rsp + 2608], 5            # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n373_lit_string_α
.Lx507_0:               .quad            4603579539098121011
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], 2
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n374_call_builtin_prolog_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_prolog_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2680], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2664], rax
                        lea              rdi, [rsp + 2656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n375_lit_string_α
n374_call_builtin_prolog_β:
                        mov              r11, 204;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 2592], 2            # result
                        mov              dword ptr [rsp + 2596], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n376_lit_string_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rsp + 2496], 2            # result
                        mov              dword ptr [rsp + 2500], 1
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n377_lit_real_α
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_real_α:        mov              r11, 207
                        mov              qword ptr [rsp + 2384], 5            # result
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n378_lit_string_α
.Lx512_0:               .quad            4600877379321698714
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 2
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n379_call_builtin_prolog_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_prolog_α:
                        mov              r11, 209
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2456], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2440], rax
                        lea              rdi, [rsp + 2432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n380_lit_string_α
n379_call_builtin_prolog_β:
                        mov              r11, 209;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 2
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n381_call_builtin_prolog_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n381_call_builtin_prolog_α:
                        mov              r11, 211
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2552], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2536], rax
                        lea              rdi, [rsp + 2528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n382_call_builtin_prolog_α
n381_call_builtin_prolog_β:
                        mov              r11, 211;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_prolog_α:
                        mov              r11, 212
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2792], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2776], rax
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2760], rax
                        lea              rdi, [rsp + 2752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n383_lit_integer_α
n382_call_builtin_prolog_β:
                        mov              r11, 212;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rsp + 2832], 3            # result
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n384_call_builtin_prolog_α
.Lx518_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_prolog_α:
                        mov              r11, 214
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2904], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2888], rax
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2872], rax
                        lea              rdi, [rsp + 2864]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n385_var_ref_α
n384_call_builtin_prolog_β:
                        mov              r11, 214;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4544]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n386_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4528]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n387_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n387_call_proc_staged_α:
                        mov              r11, 217
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_20
                        mov              rax, qword ptr [rsp + 2848]
                        mov              rdx, qword ptr [rsp + 2856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx525_21
.Lx525_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2848]
                        mov              rdx, qword ptr [rsp + 2856]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx525_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_22
                        mov              rax, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx525_23
.Lx525_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx525_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx525_24
                        mov              rax, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx525_25
.Lx525_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2960]
                        mov              rdx, qword ptr [rsp + 2968]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx525_25:              mov              rdi, qword ptr [rip + .Lx525_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx525_1
                        mov              rdi, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx525_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx525_3]
                        push             rcx
                        lea              rcx, [rip + .Lx525_3]
                        lea              rdx, [rip + .Lx525_4];               jmp   rax
.Lx525_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx525_2
.Lx525_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx525_2
.Lx525_1:               call             rt_faildescr@PLT
.Lx525_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx525_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
.Lx525_29:              mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n368_call_proc_staged_β
                                                                              jmp   n388_lit_string_α
n387_call_proc_staged_β:
                        mov              r11, 217;                            jmp   n368_call_proc_staged_β
.Lx525_0:               .quad            .Lx525_0_s
.Lx525_0_s:             .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              r11, 218
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 2
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n389_lit_string_α
.Lx526_0:               .quad            .Lx526_0_s
.Lx526_0_s:             .string          ">="
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n390_lit_string_α
.Lx527_0:               .quad            .Lx527_0_s
.Lx527_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 2
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n391_lit_string_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      mov              r11, 221
                        mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 2
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n392_call_builtin_prolog_α
.Lx529_0:               .quad            .Lx529_0_s
.Lx529_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_prolog_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n393_lit_integer_α
n392_call_builtin_prolog_β:
                        mov              r11, 222;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_integer_α:     mov              r11, 223
                        mov              qword ptr [rsp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n394_call_builtin_prolog_α
.Lx531_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_prolog_α:
                        mov              r11, 224
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2216], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n395_var_ref_α
n394_call_builtin_prolog_β:
                        mov              r11, 224;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4528]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n396_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4512]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n397_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n397_call_proc_staged_α:
                        mov              r11, 227
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx538_20
                        mov              rax, qword ptr [rsp + 2160]
                        mov              rdx, qword ptr [rsp + 2168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx538_21
.Lx538_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2160]
                        mov              rdx, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx538_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx538_22
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx538_23
.Lx538_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx538_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx538_24
                        mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx538_25
.Lx538_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx538_25:              mov              rdi, qword ptr [rip + .Lx538_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx538_1
                        mov              rdi, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx538_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx538_3]
                        push             rcx
                        lea              rcx, [rip + .Lx538_3]
                        lea              rdx, [rip + .Lx538_4];               jmp   rax
.Lx538_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx538_2
.Lx538_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx538_2
.Lx538_1:               call             rt_faildescr@PLT
.Lx538_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx538_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1936]
                        mov              rdx, qword ptr [rsp + 1944]
.Lx538_29:              mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n387_call_proc_staged_β
                                                                              jmp   n398_lit_string_α
n397_call_proc_staged_β:
                        mov              r11, 227;                            jmp   n387_call_proc_staged_β
.Lx538_0:               .quad            .Lx538_0_s
.Lx538_0_s:             .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 2
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n399_lit_string_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          ">="
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 1
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n400_lit_string_α
.Lx540_0:               .quad            .Lx540_0_s
.Lx540_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              r11, 230
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 2
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n401_lit_string_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 2
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n402_call_builtin_prolog_α
.Lx542_0:               .quad            .Lx542_0_s
.Lx542_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n402_call_builtin_prolog_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1720], rax
                        lea              rdi, [rsp + 1712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n403_lit_integer_α
n402_call_builtin_prolog_β:
                        mov              r11, 232;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:     mov              r11, 233
                        mov              qword ptr [rsp + 1792], 3            # result
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n404_call_builtin_prolog_α
.Lx544_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_prolog_α:
                        mov              r11, 234
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1832], rax
                        lea              rdi, [rsp + 1824]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n405_var_ref_α
n404_call_builtin_prolog_β:
                        mov              r11, 234;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4512]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n406_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4496]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n407_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n407_call_proc_staged_α:
                        mov              r11, 237
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx551_20
                        mov              rax, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx551_21
.Lx551_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx551_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx551_22
                        mov              rax, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx551_23
.Lx551_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1904]
                        mov              rdx, qword ptr [rsp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx551_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx551_24
                        mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx551_25
.Lx551_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx551_25:              mov              rdi, qword ptr [rip + .Lx551_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx551_1
                        mov              rdi, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx551_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx551_3]
                        push             rcx
                        lea              rcx, [rip + .Lx551_3]
                        lea              rdx, [rip + .Lx551_4];               jmp   rax
.Lx551_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx551_2
.Lx551_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx551_2
.Lx551_1:               call             rt_faildescr@PLT
.Lx551_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx551_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
.Lx551_29:              mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n397_call_proc_staged_β
                                                                              jmp   n408_lit_string_α
n407_call_proc_staged_β:
                        mov              r11, 237;                            jmp   n397_call_proc_staged_β
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "constraint/3"
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 1
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n409_lit_string_α
.Lx552_0:               .quad            .Lx552_0_s
.Lx552_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n410_lit_real_α
.Lx553_0:               .quad            .Lx553_0_s
.Lx553_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_real_α:        mov              r11, 240
                        mov              qword ptr [rsp + 1328], 5            # result
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n411_lit_string_α
.Lx554_0:               .quad            4600877379321698714
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      mov              r11, 241
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 2
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n412_call_builtin_prolog_α
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_prolog_α:
                        mov              r11, 242
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1384], rax
                        lea              rdi, [rsp + 1376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n413_lit_string_α
n412_call_builtin_prolog_β:
                        mov              r11, 242;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n414_lit_string_α
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 244
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n415_lit_real_α
.Lx558_0:               .quad            .Lx558_0_s
.Lx558_0_s:             .string          "*"
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_real_α:        mov              r11, 245
                        mov              qword ptr [rsp + 1104], 5            # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n416_lit_string_α
.Lx559_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              r11, 246
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 2
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n417_call_builtin_prolog_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
                        mov              r11, 247
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n418_lit_string_α
n417_call_builtin_prolog_β:
                        mov              r11, 247;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 2
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n419_call_builtin_prolog_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_prolog_α:
                        mov              r11, 249
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n420_call_builtin_prolog_α
n419_call_builtin_prolog_β:
                        mov              r11, 249;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        mov              r11, 250
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1512], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n421_var_ref_α
n420_call_builtin_prolog_β:
                        mov              r11, 250;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4496]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n422_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n423_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_proc_staged_α:
                        mov              r11, 253
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx570_20
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx570_21
.Lx570_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx570_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx570_22
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx570_23
.Lx570_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx570_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx570_24
                        mov              rax, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx570_25
.Lx570_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1568]
                        mov              rdx, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx570_25:              mov              rdi, qword ptr [rip + .Lx570_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx570_1
                        mov              rdi, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx570_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx570_3]
                        push             rcx
                        lea              rcx, [rip + .Lx570_3]
                        lea              rdx, [rip + .Lx570_4];               jmp   rax
.Lx570_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx570_2
.Lx570_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx570_2
.Lx570_1:               call             rt_faildescr@PLT
.Lx570_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx570_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
.Lx570_29:              mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n407_call_proc_staged_β
                                                                              jmp   n424_var_ref_α
n423_call_proc_staged_β:
                        mov              r11, 253;                            jmp   n407_call_proc_staged_β
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          "minimize/3"
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n425_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 4
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n426_lit_integer_α
.Lx573_0:               .quad            .Lx573_0_s
.Lx573_0_s:             .string          "rdiv"
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:     mov              r11, 256
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n427_lit_integer_α
.Lx574_0:               .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_integer_α:     mov              r11, 257
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n428_call_builtin_prolog_α
.Lx575_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_prolog_α:
                        mov              r11, 258
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n429_call_builtin_prolog_α
n428_call_builtin_prolog_β:
                        mov              r11, 258;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              r11, 259
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n423_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n430_var_ref_α
n429_call_builtin_prolog_β:
                        mov              r11, 259;                            jmp   n423_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 260
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 4
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n432_lit_integer_α
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "rdiv"
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rsp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n433_lit_integer_α
.Lx581_0:               .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:     mov              r11, 263
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx582_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n434_call_builtin_prolog_α
.Lx582_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n435_call_builtin_prolog_α
n434_call_builtin_prolog_β:
                        mov              r11, 264;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
                        mov              r11, 265
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n423_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n436_var_ref_α
n435_call_builtin_prolog_β:
                        mov              r11, 265;                            jmp   n423_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 267
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 4
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n438_lit_integer_α
.Lx587_0:               .quad            .Lx587_0_s
.Lx587_0_s:             .string          "rdiv"
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_integer_α:     mov              r11, 268
                        mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n439_lit_integer_α
.Lx588_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_integer_α:     mov              r11, 269
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n440_call_builtin_prolog_α
.Lx589_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              r11, 270
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n454_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n441_call_builtin_prolog_α
n440_call_builtin_prolog_β:
                        mov              r11, 270;                            jmp   n454_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
                        mov              r11, 271
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n423_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n442_var_ref_α
n441_call_builtin_prolog_β:
                        mov              r11, 271;                            jmp   n423_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n443_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4480]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n444_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_proc_staged_α:
                        mov              r11, 274
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx597_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx597_21
.Lx597_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx597_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx597_22
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx597_23
.Lx597_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx597_23:              mov              rdi, qword ptr [rip + .Lx597_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx597_1
                        mov              rdi, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx597_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx597_3]
                        push             rcx
                        lea              rcx, [rip + .Lx597_3]
                        lea              rdx, [rip + .Lx597_4];               jmp   rax
.Lx597_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx597_2
.Lx597_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx597_2
.Lx597_1:               call             rt_faildescr@PLT
.Lx597_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx597_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx597_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n423_call_proc_staged_β
                                                                              jmp   n445_var_ref_α
n444_call_proc_staged_β:
                        mov              r11, 274;                            jmp   n423_call_proc_staged_β
.Lx597_0:               .quad            .Lx597_0_s
.Lx597_0_s:             .string          "objective/2"
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:      mov              r11, 276
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n447_var_ref_α
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              r11, 277
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4464]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n448_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n448_call_proc_staged_α:
                        mov              r11, 278
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx604_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx604_21
.Lx604_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx604_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx604_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx604_23
.Lx604_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx604_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx604_24
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx604_25
.Lx604_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx604_25:              mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx604_1
                        mov              rdi, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx604_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx604_3]
                        push             rcx
                        lea              rcx, [rip + .Lx604_3]
                        lea              rdx, [rip + .Lx604_4];               jmp   rax
.Lx604_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx604_2
.Lx604_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx604_2
.Lx604_1:               call             rt_faildescr@PLT
.Lx604_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx604_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx604_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n444_call_proc_staged_β
                                                                              jmp   n449_var_ref_α
n448_call_proc_staged_β:
                        mov              r11, 278;                            jmp   n444_call_proc_staged_β
.Lx604_0:               .quad            .Lx604_0_s
.Lx604_0_s:             .string          "variable_value/3"
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4432]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n450_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 2
                        mov              rax, qword ptr [rip + .Lx607_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n451_var_ref_α
.Lx607_0:               .quad            .Lx607_0_s
.Lx607_0_s:             .string          "x2"
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 4448]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n452_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n452_call_proc_staged_α:
                        mov              r11, 282
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx611_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx611_21
.Lx611_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx611_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx611_22
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx611_23
.Lx611_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx611_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx611_24
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx611_25
.Lx611_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx611_25:              mov              rdi, qword ptr [rip + .Lx611_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx611_1
                        mov              rdi, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx611_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx611_3]
                        push             rcx
                        lea              rcx, [rip + .Lx611_3]
                        lea              rdx, [rip + .Lx611_4];               jmp   rax
.Lx611_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx611_2
.Lx611_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx611_2
.Lx611_1:               call             rt_faildescr@PLT
.Lx611_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx611_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx611_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n448_call_proc_staged_β
                                                                              jmp   n453_suspend_α
n452_call_proc_staged_β:
                        mov              r11, 282;                            jmp   n448_call_proc_staged_β
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "variable_value/3"
#-----------------------------------------------------------------------------------------------------------------------
n453_suspend_α:         mov              r11, 283
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx613_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4416];         jmp   rax
.Lx613_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n453_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n453_suspend_β]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   radiation$2F0_γ
n453_suspend_β:         mov              r11, 283;                            jmp   n452_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
                        mov              r11, 284
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    radiation$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   radiation$2F0_ω
n454_call_builtin_prolog_β:
                        mov              r11, 284;                            jmp   radiation$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
radiation$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
radiation$2F0_β:
                                                                              jmp   n453_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
radiation$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx614_50
                        mov              qword ptr [rsp + 4416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 4416];         jmp   rax
.Lx614_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4616]
                        add              rsp, 4640;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
radiation$2F0_ω:
                        mov              rcx, qword ptr [rsp + 4624]
                        add              rsp, 4640;                           jmp   rcx
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 160
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n615_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 7
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n616_lit_string_α
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 11
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n617_call_builtin_prolog_α
.Lx620_0:               .quad            .Lx620_0_s
.Lx620_0_s:             .string          "clp/simplex"
#-----------------------------------------------------------------------------------------------------------------------
n617_call_builtin_prolog_α:
                        mov              r11, 287
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n618_call_proc_staged_α
n617_call_builtin_prolog_β:
                        mov              r11, 287;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n618_call_proc_staged_α:
                        mov              r11, 288
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx623_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx623_21
.Lx623_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx623_21:              mov              rdi, qword ptr [rip + .Lx623_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx623_1
                        mov              rdi, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx623_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx623_3]
                        push             rcx
                        lea              rcx, [rip + .Lx623_3]
                        lea              rdx, [rip + .Lx623_4];               jmp   rax
.Lx623_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx623_2
.Lx623_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx623_2
.Lx623_1:               call             rt_faildescr@PLT
.Lx623_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx623_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx623_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n618_call_proc_staged_β:
                        mov              r11, 288;                            jmp   main_ω
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "transport/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__transport$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4496
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "linprog/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__linprog$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__pj_dir_2$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__pj_dir_0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            416
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__pj_dir_1$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            384
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "radiation/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__radiation$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4592
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
