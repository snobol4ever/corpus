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
                        sub              rsp, 3272
                        mov              rdi, rsp
                        mov              ecx, 3272
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3264], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx111_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx111_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx111_101
.Lx111_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx111_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n2_lit_string_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "/tmp/rung77_data.txt"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n3_var_ref_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn117:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n5_var_α
n4_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
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
n6_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n8_op11_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "foo(bar, 42, [x,y,z])."
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                        .section         .rodata
.Lrkfn123:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n9_var_α
n8_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn127:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 2864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n11_var_α
n10_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n13_op11_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "hello."
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn132:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n14_var_α
n13_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2744], rax
                        .section         .rodata
.Lrkfn136:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n16_var_α
n15_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n18_op11_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "p(A, B, A)."
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lrkfn141:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 2656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n19_var_α
n18_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn145:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n21_var_ref_α
n20_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n22_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn149:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n23_lit_string_α
n22_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n24_lit_string_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "/tmp/rung77_data.txt"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n25_var_ref_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn155:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n27_var_ref_α
n26_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn161:              .string          "$read2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n30_lit_string_α
n29_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n31_lit_string_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n32_var_ref_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "t1"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n34_op11_α
n33_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        .section         .rodata
.Lrkfn168:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rbp + 2208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n35_lit_string_α
n34_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n36_op11_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn171:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n37_var_ref_α
n36_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn177:              .string          "$read2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n40_lit_string_α
n39_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n41_lit_string_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n42_var_ref_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "t2"
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n44_op11_α
n43_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn184:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n45_lit_string_α
n44_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n46_op11_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn187:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n47_var_ref_α
n46_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lrkfn193:              .string          "$read2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n50_var_ref_α
n49_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n52_var_ref_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n57_lit_string_α
                                                                                        jmp   n56_op11_α
n55_op11_β:
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1568]
                        lea              r8, [rbp + 1568]
.Lx204_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              esi, 1
                                                                                        jne   .Lx204_55
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_55:
                        cmp              esi, 2
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_56:
                        cmp              eax, 13
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              rax, r8
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_41:
                        lea              r9, [rbp + 1584]
.Lx204_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              esi, 1
                                                                                        jne   .Lx204_57
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_57:
                        cmp              esi, 2
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_58:
                        cmp              eax, 13
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              rax, r9
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_43:
                        cmp              r8, r9
                                                                                        je    .Lx204_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_44
                        cmp              eax, 99
                                                                                        je    .Lx204_44
                        cmp              eax, 13
                                                                                        jne   .Lx204_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx204_44
                                                                                        jmp   .Lx204_45
.Lx204_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_53
                        cmp              eax, 99
                                                                                        je    .Lx204_53
                        cmp              eax, 13
                                                                                        jne   .Lx204_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_46
.Lx204_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
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
                                                                                        jmp   .Lx204_51
.Lx204_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_47
                        cmp              eax, 99
                                                                                        je    .Lx204_47
                        cmp              eax, 13
                                                                                        jne   .Lx204_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_47
                                                                                        jmp   .Lx204_48
.Lx204_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
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
                                                                                        jmp   .Lx204_51
.Lx204_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx204_49
                        cmp              edx, 14
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_52
.Lx204_49:
                        cmp              edx, 14
                                                                                        je    .Lx204_52
                        cmp              ecx, 7
                                                                                        je    .Lx204_53
                        cmp              edx, 7
                                                                                        je    .Lx204_53
                        cmp              ecx, 6
                                                                                        jne   .Lx204_50
                        cmp              edx, 6
                                                                                        jne   .Lx204_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx204_51
                                                                                        jmp   .Lx204_52
.Lx204_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
.Lx204_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx204_54
.Lx204_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx204_54
.Lx204_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx204_54:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n57_lit_string_α
                                                                                        jmp   n58_var_ref_α
n56_op11_β:
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n59_lit_string_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n61_lit_string_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "t3"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n62_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n63_op11_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "bad"
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn213:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n57_lit_string_α
                                                                                        jmp   n64_var_ref_α
n62_op11_β:
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n65_op11_α
n63_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n66_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn218:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n67_lit_string_α
n65_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n69_op11_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn223:              .string          "$atop_ne"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n57_lit_string_α
                                                                                        jmp   n70_lit_string_α
n68_op11_β:
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn225:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n71_var_ref_α
n69_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n72_lit_string_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n74_lit_string_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "t3"
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n76_op11_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "shared_ok"
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn234:              .string          "$read2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 960]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n77_lit_string_α
n75_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
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
                                                                                        je    n6_op11_α
                                                                                        jmp   n78_op11_α
n76_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n79_lit_string_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn238:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n67_lit_string_α
n78_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n80_var_ref_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "t4"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n82_op11_α
n81_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn244:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n83_lit_string_α
n82_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n84_op11_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn247:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n85_var_ref_α
n84_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn251:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n87_lit_string_α
n86_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n88_lit_string_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "/tmp/rung77_data.txt"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n89_var_ref_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n90_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn257:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rbp + 592]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n91_var_ref_α
n90_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n92_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn261:              .string          "$set_input"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n93_var_ref_α
n92_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n94_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn265:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n95_lit_string_α
n94_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n96_lit_string_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n97_var_ref_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "x1"
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n98_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n99_op11_α
n98_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn272:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n100_lit_string_α
n99_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n101_op11_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn275:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n102_var_ref_α
n101_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n103_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn279:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n104_lit_string_α
n103_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n105_op11_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn282:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n106_lit_string_α
n105_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n107_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn285:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n108_call_proc_staged_α
n107_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx287_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx287_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx287_3]
                        lea              rdx, [rip + .Lx287_4]
                                                                                        jmp   rax
.Lx287_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx287_2
.Lx287_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx287_2
.Lx287_1:
                        call             rt_faildescr@PLT
.Lx287_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n109_move_label_α
n108_call_proc_staged_β:
                                                                                        jmp   n6_op11_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n109_move_label_α:
                        lea              rax, [rip + n108_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n110_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n110_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n110_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3264]
                        add              rsp, 3272
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3264]
                        add              rsp, 3272
                        ret
                        .section         .note.GNU-stack,"",@progbits
