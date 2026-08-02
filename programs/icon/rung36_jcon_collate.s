                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_collate_α
proc_collate_α:
proc_collate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 2272], 0
                        mov              qword ptr [rbp + 2280], 0
                        mov              dword ptr [rbp + 2288], 0
                                                                                        jmp   n1_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 0
                                                                                        jne   .Lx157_0
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n48_disjunction_α
.Lx157_0:
                                                                                        jmp   n48_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 2288]
                                                                                        jmp   n48_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 2288], 1
                        mov              eax, dword ptr [rbp + 2288]
                                                                                        jmp   n48_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052368                                # collate__INITFLAG__0
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n2_nulltest_var_α
n1_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 3072]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 3072]                    # d
                        mov              rsi, qword ptr [rbp + 3080]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 3120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n4_assign_var_α
.Lx161_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3088]                    # var
                        mov              rsi, qword ptr [rbp + 3096]                    # var
                        mov              rdx, qword ptr [rbp + 3120]                    # val
                        mov              rcx, qword ptr [rbp + 3128]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 3056], 2                      # result
                        mov              dword ptr [rbp + 3060], 4
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n6_assign_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "abxy"
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              rdx, qword ptr [rbp + 3064]
                        mov              qword ptr [1879052288], rax                    # collate__STATIC__llabels
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 3040], 2                      # result
                        mov              dword ptr [rbp + 3044], 4
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n8_assign_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "cduv"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              rdx, qword ptr [rbp + 3048]
                        mov              qword ptr [1879052304], rax                    # collate__STATIC__rlabels
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [1879052288]                    # collate__STATIC__llabels
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3008], rax                    # result
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [1879052304]                    # collate__STATIC__rlabels
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 3024], rax                    # result
                        mov              qword ptr [rbp + 3032], rdx
                                                                                        jmp   n11_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              rdi, qword ptr [rbp + 3008]                    # a
                        mov              rsi, qword ptr [rbp + 3016]                    # a
                        mov              rdx, qword ptr [rbp + 3024]                    # b
                        mov              rcx, qword ptr [rbp + 3032]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n12_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              rdx, qword ptr [rbp + 3000]
                        mov              qword ptr [1879052336], rax                    # collate__STATIC__blabels
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2976], 2                      # result
                        mov              dword ptr [rbp + 2980], 8
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n14_assign_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "acbdxuyv"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              rdx, qword ptr [rbp + 2984]
                        mov              qword ptr [1879052320], rax                    # collate__STATIC__clabels
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 2960], 3                      # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n16_assign_α
.Lx173_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        mov              qword ptr [1879052352], rax                    # collate__STATIC__half
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n17_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx175_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n25_keyword_icon_α
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n18_keyword_icon_α
n17_keyword_icon_β:
                                                                                        jmp   n25_keyword_icon_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n18_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx176_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n25_keyword_icon_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n19_unop_α
n18_keyword_icon_β:
                                                                                        jmp   n25_keyword_icon_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_α:
                        mov              rdi, qword ptr [rbp + 2912]                    # lo
                        mov              rsi, qword ptr [rbp + 2920]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 3                      # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n21_coerce_numeric_α
.Lx178_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 5
                                                                                        je    .Lx180_1
                        cmp              eax, 3
                                                                                        jne   .Lx180_0
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 3
                                                                                        jne   .Lx180_0
.Lx180_1:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n22_binop_α
.Lx180_0:
                        lea              rdi, [rbp + 2896]                              # self
                        lea              rsi, [rbp + 2944]                              # other
                        lea              rdx, [rbp + 2880]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n22_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        mov              rdx, qword ptr [rbp + 2944]
                        mov              rcx, qword ptr [rbp + 2952]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n25_keyword_icon_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn183:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]                         # fn
                        lea              rsi, [rbp + 2784]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 104
                                                                                        je    n25_keyword_icon_α
                                                                                        jmp   n24_assign_α
n23_call_builtin_icon_β:
                                                                                        jmp   n25_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   n25_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx185_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n33_var_α
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n26_keyword_icon_α
n25_keyword_icon_β:
                                                                                        jmp   n33_var_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n26_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx186_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n33_var_α
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n27_unop_α
n26_keyword_icon_β:
                                                                                        jmp   n33_var_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n27_unop_α:
                        mov              rdi, qword ptr [rbp + 2720]                    # lo
                        mov              rsi, qword ptr [rbp + 2728]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n29_coerce_numeric_α
.Lx188_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 5
                                                                                        je    .Lx190_1
                        cmp              eax, 3
                                                                                        jne   .Lx190_0
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 3
                                                                                        jne   .Lx190_0
.Lx190_1:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n30_binop_α
.Lx190_0:
                        lea              rdi, [rbp + 2704]                              # self
                        lea              rsi, [rbp + 2752]                              # other
                        lea              rdx, [rbp + 2688]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, qword ptr [rbp + 2752]
                        mov              rcx, qword ptr [rbp + 2760]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n33_var_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n31_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn193:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]                         # fn
                        lea              rsi, [rbp + 2592]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 104
                                                                                        je    n33_var_α
                                                                                        jmp   n32_assign_α
n31_call_builtin_icon_β:
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n35_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α:
                        lea              rsi, [rbp + 2544]
                        lea              rdx, [rbp + 2560]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx200_2
.Lx200_2:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n37_var_α
                                                                                        jmp   n36_assign_α
n35_call_proc_staged_β:
                                                                                        jmp   n37_var_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [1879052320], rax                    # collate__STATIC__clabels
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [1879052288], rax                    # collate__STATIC__llabels
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [1879052304], rax                    # collate__STATIC__rlabels
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n41_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx208_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n44_var_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n42_call_builtin_icon_α
n41_keyword_icon_β:
                                                                                        jmp   n44_var_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn210:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]                         # fn
                        lea              rsi, [rbp + 2384]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 104
                                                                                        je    n44_var_α
                                                                                        jmp   n43_assign_α
n42_call_builtin_icon_β:
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        mov              qword ptr [1879052336], rax                    # collate__STATIC__blabels
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [1879052288]                    # collate__STATIC__llabels
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2352], rax                    # result
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n45_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n45_unop_α:
                        mov              rdi, qword ptr [rbp + 2352]                    # lo
                        mov              rsi, qword ptr [rbp + 2360]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n46_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        mov              qword ptr [1879052352], rax                    # collate__STATIC__half
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n47_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n47_conjunction_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n0_disjunction_as
n47_conjunction_β:
                                                                                        jmp   n48_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:
                        mov              qword ptr [rbp + 1440], 0
                        mov              qword ptr [rbp + 1448], 0
                        mov              dword ptr [rbp + 1456], 0
                                                                                        jmp   n76_var_α
n48_disjunction_as:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        jne   .Lx217_0
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n100_var_α
.Lx217_0:
                        cmp              eax, 1
                                                                                        jne   .Lx217_1
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n100_var_α
.Lx217_1:
                                                                                        jmp   n100_var_α
n48_disjunction_β:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        je    n100_var_α
                                                                                        jmp   n49_disjunction_β
n48_disjunction_af:
                        add              dword ptr [rbp + 1456], 1
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 1
                                                                                        je    n49_disjunction_α
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              dword ptr [rbp + 1856], 0
                                                                                        jmp   n52_var_α
n49_disjunction_as:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0
                                                                                        jne   .Lx219_0
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n48_disjunction_as
.Lx219_0:
                        cmp              eax, 1
                                                                                        jne   .Lx219_1
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n48_disjunction_as
.Lx219_1:
                                                                                        jmp   n48_disjunction_as
n49_disjunction_β:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0
                                                                                        je    n100_var_α
                                                                                        jmp   n100_var_α
n49_disjunction_af:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 1
                                                                                        je    n50_lit_string_α
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 2256], 2                      # result
                        mov              dword ptr [rbp + 2260], 0
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n51_assign_α
n50_lit_string_β:
                                                                                        jmp   n100_var_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n49_disjunction_as
n51_assign_β:
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n53_unop_α
n52_var_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n55_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n55_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n56_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_test_α:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 112
                                                                                        je    .Lx228_0
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 112
                                                                                        je    .Lx228_0
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 3
                                                                                        jne   .Lx228_2
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 3
                                                                                        jne   .Lx228_2
.Lx228_1:
                        mov              rax, qword ptr [rbp + 2184]
                        mov              rcx, qword ptr [rbp + 2216]
                        cmp              rax, rcx
                                                                                        jle   n49_disjunction_af
                        mov              rcx, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rcx
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rcx
                                                                                        jmp   n57_var_α
.Lx228_0:
                        mov              rdi, qword ptr [rbp + 2176]                    # a
                        mov              rsi, qword ptr [rbp + 2184]                    # a
                        mov              rdx, qword ptr [rbp + 2208]                    # b
                        mov              rcx, qword ptr [rbp + 2216]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 2160]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx228_1
                        cmp              eax, 1
                                                                                        je    n49_disjunction_af
                                                                                        jmp   n57_var_α
.Lx228_2:
                        mov              rdi, qword ptr [rbp + 2176]                    # lhs
                        mov              rsi, qword ptr [rbp + 2184]                    # lhs
                        mov              rdx, qword ptr [rbp + 2208]                    # rhs
                        mov              rcx, qword ptr [rbp + 2216]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n49_disjunction_af
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n59_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n59_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n61_coerce_numeric_α
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n61_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 5
                                                                                        je    .Lx236_1
                        cmp              eax, 3
                                                                                        jne   .Lx236_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 3
                                                                                        jne   .Lx236_0
.Lx236_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n62_binop_α
.Lx236_0:
                        lea              rdi, [rbp + 2096]                              # self
                        lea              rsi, [rbp + 2128]                              # other
                        lea              rdx, [rbp + 2080]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n62_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 3
                                                                                        jne   .Lx237_0
                        mov              rax, qword ptr [rbp + 2088]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2064], 3
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n63_lit_integer_α
.Lx237_0:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n66_var_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 3                      # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n64_subscript_α
.Lx238_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_subscript_α:
                        mov              rdi, qword ptr [rbp + 2048]                    # arr
                        mov              rsi, qword ptr [rbp + 2056]                    # arr
                        mov              rdx, qword ptr [rbp + 2064]                    # i
                        mov              rcx, qword ptr [rbp + 2072]                    # i
                        mov              r8, qword ptr [rbp + 2144]                     # j
                        mov              r9, qword ptr [rbp + 2152]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n66_var_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n65_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n66_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n68_var_α
.Lx243_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n69_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 3                      # result
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n71_coerce_numeric_α
.Lx247_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 5
                                                                                        je    .Lx249_1
                        cmp              eax, 3
                                                                                        jne   .Lx249_0
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 3
                                                                                        jne   .Lx249_0
.Lx249_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n72_binop_α
.Lx249_0:
                        lea              rdi, [rbp + 1984]                              # self
                        lea              rsi, [rbp + 2016]                              # other
                        lea              rdx, [rbp + 1968]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n72_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 3
                                                                                        jne   .Lx250_0
                        mov              rax, qword ptr [rbp + 1976]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1952], 3
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n73_subscript_α
.Lx250_0:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2016]
                        mov              rcx, qword ptr [rbp + 2024]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n100_var_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n73_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:
                        mov              rdi, qword ptr [rbp + 1920]                    # arr
                        mov              rsi, qword ptr [rbp + 1928]                    # arr
                        mov              rdx, qword ptr [rbp + 1936]                    # i
                        mov              rcx, qword ptr [rbp + 1944]                    # i
                        mov              r8, qword ptr [rbp + 1952]                     # j
                        mov              r9, qword ptr [rbp + 1960]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n100_var_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n74_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n75_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n75_conjunction_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n49_disjunction_as
n75_conjunction_β:
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n77_unop_α
n76_var_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n79_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n79_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n80_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_test_α:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 112
                                                                                        je    .Lx260_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 112
                                                                                        je    .Lx260_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 3
                                                                                        jne   .Lx260_2
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx260_2
.Lx260_1:
                        mov              rax, qword ptr [rbp + 1784]
                        mov              rcx, qword ptr [rbp + 1816]
                        cmp              rax, rcx
                                                                                        jle   n48_disjunction_af
                        mov              rcx, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rcx
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rcx
                                                                                        jmp   n81_var_α
.Lx260_0:
                        mov              rdi, qword ptr [rbp + 1776]                    # a
                        mov              rsi, qword ptr [rbp + 1784]                    # a
                        mov              rdx, qword ptr [rbp + 1808]                    # b
                        mov              rcx, qword ptr [rbp + 1816]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 1760]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx260_1
                        cmp              eax, 1
                                                                                        je    n48_disjunction_af
                                                                                        jmp   n81_var_α
.Lx260_2:
                        mov              rdi, qword ptr [rbp + 1776]                    # lhs
                        mov              rsi, qword ptr [rbp + 1784]                    # lhs
                        mov              rdx, qword ptr [rbp + 1808]                    # rhs
                        mov              rcx, qword ptr [rbp + 1816]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n48_disjunction_af
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n83_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n83_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n85_coerce_numeric_α
.Lx266_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 5
                                                                                        je    .Lx268_1
                        cmp              eax, 3
                                                                                        jne   .Lx268_0
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 3
                                                                                        jne   .Lx268_0
.Lx268_1:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n86_binop_α
.Lx268_0:
                        lea              rdi, [rbp + 1696]                              # self
                        lea              rsi, [rbp + 1728]                              # other
                        lea              rdx, [rbp + 1680]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n86_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 3
                                                                                        jne   .Lx269_0
                        mov              rax, qword ptr [rbp + 1688]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1664], 3
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n87_lit_integer_α
.Lx269_0:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n90_var_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 3                      # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n88_subscript_α
.Lx270_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n88_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]                    # arr
                        mov              rsi, qword ptr [rbp + 1656]                    # arr
                        mov              rdx, qword ptr [rbp + 1664]                    # i
                        mov              rcx, qword ptr [rbp + 1672]                    # i
                        mov              r8, qword ptr [rbp + 1744]                     # j
                        mov              r9, qword ptr [rbp + 1752]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n90_var_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n89_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n91_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n92_var_α
.Lx275_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n93_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n94_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 1616], 3                      # result
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n95_coerce_numeric_α
.Lx279_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 5
                                                                                        je    .Lx281_1
                        cmp              eax, 3
                                                                                        jne   .Lx281_0
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 3
                                                                                        jne   .Lx281_0
.Lx281_1:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n96_binop_α
.Lx281_0:
                        lea              rdi, [rbp + 1584]                              # self
                        lea              rsi, [rbp + 1616]                              # other
                        lea              rdx, [rbp + 1568]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n96_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 3
                                                                                        jne   .Lx282_0
                        mov              rax, qword ptr [rbp + 1576]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1552], 3
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n97_subscript_α
.Lx282_0:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n100_var_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n97_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n97_subscript_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # arr
                        mov              rsi, qword ptr [rbp + 1528]                    # arr
                        mov              rdx, qword ptr [rbp + 1536]                    # i
                        mov              rcx, qword ptr [rbp + 1544]                    # i
                        mov              r8, qword ptr [rbp + 1552]                     # j
                        mov              r9, qword ptr [rbp + 1560]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n100_var_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n98_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n99_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_conjunction_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n48_disjunction_as
n99_conjunction_β:
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n101_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n101_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n102_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n103_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n103_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n133_var_α
n103_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx291_0
                                                                                        jmp   proc_collate_ω
.Lx291_0:
                        cmp              eax, 1
                                                                                        jne   .Lx291_1
                                                                                        jmp   proc_collate_ω
.Lx291_1:
                                                                                        jmp   proc_collate_ω
n103_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_collate_ω
                                                                                        jmp   proc_collate_ω
n103_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n104_var_α
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [1879052320]                    # collate__STATIC__clabels
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 752], rax                     # result
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n105_var_α
n104_var_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [1879052336]                    # collate__STATIC__blabels
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 768], rax                     # result
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [1879052352]                    # collate__STATIC__half
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 880], rax                     # result
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n108_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn298:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n109_var_α
n108_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:
                        mov              rax, qword ptr [1879052352]                    # collate__STATIC__half
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 976], rax                     # result
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n111_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn303:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]                         # fn
                        lea              rsi, [rbp + 912]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n112_binop_α
n111_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:
                        mov              rdi, qword ptr [rbp + 800]                     # a
                        mov              rsi, qword ptr [rbp + 808]                     # a
                        mov              rdx, qword ptr [rbp + 896]                     # b
                        mov              rcx, qword ptr [rbp + 904]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn306:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]                         # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n114_var_α
n113_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n116_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [1879052352]                    # collate__STATIC__half
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1200], rax                    # result
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n117_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n117_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 5
                                                                                        je    .Lx313_1
                        cmp              eax, 3
                                                                                        jne   .Lx313_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 3
                                                                                        jne   .Lx313_0
.Lx313_1:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n118_coerce_numeric_α
.Lx313_0:
                        lea              rdi, [rbp + 3136]                              # self
                        lea              rsi, [rbp + 1200]                              # other
                        lea              rdx, [rbp + 1168]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n118_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n118_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 5
                                                                                        je    .Lx315_1
                        cmp              eax, 3
                                                                                        jne   .Lx315_0
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 3
                                                                                        jne   .Lx315_0
.Lx315_1:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n119_binop_α
.Lx315_0:
                        lea              rdi, [rbp + 1200]                              # self
                        lea              rsi, [rbp + 3136]                              # other
                        lea              rdx, [rbp + 1152]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n119_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 3
                                                                                        jne   .Lx316_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 3
                                                                                        jne   .Lx316_0
                        mov              rax, qword ptr [rbp + 1176]
                        mov              rcx, qword ptr [rbp + 1160]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1136], 3
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n120_call_builtin_icon_α
.Lx316_0:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn318:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n121_var_α
n120_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n122_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n123_var_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:
                        mov              rax, qword ptr [1879052352]                    # collate__STATIC__half
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1360], rax                    # result
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n124_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n124_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 5
                                                                                        je    .Lx325_1
                        cmp              eax, 3
                                                                                        jne   .Lx325_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 3
                                                                                        jne   .Lx325_0
.Lx325_1:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n125_coerce_numeric_α
.Lx325_0:
                        lea              rdi, [rbp + 3136]                              # self
                        lea              rsi, [rbp + 1360]                              # other
                        lea              rdx, [rbp + 1328]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n125_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n125_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 5
                                                                                        je    .Lx327_1
                        cmp              eax, 3
                                                                                        jne   .Lx327_0
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 3
                                                                                        jne   .Lx327_0
.Lx327_1:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n126_binop_α
.Lx327_0:
                        lea              rdi, [rbp + 1360]                              # self
                        lea              rsi, [rbp + 3136]                              # other
                        lea              rdx, [rbp + 1312]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n126_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 3
                                                                                        jne   .Lx328_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 3
                                                                                        jne   .Lx328_0
                        mov              rax, qword ptr [rbp + 1336]
                        mov              rcx, qword ptr [rbp + 1320]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1296], 3
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n127_call_builtin_icon_α
.Lx328_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n127_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn330:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]                         # fn
                        lea              rsi, [rbp + 1232]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n128_call_proc_staged_α
n127_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 1216]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx332_2
.Lx332_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n129_binop_α
n128_call_proc_staged_β:
                                                                                        jmp   proc_collate_ω
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:
                        mov              rdi, qword ptr [rbp + 672]                     # a
                        mov              rsi, qword ptr [rbp + 680]                     # a
                        mov              rdx, qword ptr [rbp + 992]                     # b
                        mov              rcx, qword ptr [rbp + 1000]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n130_var_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n131_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n131_binop_α:
                        mov              rdi, qword ptr [rbp + 656]                     # a
                        mov              rsi, qword ptr [rbp + 664]                     # a
                        mov              rdx, qword ptr [rbp + 3152]                    # b
                        mov              rcx, qword ptr [rbp + 3160]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n132_return_α
#-----------------------------------------------------------------------------------------------------------------------
n132_return_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_collate_γ
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n134_var_α
n133_var_β:
                                                                                        jmp   n103_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [1879052352]                    # collate__STATIC__half
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 624], rax                     # result
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n135_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n135_binop_test_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 112
                                                                                        je    .Lx341_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 112
                                                                                        je    .Lx341_0
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 3
                                                                                        jne   .Lx341_2
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 3
                                                                                        jne   .Lx341_2
.Lx341_1:
                        mov              rax, qword ptr [rbp + 3144]
                        mov              rcx, qword ptr [rbp + 632]
                        cmp              rax, rcx
                                                                                        jg    n103_disjunction_af
                        mov              rcx, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rcx
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rcx
                                                                                        jmp   n136_var_α
.Lx341_0:
                        mov              rdi, qword ptr [rbp + 3136]                    # a
                        mov              rsi, qword ptr [rbp + 3144]                    # a
                        mov              rdx, qword ptr [rbp + 624]                     # b
                        mov              rcx, qword ptr [rbp + 632]                     # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 592]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx341_1
                        cmp              eax, 1
                                                                                        je    n103_disjunction_af
                                                                                        jmp   n136_var_α
.Lx341_2:
                        mov              rdi, qword ptr [rbp + 3136]                    # lhs
                        mov              rsi, qword ptr [rbp + 3144]                    # lhs
                        mov              rdx, qword ptr [rbp + 624]                     # rhs
                        mov              rcx, qword ptr [rbp + 632]                     # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n103_disjunction_af
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              rax, qword ptr [1879052320]                    # collate__STATIC__clabels
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 240], rax                     # result
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n137_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n138_var_α
.Lx343_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n139_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n139_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 5
                                                                                        je    .Lx347_1
                        cmp              eax, 3
                                                                                        jne   .Lx347_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx347_0
.Lx347_1:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n140_binop_α
.Lx347_0:
                        lea              rdi, [rbp + 3136]                              # self
                        lea              rsi, [rbp + 288]                               # other
                        lea              rdx, [rbp + 272]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n140_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx348_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 280]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 256], 3
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n141_call_builtin_icon_α
.Lx348_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n141_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn350:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n142_var_α
n141_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [1879052288]                    # collate__STATIC__llabels
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 400], rax                     # result
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n143_var_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n144_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn355:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]                         # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n145_var_α
n144_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [1879052304]                    # collate__STATIC__rlabels
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 496], rax                     # result
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n147_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn360:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n148_binop_α
n147_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:
                        mov              rdi, qword ptr [rbp + 336]                     # a
                        mov              rsi, qword ptr [rbp + 344]                     # a
                        mov              rdx, qword ptr [rbp + 432]                     # b
                        mov              rcx, qword ptr [rbp + 440]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n151_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn368:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_collate_ω
                                                                                        jmp   n153_var_α
n152_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n154_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # a
                        mov              rsi, qword ptr [rbp + 104]                     # a
                        mov              rdx, qword ptr [rbp + 3152]                    # b
                        mov              rcx, qword ptr [rbp + 3160]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n155_return_α
#-----------------------------------------------------------------------------------------------------------------------
n155_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_collate_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_collate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_collate_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_collate_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_collate_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_collate_dcα:
                        pop              r11
                        sub              rsp, 3264
                        mov              qword ptr [rsp + 3240], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3216], r11
                        lea              rax, [rip + .Lx373_2]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rax, [rip + .Lx373_3]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 3136                                      # suffix_off
                        mov              edx, 3216                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_collate_α_body
.Lx373_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx373_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3248
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_decollate_α
proc_decollate_α:
proc_decollate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n374_disjunction_α:
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              dword ptr [rbp + 1504], 0
                                                                                        jmp   n375_var_ref_α
n374_disjunction_as:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0
                                                                                        jne   .Lx484_0
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n402_var_α
.Lx484_0:
                                                                                        jmp   n402_var_α
n374_disjunction_β:
                        mov              eax, dword ptr [rbp + 1504]
                                                                                        jmp   n402_var_α
n374_disjunction_af:
                        add              dword ptr [rbp + 1504], 1
                        mov              eax, dword ptr [rbp + 1504]
                                                                                        jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052432                                # decollate__INITFLAG__0
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n376_nulltest_var_α
n375_var_ref_β:
                                                                                        jmp   n374_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n376_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 104
                                                                                        je    n374_disjunction_af
                        mov              rdi, qword ptr [rbp + 2048]                    # d
                        mov              rsi, qword ptr [rbp + 2056]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n374_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n374_disjunction_af
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n377_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n378_assign_var_α
.Lx488_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n378_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2064]                    # var
                        mov              rsi, qword ptr [rbp + 2072]                    # var
                        mov              rdx, qword ptr [rbp + 2096]                    # val
                        mov              rcx, qword ptr [rbp + 2104]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n374_disjunction_af
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n379_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n379_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx490_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n380_lit_integer_α
n379_keyword_icon_β:
                                                                                        jmp   n395_keyword_icon_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n381_lit_integer_α
.Lx491_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 3                      # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n382_subscript_α
.Lx492_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n382_subscript_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # arr
                        mov              rsi, qword ptr [rbp + 1752]                    # arr
                        mov              rdx, qword ptr [rbp + 1776]                    # i
                        mov              rcx, qword ptr [rbp + 1784]                    # i
                        mov              r8, qword ptr [rbp + 1792]                     # j
                        mov              r9, qword ptr [rbp + 1800]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n383_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n383_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx494_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n384_lit_integer_α
n383_keyword_icon_β:
                                                                                        jmp   n395_keyword_icon_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:
                        mov              qword ptr [rbp + 1904], 3                      # result
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n385_subscript_α
.Lx495_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:
                        mov              rdi, qword ptr [rbp + 1872]                    # base
                        mov              rsi, qword ptr [rbp + 1880]                    # base
                        mov              rdx, qword ptr [rbp + 1904]                    # idx
                        mov              rcx, qword ptr [rbp + 1912]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n386_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_deref_α:
                        mov              rdi, qword ptr [rbp + 1920]                    # d
                        mov              rsi, qword ptr [rbp + 1928]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n387_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n387_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx498_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n388_unop_α
n387_keyword_icon_β:
                                                                                        jmp   n395_keyword_icon_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n388_unop_α:
                        mov              rdi, qword ptr [rbp + 2000]                    # lo
                        mov              rsi, qword ptr [rbp + 2008]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n389_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:
                        mov              qword ptr [rbp + 2032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n390_coerce_numeric_α
.Lx500_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n390_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 5
                                                                                        je    .Lx502_1
                        cmp              eax, 3
                                                                                        jne   .Lx502_0
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 3
                                                                                        jne   .Lx502_0
.Lx502_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n391_binop_α
.Lx502_0:
                        lea              rdi, [rbp + 1984]                              # self
                        lea              rsi, [rbp + 2032]                              # other
                        lea              rdx, [rbp + 1968]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n391_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n391_binop_α:
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 3
                                                                                        jne   .Lx503_0
                        mov              rax, qword ptr [rbp + 1976]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1952], 3
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n392_call_builtin_icon_α
.Lx503_0:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n392_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn505:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]                         # fn
                        lea              rsi, [rbp + 1824]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                                                                                        jmp   n393_call_proc_staged_α
n392_call_builtin_icon_β:
                                                                                        jmp   n395_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n393_call_proc_staged_α:
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1808]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx507_2
.Lx507_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n395_keyword_icon_α
                                                                                        jmp   n394_assign_α
n393_call_proc_staged_β:
                                                                                        jmp   n395_keyword_icon_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n394_assign_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        mov              qword ptr [1879052400], rax                    # decollate__STATIC__image
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n395_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n395_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx509_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n398_var_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n396_call_builtin_icon_α
n395_keyword_icon_β:
                                                                                        jmp   n398_var_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn511:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]                         # fn
                        lea              rsi, [rbp + 1600]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n398_var_α
                                                                                        jmp   n397_assign_α
n396_call_builtin_icon_β:
                                                                                        jmp   n398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n397_assign_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [1879052416], rax                    # decollate__STATIC__object
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n398_var_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_α:
                        mov              rax, qword ptr [1879052400]                    # decollate__STATIC__image
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1568], rax                    # result
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n399_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n399_unop_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # lo
                        mov              rsi, qword ptr [rbp + 1576]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n400_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n400_assign_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              qword ptr [1879052384], rax                    # decollate__STATIC__dsize
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n401_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n401_conjunction_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n374_disjunction_as
n401_conjunction_β:
                                                                                        jmp   n402_var_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n403_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n404_coerce_numeric_α
.Lx519_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n404_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx521_1
                        cmp              eax, 3
                                                                                        jne   .Lx521_0
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 3
                                                                                        jne   .Lx521_0
.Lx521_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n405_binop_α
.Lx521_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 1472]                              # other
                        lea              rdx, [rbp + 1440]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n405_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n405_binop_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1480]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n407_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n406_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n406_assign_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n408_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n408_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n409_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n409_assign_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n410_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n410_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n453_var_α
n410_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx529_0
                                                                                        jmp   proc_decollate_ω
.Lx529_0:
                        cmp              eax, 1
                                                                                        jne   .Lx529_1
                                                                                        jmp   proc_decollate_ω
.Lx529_1:
                                                                                        jmp   proc_decollate_ω
n410_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_decollate_ω
                                                                                        jmp   proc_decollate_ω
n410_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n411_var_α
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:
                        mov              rax, qword ptr [1879052416]                    # decollate__STATIC__object
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 720], rax                     # result
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n412_lit_integer_α
n411_var_β:
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:
                        mov              qword ptr [rbp + 736], 3                       # result
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n413_var_α
.Lx531_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:
                        mov              rax, qword ptr [1879052384]                    # decollate__STATIC__dsize
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 816], rax                     # result
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n414_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n415_coerce_numeric_α
.Lx533_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n415_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 5
                                                                                        je    .Lx535_1
                        cmp              eax, 3
                                                                                        jne   .Lx535_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 3
                                                                                        jne   .Lx535_0
.Lx535_1:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n416_binop_α
.Lx535_0:
                        lea              rdi, [rbp + 816]                               # self
                        lea              rsi, [rbp + 832]                               # other
                        lea              rdx, [rbp + 800]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n416_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n416_binop_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 3
                                                                                        jne   .Lx536_0
                        mov              rax, qword ptr [rbp + 808]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n417_lit_integer_α
.Lx536_0:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n418_coerce_numeric_α
.Lx537_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n418_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 5
                                                                                        je    .Lx539_1
                        cmp              eax, 3
                                                                                        jne   .Lx539_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 3
                                                                                        jne   .Lx539_0
.Lx539_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n419_binop_α
.Lx539_0:
                        lea              rdi, [rbp + 784]                               # self
                        lea              rsi, [rbp + 848]                               # other
                        lea              rdx, [rbp + 768]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n419_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n419_binop_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n420_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n420_binop_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 3
                                                                                        jne   .Lx541_0
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 760]
                        add              rax, rcx
                        mov              qword ptr [rbp + 864], 3
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n421_subscript_α
.Lx541_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n421_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n421_subscript_α:
                        mov              rdi, qword ptr [rbp + 720]                     # arr
                        mov              rsi, qword ptr [rbp + 728]                     # arr
                        mov              rdx, qword ptr [rbp + 736]                     # i
                        mov              rcx, qword ptr [rbp + 744]                     # i
                        mov              r8, qword ptr [rbp + 864]                      # end
                        mov              r9, qword ptr [rbp + 872]                      # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n422_var_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_α:
                        mov              rax, qword ptr [1879052400]                    # decollate__STATIC__image
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 896], rax                     # result
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n424_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_integer_α:
                        mov              qword ptr [rbp + 960], 3                       # result
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n425_coerce_numeric_α
.Lx546_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n425_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx548_1
                        cmp              eax, 3
                                                                                        jne   .Lx548_0
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 3
                                                                                        jne   .Lx548_0
.Lx548_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n426_binop_α
.Lx548_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 960]                               # other
                        lea              rdx, [rbp + 928]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n426_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n426_binop_α:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 3
                                                                                        jne   .Lx549_0
                        mov              rax, qword ptr [rbp + 936]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 912], 3
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n427_var_α
.Lx549_0:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n427_var_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:
                        mov              rax, qword ptr [1879052384]                    # decollate__STATIC__dsize
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1008], rax                    # result
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n428_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n429_coerce_numeric_α
.Lx551_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n429_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 5
                                                                                        je    .Lx553_1
                        cmp              eax, 3
                                                                                        jne   .Lx553_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 3
                                                                                        jne   .Lx553_0
.Lx553_1:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n430_binop_α
.Lx553_0:
                        lea              rdi, [rbp + 1008]                              # self
                        lea              rsi, [rbp + 1024]                              # other
                        lea              rdx, [rbp + 992]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n430_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n430_binop_α:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 3
                                                                                        jne   .Lx554_0
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 976], 3
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n431_binop_α
.Lx554_0:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n431_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n431_binop_α:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx555_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 3
                                                                                        jne   .Lx555_0
                        mov              rax, qword ptr [rbp + 920]
                        mov              rcx, qword ptr [rbp + 984]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 3
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n432_subscript_α
.Lx555_0:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n432_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n432_subscript_α:
                        mov              rdi, qword ptr [rbp + 896]                     # arr
                        mov              rsi, qword ptr [rbp + 904]                     # arr
                        mov              rdx, qword ptr [rbp + 912]                     # i
                        mov              rcx, qword ptr [rbp + 920]                     # i
                        mov              r8, qword ptr [rbp + 1040]                     # end
                        mov              r9, qword ptr [rbp + 1048]                     # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n434_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n435_var_α
.Lx559_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:
                        mov              rax, qword ptr [1879052384]                    # decollate__STATIC__dsize
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1136], rax                    # result
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n436_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n437_coerce_numeric_α
.Lx561_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n437_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 5
                                                                                        je    .Lx563_1
                        cmp              eax, 3
                                                                                        jne   .Lx563_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 3
                                                                                        jne   .Lx563_0
.Lx563_1:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n438_binop_α
.Lx563_0:
                        lea              rdi, [rbp + 1136]                              # self
                        lea              rsi, [rbp + 1152]                              # other
                        lea              rdx, [rbp + 1120]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n438_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n438_binop_α:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 3
                                                                                        jne   .Lx564_0
                        mov              rax, qword ptr [rbp + 1128]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1104], 3
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n439_binop_α
.Lx564_0:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n439_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n439_binop_α:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 3
                                                                                        jne   .Lx565_0
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 1112]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1168], 3
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n440_subscript_α
.Lx565_0:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n440_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n440_subscript_α:
                        mov              rdi, qword ptr [rbp + 1072]                    # arr
                        mov              rsi, qword ptr [rbp + 1080]                    # arr
                        mov              rdx, qword ptr [rbp + 1088]                    # i
                        mov              rcx, qword ptr [rbp + 1096]                    # i
                        mov              r8, qword ptr [rbp + 1168]                     # end
                        mov              r9, qword ptr [rbp + 1176]                     # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n441_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn568:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]                         # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                                                                                        jmp   n442_var_α
n441_call_builtin_icon_β:
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        mov              rax, qword ptr [1879052384]                    # decollate__STATIC__dsize
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1312], rax                    # result
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n444_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n445_coerce_numeric_α
.Lx572_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n445_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 5
                                                                                        je    .Lx574_1
                        cmp              eax, 3
                                                                                        jne   .Lx574_0
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 3
                                                                                        jne   .Lx574_0
.Lx574_1:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n446_binop_α
.Lx574_0:
                        lea              rdi, [rbp + 1312]                              # self
                        lea              rsi, [rbp + 1328]                              # other
                        lea              rdx, [rbp + 1296]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n446_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n446_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 3
                                                                                        jne   .Lx575_0
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1280], 3
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n447_lit_integer_α
.Lx575_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n447_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n448_subscript_α
.Lx576_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n448_subscript_α:
                        mov              rdi, qword ptr [rbp + 1264]                    # arr
                        mov              rsi, qword ptr [rbp + 1272]                    # arr
                        mov              rdx, qword ptr [rbp + 1280]                    # i
                        mov              rcx, qword ptr [rbp + 1288]                    # i
                        mov              r8, qword ptr [rbp + 1344]                     # j
                        mov              r9, qword ptr [rbp + 1352]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n450_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_proc_staged_α:
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1360]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx581_2
.Lx581_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                                                                                        jmp   n451_binop_α
n450_call_proc_staged_β:
                                                                                        jmp   proc_decollate_ω
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n451_binop_α:
                        mov              rdi, qword ptr [rbp + 624]                     # a
                        mov              rsi, qword ptr [rbp + 632]                     # a
                        mov              rdx, qword ptr [rbp + 1184]                    # b
                        mov              rcx, qword ptr [rbp + 1192]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n452_return_α
#-----------------------------------------------------------------------------------------------------------------------
n452_return_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_decollate_γ
#-----------------------------------------------------------------------------------------------------------------------
n453_var_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n454_var_α
n453_var_β:
                                                                                        jmp   n410_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n454_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n455_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n455_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 5
                                                                                        je    .Lx589_1
                        cmp              eax, 3
                                                                                        jne   .Lx589_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx589_0
.Lx589_1:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n456_coerce_numeric_α
.Lx589_0:
                        lea              rdi, [rbp + 2112]                              # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 544]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n456_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n456_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx591_1
                        cmp              eax, 3
                                                                                        jne   .Lx591_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 3
                                                                                        jne   .Lx591_0
.Lx591_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n457_binop_α
.Lx591_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 2112]                              # other
                        lea              rdx, [rbp + 528]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n457_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n457_binop_α:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 3
                                                                                        jne   .Lx592_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 3
                                                                                        jne   .Lx592_0
                        mov              rax, qword ptr [rbp + 552]
                        mov              rcx, qword ptr [rbp + 536]
                        add              rax, rcx
                        mov              qword ptr [rbp + 512], 3
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n458_var_α
.Lx592_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n410_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n458_var_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_α:
                        mov              rax, qword ptr [1879052384]                    # decollate__STATIC__dsize
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 592], rax                     # result
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n459_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n459_binop_test_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 112
                                                                                        je    .Lx594_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 112
                                                                                        je    .Lx594_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx594_2
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx594_2
.Lx594_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 600]
                        cmp              rax, rcx
                                                                                        jg    n410_disjunction_af
                        mov              rcx, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 496], rcx
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 504], rcx
                                                                                        jmp   n460_var_α
.Lx594_0:
                        mov              rdi, qword ptr [rbp + 512]                     # a
                        mov              rsi, qword ptr [rbp + 520]                     # a
                        mov              rdx, qword ptr [rbp + 592]                     # b
                        mov              rcx, qword ptr [rbp + 600]                     # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 496]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx594_1
                        cmp              eax, 1
                                                                                        je    n410_disjunction_af
                                                                                        jmp   n460_var_α
.Lx594_2:
                        mov              rdi, qword ptr [rbp + 512]                     # lhs
                        mov              rsi, qword ptr [rbp + 520]                     # lhs
                        mov              rdx, qword ptr [rbp + 592]                     # rhs
                        mov              rcx, qword ptr [rbp + 600]                     # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n410_disjunction_af
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n460_var_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:
                        mov              rax, qword ptr [1879052416]                    # decollate__STATIC__object
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 176], rax                     # result
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n461_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n462_var_α
.Lx596_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n462_var_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n463_var_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n464_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n464_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 5
                                                                                        je    .Lx602_1
                        cmp              eax, 3
                                                                                        jne   .Lx602_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx602_0
.Lx602_1:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n465_coerce_numeric_α
.Lx602_0:
                        lea              rdi, [rbp + 2112]                              # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 272]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n465_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n465_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx604_1
                        cmp              eax, 3
                                                                                        jne   .Lx604_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 3
                                                                                        jne   .Lx604_0
.Lx604_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n466_binop_α
.Lx604_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 2112]                              # other
                        lea              rdx, [rbp + 256]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n466_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n466_binop_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx605_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx605_0
                        mov              rax, qword ptr [rbp + 280]
                        mov              rcx, qword ptr [rbp + 264]
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n467_lit_integer_α
.Lx605_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n467_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n468_coerce_numeric_α
.Lx606_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n468_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 5
                                                                                        je    .Lx608_1
                        cmp              eax, 3
                                                                                        jne   .Lx608_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx608_0
.Lx608_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n469_binop_α
.Lx608_0:
                        lea              rdi, [rbp + 240]                               # self
                        lea              rsi, [rbp + 320]                               # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n469_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n469_binop_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n470_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n470_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx610_0
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 216]
                        add              rax, rcx
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n471_subscript_α
.Lx610_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n471_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n471_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]                     # arr
                        mov              rsi, qword ptr [rbp + 184]                     # arr
                        mov              rdx, qword ptr [rbp + 192]                     # i
                        mov              rcx, qword ptr [rbp + 200]                     # i
                        mov              r8, qword ptr [rbp + 336]                      # end
                        mov              r9, qword ptr [rbp + 344]                      # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [1879052400]                    # decollate__STATIC__image
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 368], rax                     # result
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n475_coerce_numeric_α
.Lx615_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n475_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx617_1
                        cmp              eax, 3
                                                                                        jne   .Lx617_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx617_0
.Lx617_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n476_binop_α
.Lx617_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 432]                               # other
                        lea              rdx, [rbp + 400]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n476_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n476_binop_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx618_0
                        mov              rax, qword ptr [rbp + 408]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n477_var_α
.Lx618_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n477_var_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n478_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n478_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx621_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 3
                                                                                        jne   .Lx621_0
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, qword ptr [rbp + 2120]
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n479_subscript_α
.Lx621_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n479_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n479_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]                     # arr
                        mov              rsi, qword ptr [rbp + 376]                     # arr
                        mov              rdx, qword ptr [rbp + 384]                     # i
                        mov              rcx, qword ptr [rbp + 392]                     # i
                        mov              r8, qword ptr [rbp + 464]                      # end
                        mov              r9, qword ptr [rbp + 472]                      # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n481_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n481_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn626:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn626]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_decollate_ω
                                                                                        jmp   n482_return_α
n481_call_builtin_icon_β:
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_decollate_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_decollate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_decollate_β:
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_decollate_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_decollate_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_decollate_dcα:
                        pop              r11
                        sub              rsp, 2192
                        mov              qword ptr [rsp + 2168], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2144], r11
                        lea              rax, [rip + .Lx628_2]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rax, [rip + .Lx628_3]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 2112                                      # suffix_off
                        mov              edx, 2144                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_decollate_α_body
.Lx628_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2176
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx628_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2176
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_perm_α
proc_perm_α:
proc_perm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n629_call_builtin_icon_α:
                        sub              rsp, 288
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
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        .section         .rodata
.Lrkfn645:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n631_lit_integer_α
                                                                                        jmp   n630_assign_α
n629_call_builtin_icon_β:
                                                                                        jmp   n631_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n630_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n631_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n632_lit_integer_α
.Lx647_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n633_to_α
.Lx648_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n633_to_α:
                        mov              rdi, qword ptr [rbp + 176]                     # v
                        mov              rsi, qword ptr [rbp + 184]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rdi, qword ptr [rbp + 192]                     # v
                        mov              rsi, qword ptr [rbp + 200]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 160], rax
.Lx650_0:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 200]
                        cmp              rax, rcx
                                                                                        jle   .Lx650_240
                        add              rsp, 288
                                                                                        jmp   n640_var_α
.Lx650_240:
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n634_bound_α
n633_to_β:
                        inc              qword ptr [rbp + 160]
                                                                                        jmp   .Lx650_0
#-----------------------------------------------------------------------------------------------------------------------
n634_bound_α:
                        mov              qword ptr [rbp + 208], rsp
                                                                                        jmp   n635_var_α
#-----------------------------------------------------------------------------------------------------------------------
n635_var_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n636_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n636_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 5
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n637_proc_gen_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "ogram"
#-----------------------------------------------------------------------------------------------------------------------
n637_proc_gen_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx657_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx657_21
.Lx657_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 400]                     # v
                        mov              rdx, qword ptr [rbp + 408]                     # v
                        call             rt_arg_stage@PLT
.Lx657_21:
                        mov              edi, 3                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx657_1
                        lea              rcx, [rip + .Lx657_3]
                        lea              rdx, [rip + .Lx657_4]
                                                                                        jmp   rax
.Lx657_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx657_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx657_2
.Lx657_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx657_2
.Lx657_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx657_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx657_2
.Lx657_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx657_2
.Lx657_1:
                        call             rt_faildescr@PLT
.Lx657_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx657_240
                        add              rsp, 288
                                                                                        jmp   n639_unmark_α
.Lx657_240:
                                                                                        jmp   n638_call_builtin_icon_α
n637_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "permute"
#-----------------------------------------------------------------------------------------------------------------------
n638_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn659:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn659]                         # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n637_proc_gen_β
                                                                                        jmp   n637_proc_gen_β
n638_call_builtin_icon_β:
                                                                                        jmp   n637_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n639_unmark_α:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n633_to_β
#-----------------------------------------------------------------------------------------------------------------------
n640_var_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n641_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n641_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn665:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn665]                         # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_perm_ω
                                                                                        jmp   n642_iterate_α
n641_call_builtin_icon_β:
                                                                                        jmp   proc_perm_ω
#-----------------------------------------------------------------------------------------------------------------------
n642_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx667_0:
                        mov              rdi, qword ptr [rbp + 80]                      # obj
                        mov              rsi, qword ptr [rbp + 88]                      # obj
                        mov              rdx, qword ptr [rbp + 64]                      # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    proc_perm_ω
                                                                                        jmp   n643_call_builtin_icon_α
n642_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx667_0
#-----------------------------------------------------------------------------------------------------------------------
n643_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn669:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n642_iterate_β
                                                                                        jmp   n642_iterate_β
n643_call_builtin_icon_β:
                                                                                        jmp   n642_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_perm_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_perm_β:
                                                                                        jmp   proc_perm_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_perm_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_perm_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_perm_dcα:
                        pop              r11
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 496], r11
                        lea              rax, [rip + .Lx670_2]
                        mov              qword ptr [rbp + 504], rax
                        lea              rax, [rip + .Lx670_3]
                        mov              qword ptr [rbp + 512], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 464                                       # suffix_off
                        mov              edx, 496                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_perm_α_body
.Lx670_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx670_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -528
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_permute_α
proc_permute_α:
proc_permute_α_body:
                        lea              rax, [rip + n694_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n671_disjunction_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   n696_var_α
n671_disjunction_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx702_0
                                                                                        jmp   n672_lit_integer_α
.Lx702_0:
                                                                                        jmp   n672_lit_integer_α
n671_disjunction_β:
                        mov              eax, dword ptr [rbp + 464]
                                                                                        jmp   n672_lit_integer_α
n671_disjunction_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                                                                                        jmp   n672_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n673_var_α
.Lx703_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n673_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n674_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n674_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n675_to_α
#-----------------------------------------------------------------------------------------------------------------------
n675_to_α:
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]                      # v
                        mov              rsi, qword ptr [rbp + 104]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx708_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jle   .Lx708_240
                        add              rsp, 496
                                                                                        jmp   proc_permute_ω
.Lx708_240:
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n676_assign_α
n675_to_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx708_0
#-----------------------------------------------------------------------------------------------------------------------
n676_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n677_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n677_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n678_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n678_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n679_var_α
#-----------------------------------------------------------------------------------------------------------------------
n679_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n680_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n680_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]                     # base
                        mov              rsi, qword ptr [rbp + 392]                     # base
                        mov              rdx, qword ptr [rbp + 400]                     # idx
                        mov              rcx, qword ptr [rbp + 408]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n683_var_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n681_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n681_deref_α:
                        mov              rdi, qword ptr [rbp + 416]                     # d
                        mov              rsi, qword ptr [rbp + 424]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n683_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n682_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n682_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n683_var_α
#-----------------------------------------------------------------------------------------------------------------------
n683_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n684_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n684_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n685_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n685_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n686_var_α
#-----------------------------------------------------------------------------------------------------------------------
n686_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n687_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n687_subscript_α:
                        mov              rdi, qword ptr [rbp + 288]                     # base
                        mov              rsi, qword ptr [rbp + 296]                     # base
                        mov              rdx, qword ptr [rbp + 304]                     # idx
                        mov              rcx, qword ptr [rbp + 312]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n690_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n688_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 0
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n689_assign_var_α
.Lx727_0:
                        .quad            .Lx727_0_s
.Lx727_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n689_assign_var_α:
                        mov              rdi, qword ptr [rbp + 320]                     # var
                        mov              rsi, qword ptr [rbp + 328]                     # var
                        mov              rdx, qword ptr [rbp + 352]                     # val
                        mov              rcx, qword ptr [rbp + 360]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n690_var_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n690_var_α
#-----------------------------------------------------------------------------------------------------------------------
n690_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n692_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n692_proc_gen_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx734_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx734_21
.Lx734_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 272]                     # v
                        mov              rdx, qword ptr [rbp + 280]                     # v
                        call             rt_arg_stage@PLT
.Lx734_21:
                        mov              edi, 3                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx734_1
                        lea              rcx, [rip + .Lx734_3]
                        lea              rdx, [rip + .Lx734_4]
                                                                                        jmp   rax
.Lx734_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx734_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx734_2
.Lx734_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx734_2
.Lx734_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx734_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx734_2
.Lx734_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx734_2
.Lx734_1:
                        call             rt_faildescr@PLT
.Lx734_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx734_240
                        add              rsp, 496
                                                                                        jmp   n695_unmark_α
.Lx734_240:
                                                                                        jmp   n693_binop_α
n692_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx734_0:
                        .quad            .Lx734_0_s
.Lx734_0_s:
                        .string          "permute"
#-----------------------------------------------------------------------------------------------------------------------
n693_binop_α:
                        mov              rdi, qword ptr [rbp + 576]                     # a
                        mov              rsi, qword ptr [rbp + 584]                     # a
                        mov              rdx, qword ptr [rbp + 208]                     # b
                        mov              rcx, qword ptr [rbp + 216]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n694_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n694_suspend_α:
                        lea              rax, [rip + n694_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 496
                                                                                        jmp   proc_permute_γ
n694_suspend_β:
                                                                                        jmp   n692_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n695_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n675_to_β
#-----------------------------------------------------------------------------------------------------------------------
n696_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n697_lit_string_α
n696_var_β:
                                                                                        jmp   n671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 0
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n698_binop_test_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n698_binop_test_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 528]                     # rhs
                        mov              rcx, qword ptr [rbp + 536]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n671_disjunction_af
                        mov              rdi, qword ptr [rbp + 528]                     # d
                        mov              rsi, qword ptr [rbp + 536]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n699_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 0
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n700_return_α
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n700_return_α:
                        lea              rax, [rip + proc_permute_ω]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_permute_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "collate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_collate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3200
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_collate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "decollate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_decollate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2128
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_decollate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "perm"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_perm_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_perm_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "permute"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_permute_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "collate__STATIC__llabels"
.Lgvan1:                .string          "collate__STATIC__rlabels"
.Lgvan2:                .string          "collate__STATIC__clabels"
.Lgvan3:                .string          "collate__STATIC__blabels"
.Lgvan4:                .string          "collate__STATIC__half"
.Lgvan5:                .string          "collate__INITFLAG__0"
.Lgvan6:                .string          "decollate__STATIC__dsize"
.Lgvan7:                .string          "decollate__STATIC__image"
.Lgvan8:                .string          "decollate__STATIC__object"
.Lgvan9:                .string          "decollate__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 10
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 10
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
n746_keyword_icon_α:
                        sub              rsp, 976
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
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              rdi, qword ptr [rip + .Lx777_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n750_keyword_icon_α
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                                                                                        jmp   n747_keyword_icon_α
n746_keyword_icon_β:
                                                                                        jmp   n750_keyword_icon_α
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n747_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx778_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n750_keyword_icon_α
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                                                                                        jmp   n748_call_proc_staged_α
n747_keyword_icon_β:
                                                                                        jmp   n750_keyword_icon_α
.Lx778_0:
                        .quad            .Lx778_0_s
.Lx778_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        lea              rsi, [rsp + 912]
                        lea              rdx, [rsp + 944]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx780_2
.Lx780_2:
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n750_keyword_icon_α
                                                                                        jmp   n749_assign_α
n748_call_proc_staged_β:
                                                                                        jmp   n750_keyword_icon_α
.Lx780_0:
                        .quad            .Lx780_0_s
.Lx780_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n749_assign_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                                                                                        jmp   n750_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n750_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx782_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n756_var_α
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n751_call_builtin_icon_α
n750_keyword_icon_β:
                                                                                        jmp   n756_var_α
.Lx782_0:
                        .quad            .Lx782_0_s
.Lx782_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n751_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn784:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn784]                         # fn
                        lea              rsi, [rsp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n756_var_α
                                                                                        jmp   n752_keyword_icon_α
n751_call_builtin_icon_β:
                                                                                        jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n752_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx785_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n756_var_α
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                                                                                        jmp   n753_call_builtin_icon_α
n752_keyword_icon_β:
                                                                                        jmp   n756_var_α
.Lx785_0:
                        .quad            .Lx785_0_s
.Lx785_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n753_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn787:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn787]                         # fn
                        lea              rsi, [rsp + 784]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n756_var_α
                                                                                        jmp   n754_call_proc_staged_α
n753_call_builtin_icon_β:
                                                                                        jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        lea              rsi, [rsp + 688]
                        lea              rdx, [rsp + 768]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx789_2
.Lx789_2:
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n756_var_α
                                                                                        jmp   n755_assign_α
n754_call_proc_staged_β:
                                                                                        jmp   n756_var_α
.Lx789_0:
                        .quad            .Lx789_0_s
.Lx789_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n755_assign_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                                                                                        jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n756_var_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n757_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_integer_α:
                        mov              qword ptr [rsp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n758_call_proc_staged_α
.Lx793_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n758_call_proc_staged_α:
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 592]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx795_2
.Lx795_2:
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n761_var_α
                                                                                        jmp   n759_call_builtin_icon_α
n758_call_proc_staged_β:
                                                                                        jmp   n761_var_α
.Lx795_0:
                        .quad            .Lx795_0_s
.Lx795_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn797:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn797]                         # fn
                        lea              rsi, [rsp + 480]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n761_var_α
                                                                                        jmp   n760_call_builtin_icon_α
n759_call_builtin_icon_β:
                                                                                        jmp   n761_var_α
#-----------------------------------------------------------------------------------------------------------------------
n760_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn799:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn799]                         # fn
                        lea              rsi, [rsp + 432]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n761_var_α
                                                                                        jmp   n761_var_α
n760_call_builtin_icon_β:
                                                                                        jmp   n761_var_α
#-----------------------------------------------------------------------------------------------------------------------
n761_var_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n762_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_integer_α:
                        mov              qword ptr [rsp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n763_call_proc_staged_α
.Lx802_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 400]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx804_2
.Lx804_2:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n766_var_α
                                                                                        jmp   n764_call_builtin_icon_α
n763_call_proc_staged_β:
                                                                                        jmp   n766_var_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n764_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn806:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn806]                         # fn
                        lea              rsi, [rsp + 288]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n766_var_α
                                                                                        jmp   n765_call_builtin_icon_α
n764_call_builtin_icon_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n765_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn808:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn808]                         # fn
                        lea              rsi, [rsp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n766_var_α
                                                                                        jmp   n766_var_α
n765_call_builtin_icon_β:
                                                                                        jmp   n766_var_α
#-----------------------------------------------------------------------------------------------------------------------
n766_var_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n767_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:
                        mov              qword ptr [rsp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n768_call_proc_staged_α
.Lx811_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n768_call_proc_staged_α:
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 208]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx813_2
.Lx813_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n771_var_α
                                                                                        jmp   n769_call_builtin_icon_α
n768_call_proc_staged_β:
                                                                                        jmp   n771_var_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n769_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn815:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn815]                         # fn
                        lea              rsi, [rsp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n771_var_α
                                                                                        jmp   n770_call_builtin_icon_α
n769_call_builtin_icon_β:
                                                                                        jmp   n771_var_α
#-----------------------------------------------------------------------------------------------------------------------
n770_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn817:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn817]                         # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n771_var_α
                                                                                        jmp   n771_var_α
n770_call_builtin_icon_β:
                                                                                        jmp   n771_var_α
#-----------------------------------------------------------------------------------------------------------------------
n771_var_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n772_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n773_call_proc_staged_α
.Lx820_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n773_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        lea              rdx, [rsp + 16]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx822_2
.Lx822_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n776_call_proc_staged_α
                                                                                        jmp   n774_call_builtin_icon_α
n773_call_proc_staged_β:
                                                                                        jmp   n776_call_proc_staged_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n774_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn824:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn824]                         # fn
                        lea              rsi, [rsp + 96]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n776_call_proc_staged_α
                                                                                        jmp   n775_call_builtin_icon_α
n774_call_builtin_icon_β:
                                                                                        jmp   n776_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n775_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn826:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn826]                         # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n776_call_proc_staged_α
                                                                                        jmp   n776_call_proc_staged_α
n775_call_builtin_icon_β:
                                                                                        jmp   n776_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n776_call_proc_staged_α:
                        call             proc_perm_dcα
                                                                                        jmp   .Lx828_2
.Lx828_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx828_240
                        add              rsp, 976
                                                                                        jmp   main_ω
.Lx828_240:
                        add              rsp, 976
                                                                                        jmp   main_ω
n776_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx828_0:
                        .quad            .Lx828_0_s
.Lx828_0_s:
                        .string          "perm"
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
