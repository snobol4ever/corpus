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
                        sub              rsp, 2984
                        mov              rdi, rsp
                        mov              ecx, 2984
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2976], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx99_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx99_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx99_101
.Lx99_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx99_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n2_lit_string_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "/tmp/rung72_ug.txt"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n3_var_ref_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2960]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn105:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rbp + 2720]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n5_var_α
n4_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2680], rax
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
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n8_op11_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "ABC"
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                        .section         .rodata
.Lrkfn111:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n9_var_ref_α
n8_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2960]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn115:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n11_lit_string_α
n10_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n12_lit_string_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "/tmp/rung72_ug.txt"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n13_var_ref_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                        .section         .rodata
.Lrkfn121:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2912]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn127:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n18_var_ref_α
n17_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2912]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn133:              .string          "$unget_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n21_var_ref_α
n20_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2928]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn139:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n24_var_ref_α
n23_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn145:              .string          "$get_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n27_var_ref_α
n26_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n29_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn151:              .string          "$unget_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n30_var_ref_α
n29_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn157:              .string          "$get_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n33_var_ref_α
n32_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn161:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n35_lit_string_α
n34_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n36_var_ref_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "char"
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2912]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n37_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2928]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1856]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n39_op11_α
n38_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn169:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n40_lit_string_α
n39_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n41_op11_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn172:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n42_lit_string_α
n41_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n43_var_ref_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "code"
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n45_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1648]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n46_op11_α
n45_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn180:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n47_lit_string_α
n46_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n48_op11_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn183:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n49_lit_string_α
n48_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n50_lit_string_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "/tmp/rung72_ug.bin"
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n51_var_ref_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n53_lit_string_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n54_lit_string_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n55_op11_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n56_lit_string_α
n55_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n57_op11_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1352]
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
                                                                                        je    n6_op11_α
                                                                                        jmp   n58_op11_α
n57_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn195:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n59_var_ref_α
n58_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n61_op11_α
.Lx198_0:
                        .quad            200
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn200:              .string          "$put_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n62_var_ref_α
n61_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn204:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n64_lit_string_α
n63_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n65_lit_string_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "/tmp/rung72_ug.bin"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n66_var_ref_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n68_lit_string_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n69_lit_string_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n70_op11_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n71_lit_string_α
n70_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n72_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n73_op11_α
n72_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn216:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rbp + 736]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2816]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n76_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn222:              .string          "$get_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n77_var_ref_α
n76_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2816]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn228:              .string          "$unget_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 576]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n80_var_ref_α
n79_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n82_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn234:              .string          "$get_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n83_var_ref_α
n82_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn238:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n85_lit_string_α
n84_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n86_var_ref_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "byte"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2816]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2832]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n89_op11_α
n88_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn246:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n90_lit_string_α
n89_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n91_op11_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn249:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n92_lit_string_α
n91_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n93_op11_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn252:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n94_lit_string_α
n93_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n95_op11_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn255:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n96_call_proc_staged_α
n95_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx257_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx257_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx257_3]
                        lea              rdx, [rip + .Lx257_4]
                                                                                        jmp   rax
.Lx257_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx257_2
.Lx257_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx257_2
.Lx257_1:
                        call             rt_faildescr@PLT
.Lx257_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n97_move_label_α
n96_call_proc_staged_β:
                                                                                        jmp   n6_op11_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n97_move_label_α:
                        lea              rax, [rip + n96_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n98_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n98_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n98_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2976]
                        add              rsp, 2984
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2976]
                        add              rsp, 2984
                        ret
                        .section         .note.GNU-stack,"",@progbits
