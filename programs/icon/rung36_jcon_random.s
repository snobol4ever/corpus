                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_rtest_α
proc_rtest_α:
proc_rtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 3312], 0
                        mov              qword ptr [rbp + 3320], 0
                        mov              dword ptr [rbp + 3328], 0
                                                                                        jmp   n108_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 3328]
                        cmp              eax, 0
                                                                                        jne   .Lx149_0
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx149_0:
                                                                                        jmp   n1_call_builtin_icon_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n1_call_builtin_icon_α
n0_disjunction_af:
                        add              dword ptr [rbp + 3328], 1
                        mov              eax, dword ptr [rbp + 3328]
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]                         # fn
                        lea              rsi, [rbp + 3296]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        cmp              eax, 104
                                                                                        je    n2_keyword_icon_α
                                                                                        jmp   n2_keyword_icon_α
n1_call_builtin_icon_β:
                                                                                        jmp   n2_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n2_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx152_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n10_keyword_icon_α
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n3_lit_integer_α
n2_keyword_icon_β:
                                                                                        jmp   n10_keyword_icon_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 3200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n4_call_builtin_icon_α
.Lx153_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn155:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]                         # fn
                        lea              rsi, [rbp + 3120]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 104
                                                                                        je    n10_keyword_icon_α
                                                                                        jmp   n5_lit_string_α
n4_call_builtin_icon_β:
                                                                                        jmp   n10_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 3216], 2                      # result
                        mov              dword ptr [rbp + 3220], 5
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n6_lit_integer_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "  i  "
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 3248], 3                      # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n7_random_α
.Lx157_0:
                        .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n7_random_α:
                        mov              rdi, qword ptr [rbp + 3248]                    # base
                        mov              rsi, qword ptr [rbp + 3256]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n10_keyword_icon_α
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n8_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_deref_α:
                        mov              rdi, qword ptr [rbp + 3232]                    # d
                        mov              rsi, qword ptr [rbp + 3240]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n10_keyword_icon_α
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                                                                                        jmp   n9_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3080], rax
                        .section         .rodata
.Lrkfn161:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]                         # fn
                        lea              rsi, [rbp + 3040]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 104
                                                                                        je    n10_keyword_icon_α
                                                                                        jmp   n10_keyword_icon_α
n9_call_builtin_icon_β:
                                                                                        jmp   n10_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx162_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n18_keyword_icon_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n11_lit_integer_α
n10_keyword_icon_β:
                                                                                        jmp   n18_keyword_icon_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 3                      # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n12_call_builtin_icon_α
.Lx163_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn165:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]                         # fn
                        lea              rsi, [rbp + 2864]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 104
                                                                                        je    n18_keyword_icon_α
                                                                                        jmp   n13_lit_string_α
n12_call_builtin_icon_β:
                                                                                        jmp   n18_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2960], 2                      # result
                        mov              dword ptr [rbp + 2964], 5
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n14_lit_integer_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "  i  "
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 2992], 3                      # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n15_random_α
.Lx167_0:
                        .quad            9999
#-----------------------------------------------------------------------------------------------------------------------
n15_random_α:
                        mov              rdi, qword ptr [rbp + 2992]                    # base
                        mov              rsi, qword ptr [rbp + 3000]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n18_keyword_icon_α
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n16_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_deref_α:
                        mov              rdi, qword ptr [rbp + 2976]                    # d
                        mov              rsi, qword ptr [rbp + 2984]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n18_keyword_icon_α
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n17_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lrkfn171:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]                         # fn
                        lea              rsi, [rbp + 2784]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 104
                                                                                        je    n18_keyword_icon_α
                                                                                        jmp   n18_keyword_icon_α
n17_call_builtin_icon_β:
                                                                                        jmp   n18_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx172_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n30_keyword_icon_α
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n19_lit_integer_α
n18_keyword_icon_β:
                                                                                        jmp   n30_keyword_icon_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 2592], 3                      # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n20_call_builtin_icon_α
.Lx173_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2536], rax
                        .section         .rodata
.Lrkfn175:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]                         # fn
                        lea              rsi, [rbp + 2512]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 104
                                                                                        je    n30_keyword_icon_α
                                                                                        jmp   n21_lit_string_α
n20_call_builtin_icon_β:
                                                                                        jmp   n30_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 2608], 2                      # result
                        mov              dword ptr [rbp + 2612], 5
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n22_lit_integer_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "  r  "
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 2704], 3                      # result
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n23_lit_integer_α
.Lx177_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n24_random_α
.Lx178_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_random_α:
                        mov              rdi, qword ptr [rbp + 2736]                    # base
                        mov              rsi, qword ptr [rbp + 2744]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n30_keyword_icon_α
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n25_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_deref_α:
                        mov              rdi, qword ptr [rbp + 2720]                    # d
                        mov              rsi, qword ptr [rbp + 2728]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n30_keyword_icon_α
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n26_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 5
                                                                                        je    .Lx182_1
                        cmp              eax, 3
                                                                                        jne   .Lx182_0
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 3
                                                                                        jne   .Lx182_0
.Lx182_1:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n27_binop_α
.Lx182_0:
                        lea              rdi, [rbp + 2752]                              # self
                        lea              rsi, [rbp + 2704]                              # other
                        lea              rdx, [rbp + 2688]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n27_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 3
                                                                                        jne   .Lx183_0
                        mov              rax, 10000
                        mov              rcx, qword ptr [rbp + 2696]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 2672], 3
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n28_call_builtin_icon_α
.Lx183_0:
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        mov              rdx, qword ptr [rbp + 2688]
                        mov              rcx, qword ptr [rbp + 2696]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n30_keyword_icon_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n28_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn185:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]                         # fn
                        lea              rsi, [rbp + 2640]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 104
                                                                                        je    n30_keyword_icon_α
                                                                                        jmp   n29_call_builtin_icon_α
n28_call_builtin_icon_β:
                                                                                        jmp   n30_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn187:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]                         # fn
                        lea              rsi, [rbp + 2432]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 104
                                                                                        je    n30_keyword_icon_α
                                                                                        jmp   n30_keyword_icon_α
n29_call_builtin_icon_β:
                                                                                        jmp   n30_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n30_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx188_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n42_keyword_icon_α
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n31_lit_integer_α
n30_keyword_icon_β:
                                                                                        jmp   n42_keyword_icon_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n32_call_builtin_icon_α
.Lx189_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn191:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]                         # fn
                        lea              rsi, [rbp + 2160]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n42_keyword_icon_α
                                                                                        jmp   n33_lit_string_α
n32_call_builtin_icon_β:
                                                                                        jmp   n42_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 2256], 2                      # result
                        mov              dword ptr [rbp + 2260], 5
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n34_lit_integer_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "  r  "
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 3                      # result
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n35_lit_integer_α
.Lx193_0:
                        .quad            10000
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 3                      # result
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n36_random_α
.Lx194_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n36_random_α:
                        mov              rdi, qword ptr [rbp + 2384]                    # base
                        mov              rsi, qword ptr [rbp + 2392]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n42_keyword_icon_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n37_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_deref_α:
                        mov              rdi, qword ptr [rbp + 2368]                    # d
                        mov              rsi, qword ptr [rbp + 2376]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n42_keyword_icon_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n38_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n38_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 5
                                                                                        je    .Lx198_1
                        cmp              eax, 3
                                                                                        jne   .Lx198_0
                        mov              eax, dword ptr [rbp + 2352]
                        cmp              eax, 3
                                                                                        jne   .Lx198_0
.Lx198_1:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n39_binop_α
.Lx198_0:
                        lea              rdi, [rbp + 2400]                              # self
                        lea              rsi, [rbp + 2352]                              # other
                        lea              rdx, [rbp + 2336]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n39_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
                        mov              rax, 10000
                        mov              rcx, qword ptr [rbp + 2344]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 2320], 3
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n40_call_builtin_icon_α
.Lx199_0:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2336]
                        mov              rcx, qword ptr [rbp + 2344]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n42_keyword_icon_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n40_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn201:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]                         # fn
                        lea              rsi, [rbp + 2288]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 104
                                                                                        je    n42_keyword_icon_α
                                                                                        jmp   n41_call_builtin_icon_α
n40_call_builtin_icon_β:
                                                                                        jmp   n42_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn203:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]                         # fn
                        lea              rsi, [rbp + 2080]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 104
                                                                                        je    n42_keyword_icon_α
                                                                                        jmp   n42_keyword_icon_α
n41_call_builtin_icon_β:
                                                                                        jmp   n42_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx204_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n50_keyword_icon_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n43_lit_integer_α
n42_keyword_icon_β:
                                                                                        jmp   n50_keyword_icon_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 3                      # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n44_call_builtin_icon_α
.Lx205_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn207:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]                         # fn
                        lea              rsi, [rbp + 1904]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n50_keyword_icon_α
                                                                                        jmp   n45_lit_string_α
n44_call_builtin_icon_β:
                                                                                        jmp   n50_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 5
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n46_lit_string_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "  s  "
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 2032], 2                      # result
                        mov              dword ptr [rbp + 2036], 26
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n47_random_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n47_random_α:
                        mov              rdi, qword ptr [rbp + 2032]                    # base
                        mov              rsi, qword ptr [rbp + 2040]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n50_keyword_icon_α
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n48_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_deref_α:
                        mov              rdi, qword ptr [rbp + 2016]                    # d
                        mov              rsi, qword ptr [rbp + 2024]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n50_keyword_icon_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n49_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn213:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]                         # fn
                        lea              rsi, [rbp + 1824]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n50_keyword_icon_α
                                                                                        jmp   n50_keyword_icon_α
n49_call_builtin_icon_β:
                                                                                        jmp   n50_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx214_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n58_keyword_icon_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n51_lit_integer_α
n50_keyword_icon_β:
                                                                                        jmp   n58_keyword_icon_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n52_call_builtin_icon_α
.Lx215_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn217:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]                         # fn
                        lea              rsi, [rbp + 1648]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n58_keyword_icon_α
                                                                                        jmp   n53_lit_string_α
n52_call_builtin_icon_β:
                                                                                        jmp   n58_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 1744], 2                      # result
                        mov              dword ptr [rbp + 1748], 5
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n54_lit_string_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "  s  "
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 26
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n55_random_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n55_random_α:
                        mov              rdi, qword ptr [rbp + 1776]                    # base
                        mov              rsi, qword ptr [rbp + 1784]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n58_keyword_icon_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:
                        mov              rdi, qword ptr [rbp + 1760]                    # d
                        mov              rsi, qword ptr [rbp + 1768]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n58_keyword_icon_α
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n57_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]                         # fn
                        lea              rsi, [rbp + 1568]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n58_keyword_icon_α
                                                                                        jmp   n58_keyword_icon_α
n57_call_builtin_icon_β:
                                                                                        jmp   n58_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx224_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n66_keyword_icon_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n59_lit_integer_α
n58_keyword_icon_β:
                                                                                        jmp   n66_keyword_icon_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n60_call_builtin_icon_α
.Lx225_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn227:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]                         # fn
                        lea              rsi, [rbp + 1392]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n66_keyword_icon_α
                                                                                        jmp   n61_lit_string_α
n60_call_builtin_icon_β:
                                                                                        jmp   n66_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
                        mov              dword ptr [rbp + 1492], 5
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n62_lit_charset_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "  c  "
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_charset_α:
                        mov              qword ptr [rbp + 1520], 2                      # result
                        mov              dword ptr [rbp + 1524], -1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n63_random_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n63_random_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # base
                        mov              rsi, qword ptr [rbp + 1528]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n66_keyword_icon_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n64_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:
                        mov              rdi, qword ptr [rbp + 1504]                    # d
                        mov              rsi, qword ptr [rbp + 1512]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n66_keyword_icon_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n65_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn233:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]                         # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n66_keyword_icon_α
                                                                                        jmp   n66_keyword_icon_α
n65_call_builtin_icon_β:
                                                                                        jmp   n66_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n66_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx234_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n74_keyword_icon_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n67_lit_integer_α
n66_keyword_icon_β:
                                                                                        jmp   n74_keyword_icon_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n68_call_builtin_icon_α
.Lx235_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn237:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]                         # fn
                        lea              rsi, [rbp + 1136]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    n74_keyword_icon_α
                                                                                        jmp   n69_lit_string_α
n68_call_builtin_icon_β:
                                                                                        jmp   n74_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 5
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n70_lit_charset_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "  c  "
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_charset_α:
                        mov              qword ptr [rbp + 1264], 2                      # result
                        mov              dword ptr [rbp + 1268], -1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n71_random_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n71_random_α:
                        mov              rdi, qword ptr [rbp + 1264]                    # base
                        mov              rsi, qword ptr [rbp + 1272]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n74_keyword_icon_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n72_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_deref_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # d
                        mov              rsi, qword ptr [rbp + 1256]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n74_keyword_icon_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n73_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn243:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]                         # fn
                        lea              rsi, [rbp + 1056]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n74_keyword_icon_α
                                                                                        jmp   n74_keyword_icon_α
n73_call_builtin_icon_β:
                                                                                        jmp   n74_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n74_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx244_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n82_keyword_icon_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n75_lit_integer_α
n74_keyword_icon_β:
                                                                                        jmp   n82_keyword_icon_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        mov              qword ptr [rbp + 960], 3                       # result
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n76_call_builtin_icon_α
.Lx245_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn247:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n82_keyword_icon_α
                                                                                        jmp   n77_lit_string_α
n76_call_builtin_icon_β:
                                                                                        jmp   n82_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 5
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n78_var_ref_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "  L  "
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # rtest__STATIC__L
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n79_random_α
#-----------------------------------------------------------------------------------------------------------------------
n79_random_α:
                        mov              rdi, qword ptr [rbp + 1008]                    # base
                        mov              rsi, qword ptr [rbp + 1016]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n82_keyword_icon_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n80_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_deref_α:
                        mov              rdi, qword ptr [rbp + 992]                     # d
                        mov              rsi, qword ptr [rbp + 1000]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n82_keyword_icon_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n81_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn254:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]                         # fn
                        lea              rsi, [rbp + 800]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n82_keyword_icon_α
                                                                                        jmp   n82_keyword_icon_α
n81_call_builtin_icon_β:
                                                                                        jmp   n82_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n82_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx255_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n90_keyword_icon_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n83_lit_integer_α
n82_keyword_icon_β:
                                                                                        jmp   n90_keyword_icon_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n84_call_builtin_icon_α
.Lx256_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn258:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]                         # fn
                        lea              rsi, [rbp + 624]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n90_keyword_icon_α
                                                                                        jmp   n85_lit_string_α
n84_call_builtin_icon_β:
                                                                                        jmp   n90_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 5
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n86_var_ref_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "  L  "
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288                                # rtest__STATIC__L
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n87_random_α
#-----------------------------------------------------------------------------------------------------------------------
n87_random_α:
                        mov              rdi, qword ptr [rbp + 752]                     # base
                        mov              rsi, qword ptr [rbp + 760]                     # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n90_keyword_icon_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n88_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_deref_α:
                        mov              rdi, qword ptr [rbp + 736]                     # d
                        mov              rsi, qword ptr [rbp + 744]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n90_keyword_icon_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n89_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn265:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]                         # fn
                        lea              rsi, [rbp + 544]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n90_keyword_icon_α
                                                                                        jmp   n90_keyword_icon_α
n89_call_builtin_icon_β:
                                                                                        jmp   n90_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n90_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx266_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n98_keyword_icon_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n91_lit_integer_α
n90_keyword_icon_β:
                                                                                        jmp   n98_keyword_icon_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n92_call_builtin_icon_α
.Lx267_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn269:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n98_keyword_icon_α
                                                                                        jmp   n93_lit_string_α
n92_call_builtin_icon_β:
                                                                                        jmp   n98_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 5
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n94_var_ref_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "  R  "
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336                                # rtest__STATIC__R
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n95_random_α
#-----------------------------------------------------------------------------------------------------------------------
n95_random_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n98_keyword_icon_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n96_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_deref_α:
                        mov              rdi, qword ptr [rbp + 480]                     # d
                        mov              rsi, qword ptr [rbp + 488]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n98_keyword_icon_α
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n97_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n98_keyword_icon_α
                                                                                        jmp   n98_keyword_icon_α
n97_call_builtin_icon_β:
                                                                                        jmp   n98_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n98_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx277_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n106_return_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n99_lit_integer_α
n98_keyword_icon_β:
                                                                                        jmp   n106_return_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n100_call_builtin_icon_α
.Lx278_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn280:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n106_return_α
                                                                                        jmp   n101_lit_string_α
n100_call_builtin_icon_β:
                                                                                        jmp   n106_return_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 5
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n102_var_ref_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "  R  "
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336                                # rtest__STATIC__R
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n103_random_α
#-----------------------------------------------------------------------------------------------------------------------
n103_random_α:
                        mov              rdi, qword ptr [rbp + 240]                     # base
                        mov              rsi, qword ptr [rbp + 248]                     # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n106_return_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n104_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n104_deref_α:
                        mov              rdi, qword ptr [rbp + 224]                     # d
                        mov              rsi, qword ptr [rbp + 232]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n106_return_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n105_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn287:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n106_return_α
                                                                                        jmp   n106_return_α
n105_call_builtin_icon_β:
                                                                                        jmp   n106_return_α
#-----------------------------------------------------------------------------------------------------------------------
n106_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 4048
                                                                                        jmp   proc_rtest_γ
#-----------------------------------------------------------------------------------------------------------------------
n107_conjunction_α:
                                                                                        jmp   n0_disjunction_as
n107_conjunction_β:
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352                                # rtest__INITFLAG__0
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   n109_nulltest_var_α
n108_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n109_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 4192]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 4192]                    # d
                        mov              rsi, qword ptr [rbp + 4200]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n110_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 4240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n111_assign_var_α
.Lx293_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4208]                    # var
                        mov              rsi, qword ptr [rbp + 4216]                    # var
                        mov              rdx, qword ptr [rbp + 4240]                    # val
                        mov              rcx, qword ptr [rbp + 4248]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                                                                                        jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rbp + 4032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n113_lit_integer_α
.Lx295_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rbp + 4048], 3                      # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 4056], rax
                                                                                        jmp   n114_lit_integer_α
.Lx296_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 4064], 3                      # result
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 4072], rax
                                                                                        jmp   n115_lit_integer_α
.Lx297_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rbp + 4080], 3                      # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 4088], rax
                                                                                        jmp   n116_lit_integer_α
.Lx298_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 4096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n117_lit_integer_α
.Lx299_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:
                        mov              qword ptr [rbp + 4112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n118_lit_integer_α
.Lx300_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 4128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n119_lit_integer_α
.Lx301_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 4144], 3                      # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n120_lit_integer_α
.Lx302_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 4160], 3                      # result
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 4168], rax
                                                                                        jmp   n121_lit_integer_α
.Lx303_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rbp + 4176], 3                      # result
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 4184], rax
                                                                                        jmp   n122_call_α
.Lx304_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3864], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3880], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 3976], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn306:              .string          "r10"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]                         # fn
                        lea              rsi, [rbp + 3856]                              # args
                        mov              edx, 10                                        # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              eax, 104
                                                                                        je    n124_make_list_α
                                                                                        jmp   n123_assign_α
n122_call_β:
                                                                                        jmp   n124_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              rdx, qword ptr [rbp + 3848]
                        mov              qword ptr [1879052336], rax                    # rtest__STATIC__R
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n124_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n124_make_list_α:
                        lea              rdi, [rbp + 3840]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx
                                                                                        jmp   n125_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n125_assign_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              rdx, qword ptr [rbp + 3832]
                        mov              qword ptr [1879052288], rax                    # rtest__STATIC__L
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n126_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn312:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]                         # fn
                        lea              rsi, [rbp + 3808]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 104
                                                                                        je    n128_lit_integer_α
                                                                                        jmp   n127_assign_α
n126_call_builtin_icon_β:
                                                                                        jmp   n128_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              rdx, qword ptr [rbp + 3800]
                        mov              qword ptr [1879052320], rax                    # rtest__STATIC__T
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n128_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:
                        mov              qword ptr [rbp + 3488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n129_lit_integer_α
.Lx314_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 3504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n130_to_α
.Lx315_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n130_to_α:
                        mov              rdi, qword ptr [rbp + 3488]                    # v
                        mov              rsi, qword ptr [rbp + 3496]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3488], 3
                        mov              qword ptr [rbp + 3496], rax
                        mov              rdi, qword ptr [rbp + 3504]                    # v
                        mov              rsi, qword ptr [rbp + 3512]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 3504], 3
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3472], rax
.Lx317_0:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              rcx, qword ptr [rbp + 3512]
                        cmp              rax, rcx
                                                                                        jg    n145_var_α
                        mov              qword ptr [rbp + 3456], 3
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n131_assign_α
n130_to_β:
                        inc              qword ptr [rbp + 3472]
                                                                                        jmp   .Lx317_0
#-----------------------------------------------------------------------------------------------------------------------
n131_assign_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              rdx, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n132_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n132_bound_α:
                        mov              qword ptr [rbp + 3520], rsp
                                                                                        jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [1879052288]                    # rtest__STATIC__L
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3760], rax                    # result
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n135_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3736], rax
                        .section         .rodata
.Lrkfn325:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]                         # fn
                        lea              rsi, [rbp + 3712]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              eax, 104
                                                                                        je    n136_var_ref_α
                                                                                        jmp   n136_var_ref_α
n135_call_builtin_icon_β:
                                                                                        jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320                                # rtest__STATIC__T
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n137_var_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n138_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n138_subscript_α:
                        mov              rdi, qword ptr [rbp + 3584]                    # base
                        mov              rsi, qword ptr [rbp + 3592]                    # base
                        mov              rdx, qword ptr [rbp + 3600]                    # idx
                        mov              rcx, qword ptr [rbp + 3608]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n144_unmark_α
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3688], rax
                                                                                        jmp   n140_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n140_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4256]
                        cmp              eax, 5
                                                                                        je    .Lx334_1
                        cmp              eax, 3
                                                                                        jne   .Lx334_0
                        mov              eax, dword ptr [rbp + 4256]
                        cmp              eax, 3
                                                                                        jne   .Lx334_0
.Lx334_1:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n141_unop_α
.Lx334_0:
                        lea              rdi, [rbp + 4256]                              # self
                        lea              rsi, [rbp + 4256]                              # other
                        lea              rdx, [rbp + 3664]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n141_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n141_unop_α:
                        mov              rdi, qword ptr [rbp + 3664]                    # a
                        mov              rsi, qword ptr [rbp + 3672]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                                                                                        jmp   n142_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3616]                    # var
                        mov              rsi, qword ptr [rbp + 3624]                    # var
                        mov              rdx, qword ptr [rbp + 3648]                    # val
                        mov              rcx, qword ptr [rbp + 3656]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n144_unmark_α
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                                                                                        jmp   n143_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n143_conjunction_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n144_unmark_α
n143_conjunction_β:
                                                                                        jmp   n144_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n144_unmark_α:
                        mov              rsp, qword ptr [rbp + 3520]
                                                                                        jmp   n130_to_β
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [1879052288]                    # rtest__STATIC__L
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3424], rax                    # result
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n146_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3400], rax
                        .section         .rodata
.Lrkfn342:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]                         # fn
                        lea              rsi, [rbp + 3392]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        cmp              eax, 104
                                                                                        je    n1_call_builtin_icon_α
                                                                                        jmp   n147_assign_α
n146_call_builtin_icon_β:
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              rdx, qword ptr [rbp + 3384]
                        mov              qword ptr [1879052304], rax                    # rtest__STATIC__S
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                                                                                        jmp   n107_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_β:
                                                                                        jmp   proc_rtest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_rtest_dcα:
                        pop              r11
                        sub              rsp, 4336
                        mov              qword ptr [rsp + 4312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 4288], r11
                        lea              rax, [rip + .Lx344_2]
                        mov              qword ptr [rbp + 4296], rax
                        lea              rax, [rip + .Lx344_3]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 4256                                      # suffix_off
                        mov              edx, 4288                                      # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_rtest_α_body
.Lx344_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -4320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx344_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -4320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "r10(a,b,c,d,e,f,g,h,i,j)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "rtest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_rtest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_rtest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "rtest__STATIC__L"
.Lgvan1:                .string          "rtest__STATIC__S"
.Lgvan2:                .string          "rtest__STATIC__T"
.Lgvan3:                .string          "rtest__STATIC__R"
.Lgvan4:                .string          "rtest__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 5
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 5
                        call             gva_register@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx359_2
.Lx359_2:
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n346_keyword_icon_α
                                                                                        jmp   n346_keyword_icon_α
n345_call_proc_staged_β:
                                                                                        jmp   n346_keyword_icon_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n346_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx360_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n348_call_proc_staged_α
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                                                                                        jmp   n347_assign_α
n346_keyword_icon_β:
                                                                                        jmp   n348_call_proc_staged_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "&random"
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                                                                                        jmp   n348_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx363_2
.Lx363_2:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n349_lit_integer_α
                                                                                        jmp   n349_lit_integer_α
n348_call_proc_staged_β:
                                                                                        jmp   n349_lit_integer_α
.Lx363_0:
                        .quad            .Lx363_0_s
.Lx363_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rsp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n350_keyword_assign_α
.Lx364_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n350_keyword_assign_α:
                        mov              rdi, qword ptr [rsp + 144]                     # v
                        mov              rsi, qword ptr [rsp + 152]                     # v
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 104
                                                                                        je    n351_call_proc_staged_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                                                                                        jmp   n351_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx367_2
.Lx367_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n352_var_α
                                                                                        jmp   n352_var_α
n351_call_proc_staged_β:
                                                                                        jmp   n352_var_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n352_var_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n353_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n353_keyword_assign_α:
                        mov              rdi, qword ptr [rsp + 80]                      # v
                        mov              rsi, qword ptr [rsp + 88]                      # v
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 104
                                                                                        je    n354_call_proc_staged_α
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n354_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx372_2
.Lx372_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n355_lit_integer_α
                                                                                        jmp   n355_lit_integer_α
n354_call_proc_staged_β:
                                                                                        jmp   n355_lit_integer_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n356_keyword_assign_α
.Lx373_0:
                        .quad            11213
#-----------------------------------------------------------------------------------------------------------------------
n356_keyword_assign_α:
                        mov              rdi, qword ptr [rsp + 16]                      # v
                        mov              rsi, qword ptr [rsp + 24]                      # v
                        call             rt_keyword_random_set@PLT
                        cmp              eax, 104
                                                                                        je    n357_call_proc_staged_α
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n357_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        call             proc_rtest_dcα
                                                                                        jmp   .Lx376_2
.Lx376_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx376_240
                        add              rsp, 240
                                                                                        jmp   main_ω
.Lx376_240:
                        add              rsp, 240
                                                                                        jmp   main_ω
n357_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "rtest"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
