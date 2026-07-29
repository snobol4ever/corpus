                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q1_α
proc_q1_α:
                        .global          proc_q1_α
                        .global          proc_q1_β
                        .global          proc_q1_γ
                        .global          proc_q1_ω
                        sub              rsp, 2912
                        mov              [rsp + 2888], rcx
                        mov              [rsp + 2896], rdx
                        mov              [rsp + 2904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2880
                        mov              edx, 2880
                        call             rt_jmp_frame_lexprep2@PLT
proc_q1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n1_disjunction_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          " ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0
                        mov              dword ptr [rbp + 2816], 0
                                                                                        jmp   n3_call_builtin_icon_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 0
                                                                                        jne   .Lx89_0
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx89_0:
                        cmp              eax, 1
                                                                                        jne   .Lx89_1
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx89_1:
                                                                                        jmp   n2_call_builtin_icon_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 2816], 1
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 1
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn91:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_β
                                                                                        jmp   n5_lit_string_α
n2_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn93:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rbp + 2848]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_as
n3_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n1_disjunction_as
n4_lit_string_β:
                                                                                        jmp   n1_disjunction_af
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n6_disjunction_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "f := open(\"foo.baz\",\"w\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              dword ptr [rbp + 2528], 0
                                                                                        jmp   n8_lit_string_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        jne   .Lx97_0
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx97_0:
                        cmp              eax, 1
                                                                                        jne   .Lx97_1
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx97_1:
                                                                                        jmp   n7_call_builtin_icon_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 2528], 1
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 1
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn99:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_β
                                                                                        jmp   n11_lit_string_α
n7_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n12_lit_string_α
n8_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "foo.baz"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n6_disjunction_as
n9_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn103:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n13_disjunction_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "write(f,\"hello world\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n14_call_builtin_icon_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n16_var_α
n13_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx107_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n15_call_builtin_icon_α
.Lx107_0:
                        cmp              eax, 1
                                                                                        jne   .Lx107_1
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n15_call_builtin_icon_α
.Lx107_1:
                                                                                        jmp   n15_call_builtin_icon_α
n13_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        je    n13_disjunction_af
                                                                                        jmp   n13_disjunction_af
n13_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 1
                                                                                        je    n17_lit_string_α
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn109:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rbp + 2624]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n19_assign_α
n14_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n13_disjunction_β
                                                                                        jmp   n20_lit_string_α
n15_call_builtin_icon_β:
                                                                                        jmp   n13_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n21_lit_string_α
n16_var_β:
                                                                                        jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n13_disjunction_as
n17_lit_string_β:
                                                                                        jmp   n13_disjunction_af
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn115:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n13_disjunction_af
                                                                                        jmp   n13_disjunction_as
n18_call_builtin_icon_β:
                                                                                        jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n22_disjunction_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "close(f) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n23_call_builtin_icon_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:
                        mov              qword ptr [rbp + 2000], 0
                        mov              qword ptr [rbp + 2008], 0
                        mov              dword ptr [rbp + 2016], 0
                                                                                        jmp   n25_var_α
n22_disjunction_as:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        jne   .Lx120_0
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n24_call_builtin_icon_α
.Lx120_0:
                        cmp              eax, 1
                                                                                        jne   .Lx120_1
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n24_call_builtin_icon_α
.Lx120_1:
                                                                                        jmp   n24_call_builtin_icon_α
n22_disjunction_β:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        je    n22_disjunction_af
                                                                                        jmp   n22_disjunction_af
n22_disjunction_af:
                        add              dword ptr [rbp + 2016], 1
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 1
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn122:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n13_disjunction_af
                                                                                        jmp   n18_call_builtin_icon_α
n23_call_builtin_icon_β:
                                                                                        jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn124:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n22_disjunction_β
                                                                                        jmp   n28_lit_string_α
n24_call_builtin_icon_β:
                                                                                        jmp   n22_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n29_call_builtin_icon_α
n25_var_β:
                                                                                        jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n22_disjunction_as
n26_lit_string_β:
                                                                                        jmp   n22_disjunction_af
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn128:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n22_disjunction_af
                                                                                        jmp   n22_disjunction_as
n27_call_builtin_icon_β:
                                                                                        jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n30_call_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "foo.baz"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn131:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n22_disjunction_af
                                                                                        jmp   n27_call_builtin_icon_α
n29_call_builtin_icon_β:
                                                                                        jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lbynamefn31:           .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn31]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n31_lit_string_α
                                                                                        jmp   n31_lit_string_α
n30_call_β:
                                                                                        jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n32_disjunction_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n32_disjunction_α:
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              dword ptr [rbp + 1696], 0
                                                                                        jmp   n34_lit_string_α
n32_disjunction_as:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 0
                                                                                        jne   .Lx135_0
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx135_0:
                        cmp              eax, 1
                                                                                        jne   .Lx135_1
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n33_call_builtin_icon_α
.Lx135_1:
                                                                                        jmp   n33_call_builtin_icon_α
n32_disjunction_β:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 0
                                                                                        je    n32_disjunction_af
                                                                                        jmp   n32_disjunction_af
n32_disjunction_af:
                        add              dword ptr [rbp + 1696], 1
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 1
                                                                                        je    n35_lit_string_α
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn137:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n32_disjunction_β
                                                                                        jmp   n37_lit_string_α
n33_call_builtin_icon_β:
                                                                                        jmp   n32_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n38_call_builtin_icon_α
n34_lit_string_β:
                                                                                        jmp   n32_disjunction_af
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n32_disjunction_as
n35_lit_string_β:
                                                                                        jmp   n32_disjunction_af
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn141:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n32_disjunction_af
                                                                                        jmp   n32_disjunction_as
n36_call_builtin_icon_β:
                                                                                        jmp   n32_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n39_disjunction_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "every write(reverse(!F)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn144:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n32_disjunction_af
                                                                                        jmp   n40_assign_α
n38_call_builtin_icon_β:
                                                                                        jmp   n32_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n39_disjunction_α:
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              dword ptr [rbp + 1392], 0
                                                                                        jmp   n42_var_α
n39_disjunction_as:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        jne   .Lx146_0
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n41_call_builtin_icon_α
.Lx146_0:
                        cmp              eax, 1
                                                                                        jne   .Lx146_1
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n41_call_builtin_icon_α
.Lx146_1:
                                                                                        jmp   n41_call_builtin_icon_α
n39_disjunction_β:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        je    n39_disjunction_af
                                                                                        jmp   n39_disjunction_af
n39_disjunction_af:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 1
                                                                                        je    n43_lit_string_α
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn149:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n39_disjunction_β
                                                                                        jmp   n45_lit_string_α
n41_call_builtin_icon_β:
                                                                                        jmp   n39_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n46_iterate_α
n42_var_β:
                                                                                        jmp   n39_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n39_disjunction_as
n43_lit_string_β:
                                                                                        jmp   n39_disjunction_af
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn153:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n39_disjunction_af
                                                                                        jmp   n39_disjunction_as
n44_call_builtin_icon_β:
                                                                                        jmp   n39_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n47_disjunction_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n46_iterate_α:
                        mov              qword ptr [rbp + 1552], 0
.Lx156_0:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              rax, 99
                                                                                        je    n39_disjunction_af
                                                                                        jmp   n48_call_builtin_icon_α
n46_iterate_β:
                        inc              qword ptr [rbp + 1552]
                                                                                        jmp   .Lx156_0
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n50_var_α
n47_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx158_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n49_call_builtin_icon_α
.Lx158_0:
                        cmp              eax, 1
                                                                                        jne   .Lx158_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n49_call_builtin_icon_α
.Lx158_1:
                                                                                        jmp   n49_call_builtin_icon_α
n47_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        je    n47_disjunction_af
                                                                                        jmp   n47_disjunction_af
n47_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn160:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n46_iterate_β
                                                                                        jmp   n53_call_builtin_icon_α
n48_call_builtin_icon_β:
                                                                                        jmp   n46_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn162:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n47_disjunction_β
                                                                                        jmp   n54_lit_string_α
n49_call_builtin_icon_β:
                                                                                        jmp   n47_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n55_call_builtin_icon_α
n50_var_β:
                                                                                        jmp   n47_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n47_disjunction_as
n51_lit_string_β:
                                                                                        jmp   n47_disjunction_af
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn166:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n47_disjunction_af
                                                                                        jmp   n47_disjunction_as
n52_call_builtin_icon_β:
                                                                                        jmp   n47_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn168:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n46_iterate_β
                                                                                        jmp   n46_iterate_β
n53_call_builtin_icon_β:
                                                                                        jmp   n46_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n56_disjunction_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn171:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n47_disjunction_af
                                                                                        jmp   n52_call_builtin_icon_α
n55_call_builtin_icon_β:
                                                                                        jmp   n47_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n58_lit_string_α
n56_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx173_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n57_call_builtin_icon_α
.Lx173_0:
                        cmp              eax, 1
                                                                                        jne   .Lx173_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n57_call_builtin_icon_α
.Lx173_1:
                                                                                        jmp   n57_call_builtin_icon_α
n56_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    n56_disjunction_af
                                                                                        jmp   n56_disjunction_af
n56_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    n59_lit_string_α
                                                                                        jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn175:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n56_disjunction_β
                                                                                        jmp   n61_lit_string_α
n57_call_builtin_icon_β:
                                                                                        jmp   n56_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n62_call_builtin_icon_α
n58_lit_string_β:
                                                                                        jmp   n56_disjunction_af
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n56_disjunction_as
n59_lit_string_β:
                                                                                        jmp   n56_disjunction_af
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn179:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n56_disjunction_af
                                                                                        jmp   n56_disjunction_as
n60_call_builtin_icon_β:
                                                                                        jmp   n56_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n63_disjunction_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "every write(map(!F)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn182:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n56_disjunction_af
                                                                                        jmp   n64_assign_α
n62_call_builtin_icon_β:
                                                                                        jmp   n56_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_disjunction_α:
                        mov              qword ptr [rbp + 576], 0
                        mov              qword ptr [rbp + 584], 0
                        mov              dword ptr [rbp + 592], 0
                                                                                        jmp   n66_var_α
n63_disjunction_as:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        jne   .Lx184_0
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n65_call_builtin_icon_α
.Lx184_0:
                        cmp              eax, 1
                                                                                        jne   .Lx184_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n65_call_builtin_icon_α
.Lx184_1:
                                                                                        jmp   n65_call_builtin_icon_α
n63_disjunction_β:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 0
                                                                                        je    n63_disjunction_af
                                                                                        jmp   n63_disjunction_af
n63_disjunction_af:
                        add              dword ptr [rbp + 592], 1
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 1
                                                                                        je    n67_lit_string_α
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n60_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn187:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n63_disjunction_β
                                                                                        jmp   n69_lit_string_α
n65_call_builtin_icon_β:
                                                                                        jmp   n63_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n70_iterate_α
n66_var_β:
                                                                                        jmp   n63_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n63_disjunction_as
n67_lit_string_β:
                                                                                        jmp   n63_disjunction_af
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn191:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 624]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n63_disjunction_af
                                                                                        jmp   n63_disjunction_as
n68_call_builtin_icon_β:
                                                                                        jmp   n63_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n71_disjunction_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n70_iterate_α:
                        mov              qword ptr [rbp + 752], 0
.Lx194_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 752]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              rax, 99
                                                                                        je    n63_disjunction_af
                                                                                        jmp   n72_call_builtin_icon_α
n70_iterate_β:
                        inc              qword ptr [rbp + 752]
                                                                                        jmp   .Lx194_0
#-----------------------------------------------------------------------------------------------------------------------
n71_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n74_var_α
n71_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx196_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n73_call_builtin_icon_α
.Lx196_0:
                        cmp              eax, 1
                                                                                        jne   .Lx196_1
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n73_call_builtin_icon_α
.Lx196_1:
                                                                                        jmp   n73_call_builtin_icon_α
n71_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n71_disjunction_af
                                                                                        jmp   n71_disjunction_af
n71_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn198:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn198]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n70_iterate_β
                                                                                        jmp   n77_call_builtin_icon_α
n72_call_builtin_icon_β:
                                                                                        jmp   n70_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn200:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n71_disjunction_β
                                                                                        jmp   n78_lit_string_α
n73_call_builtin_icon_β:
                                                                                        jmp   n71_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n79_call_builtin_icon_α
n74_var_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n71_disjunction_as
n75_lit_string_β:
                                                                                        jmp   n71_disjunction_af
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn204:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n71_disjunction_af
                                                                                        jmp   n71_disjunction_as
n76_call_builtin_icon_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn206:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n70_iterate_β
                                                                                        jmp   n70_iterate_β
n77_call_builtin_icon_β:
                                                                                        jmp   n70_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n80_disjunction_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn209:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n71_disjunction_af
                                                                                        jmp   n76_call_builtin_icon_α
n79_call_builtin_icon_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n82_lit_string_α
n80_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx211_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n81_call_builtin_icon_α
.Lx211_0:
                        cmp              eax, 1
                                                                                        jne   .Lx211_1
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n81_call_builtin_icon_α
.Lx211_1:
                                                                                        jmp   n81_call_builtin_icon_α
n80_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n80_disjunction_af
n80_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n83_lit_string_α
                                                                                        jmp   proc_q1_ω
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn213:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n80_disjunction_β
                                                                                        jmp   proc_q1_ω
n81_call_builtin_icon_β:
                                                                                        jmp   n80_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n85_call_builtin_icon_α
n82_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n80_disjunction_as
n83_lit_string_β:
                                                                                        jmp   n80_disjunction_af
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn217:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n80_disjunction_as
n84_call_builtin_icon_β:
                                                                                        jmp   n80_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn219:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n80_disjunction_af
                                                                                        jmp   n86_assign_α
n85_call_builtin_icon_β:
                                                                                        jmp   n80_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n84_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_q1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q1_β:
                                                                                        jmp   proc_q1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2888]
                        lea              rsp, [rbp + 2912]
                        mov              rbp, [rbp + 2904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q1_ω:
                        mov              rax, [rbp + 2896]
                        lea              rsp, [rbp + 2912]
                        mov              rbp, [rbp + 2904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q1_dcα:
                        pop              r11
                        sub              rsp, 2928
                        mov              qword ptr [rsp + 2904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2880], r11
                        lea              rax, [rip + .Lx221_2]
                        mov              qword ptr [rbp + 2888], rax
                        lea              rax, [rip + .Lx221_3]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rdi, rbp
                        mov              esi, 2880
                        mov              edx, 2880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_q1_α_body
.Lx221_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx221_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q2_α
proc_q2_α:
                        .global          proc_q2_α
                        .global          proc_q2_β
                        .global          proc_q2_γ
                        .global          proc_q2_ω
                        sub              rsp, 3280
                        mov              [rsp + 3256], rcx
                        mov              [rsp + 3264], rdx
                        mov              [rsp + 3272], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3248
                        mov              edx, 3248
                        call             rt_jmp_frame_lexprep2@PLT
proc_q2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n223_disjunction_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "every write(map(!F,&cset || \"aeiou\",&cset || \"-----\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n223_disjunction_α:
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              dword ptr [rbp + 2880], 0
                                                                                        jmp   n225_var_α
n223_disjunction_as:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        jne   .Lx326_0
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n224_call_builtin_icon_α
.Lx326_0:
                        cmp              eax, 1
                                                                                        jne   .Lx326_1
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n224_call_builtin_icon_α
.Lx326_1:
                                                                                        jmp   n224_call_builtin_icon_α
n223_disjunction_β:
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 0
                                                                                        je    n223_disjunction_af
                                                                                        jmp   n223_disjunction_af
n223_disjunction_af:
                        add              dword ptr [rbp + 2880], 1
                        mov              eax, dword ptr [rbp + 2880]
                        cmp              eax, 1
                                                                                        je    n226_lit_string_α
                                                                                        jmp   n228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2824], rax
                        .section         .rodata
.Lrkfn328:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n223_disjunction_β
                                                                                        jmp   n228_lit_string_α
n224_call_builtin_icon_β:
                                                                                        jmp   n223_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n229_iterate_α
n225_var_β:
                                                                                        jmp   n223_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        mov              qword ptr [rbp + 3232], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n223_disjunction_as
n226_lit_string_β:
                                                                                        jmp   n223_disjunction_af
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn332:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rbp + 2912]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    n223_disjunction_af
                                                                                        jmp   n223_disjunction_as
n227_call_builtin_icon_β:
                                                                                        jmp   n223_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n230_disjunction_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n229_iterate_α:
                        mov              qword ptr [rbp + 3072], 0
.Lx335_0:
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              rsi, qword ptr [rbp + 3096]
                        mov              rdx, qword ptr [rbp + 3072]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              rax, 99
                                                                                        je    n223_disjunction_af
                                                                                        jmp   n231_keyword_icon_α
n229_iterate_β:
                        inc              qword ptr [rbp + 3072]
                                                                                        jmp   .Lx335_0
#-----------------------------------------------------------------------------------------------------------------------
n230_disjunction_α:
                        mov              qword ptr [rbp + 2624], 0
                        mov              qword ptr [rbp + 2632], 0
                        mov              dword ptr [rbp + 2640], 0
                                                                                        jmp   n233_var_α
n230_disjunction_as:
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 0
                                                                                        jne   .Lx337_0
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n232_call_builtin_icon_α
.Lx337_0:
                        cmp              eax, 1
                                                                                        jne   .Lx337_1
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n232_call_builtin_icon_α
.Lx337_1:
                                                                                        jmp   n232_call_builtin_icon_α
n230_disjunction_β:
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 0
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_af
n230_disjunction_af:
                        add              dword ptr [rbp + 2640], 1
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 1
                                                                                        je    n234_lit_string_α
                                                                                        jmp   n237_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n231_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx338_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n229_iterate_β
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n236_lit_string_α
n231_keyword_icon_β:
                                                                                        jmp   n229_iterate_β
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn340:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n230_disjunction_β
                                                                                        jmp   n237_lit_string_α
n232_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n238_call_builtin_icon_α
n233_var_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n230_disjunction_as
n234_lit_string_β:
                                                                                        jmp   n230_disjunction_af
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lrkfn344:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn344]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n230_disjunction_as
n235_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n239_binop_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n240_disjunction_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn348:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rbp + 2720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n230_disjunction_af
                                                                                        jmp   n235_call_builtin_icon_α
n238_call_builtin_icon_β:
                                                                                        jmp   n230_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n239_binop_α:
                        mov              rdi, qword ptr [rbp + 3120]
                        mov              rsi, qword ptr [rbp + 3128]
                        mov              rdx, qword ptr [rbp + 3152]
                        mov              rcx, qword ptr [rbp + 3160]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n241_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n240_disjunction_α:
                        mov              qword ptr [rbp + 2368], 0
                        mov              qword ptr [rbp + 2376], 0
                        mov              dword ptr [rbp + 2384], 0
                                                                                        jmp   n243_lit_string_α
n240_disjunction_as:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        jne   .Lx351_0
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n242_call_builtin_icon_α
.Lx351_0:
                        cmp              eax, 1
                                                                                        jne   .Lx351_1
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n242_call_builtin_icon_α
.Lx351_1:
                                                                                        jmp   n242_call_builtin_icon_α
n240_disjunction_β:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        je    n240_disjunction_af
                                                                                        jmp   n240_disjunction_af
n240_disjunction_af:
                        add              dword ptr [rbp + 2384], 1
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 1
                                                                                        je    n244_lit_string_α
                                                                                        jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n241_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx352_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n229_iterate_β
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   n246_lit_string_α
n241_keyword_icon_β:
                                                                                        jmp   n229_iterate_β
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn354:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n240_disjunction_β
                                                                                        jmp   n247_lit_string_α
n242_call_builtin_icon_β:
                                                                                        jmp   n240_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n248_call_builtin_icon_α
n243_lit_string_β:
                                                                                        jmp   n240_disjunction_af
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n240_disjunction_as
n244_lit_string_β:
                                                                                        jmp   n240_disjunction_af
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn358:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n240_disjunction_af
                                                                                        jmp   n240_disjunction_as
n245_call_builtin_icon_β:
                                                                                        jmp   n240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n249_binop_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "-----"
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n250_disjunction_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "every write(map(!F,&cset || \"     \",&cset || \"aeiou\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn362:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n240_disjunction_af
                                                                                        jmp   n251_assign_α
n248_call_builtin_icon_β:
                                                                                        jmp   n240_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:
                        mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        mov              rdx, qword ptr [rbp + 3216]
                        mov              rcx, qword ptr [rbp + 3224]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n252_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n250_disjunction_α:
                        mov              qword ptr [rbp + 1904], 0
                        mov              qword ptr [rbp + 1912], 0
                        mov              dword ptr [rbp + 1920], 0
                                                                                        jmp   n254_var_α
n250_disjunction_as:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        jne   .Lx365_0
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n253_call_builtin_icon_α
.Lx365_0:
                        cmp              eax, 1
                                                                                        jne   .Lx365_1
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n253_call_builtin_icon_α
.Lx365_1:
                                                                                        jmp   n253_call_builtin_icon_α
n250_disjunction_β:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 0
                                                                                        je    n250_disjunction_af
                                                                                        jmp   n250_disjunction_af
n250_disjunction_af:
                        add              dword ptr [rbp + 1920], 1
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 1
                                                                                        je    n255_lit_string_α
                                                                                        jmp   n258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n245_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3000], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn368:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n229_iterate_β
                                                                                        jmp   n257_call_builtin_icon_α
n252_call_builtin_icon_β:
                                                                                        jmp   n229_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n253_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn370:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n250_disjunction_β
                                                                                        jmp   n258_lit_string_α
n253_call_builtin_icon_β:
                                                                                        jmp   n250_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n259_iterate_α
n254_var_β:
                                                                                        jmp   n250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n250_disjunction_as
n255_lit_string_β:
                                                                                        jmp   n250_disjunction_af
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn374:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n250_disjunction_af
                                                                                        jmp   n250_disjunction_as
n256_call_builtin_icon_β:
                                                                                        jmp   n250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn376:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn376]
                        lea              rsi, [rbp + 2944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n229_iterate_β
                                                                                        jmp   n229_iterate_β
n257_call_builtin_icon_β:
                                                                                        jmp   n229_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n260_disjunction_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n259_iterate_α:
                        mov              qword ptr [rbp + 2112], 0
.Lx379_0:
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2112]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              rax, 99
                                                                                        je    n250_disjunction_af
                                                                                        jmp   n261_keyword_icon_α
n259_iterate_β:
                        inc              qword ptr [rbp + 2112]
                                                                                        jmp   .Lx379_0
#-----------------------------------------------------------------------------------------------------------------------
n260_disjunction_α:
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              dword ptr [rbp + 1680], 0
                                                                                        jmp   n263_var_α
n260_disjunction_as:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        jne   .Lx381_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n262_call_builtin_icon_α
.Lx381_0:
                        cmp              eax, 1
                                                                                        jne   .Lx381_1
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n262_call_builtin_icon_α
.Lx381_1:
                                                                                        jmp   n262_call_builtin_icon_α
n260_disjunction_β:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        je    n260_disjunction_af
                                                                                        jmp   n260_disjunction_af
n260_disjunction_af:
                        add              dword ptr [rbp + 1680], 1
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 1
                                                                                        je    n264_lit_string_α
                                                                                        jmp   n267_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n261_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx382_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n259_iterate_β
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n266_lit_string_α
n261_keyword_icon_β:
                                                                                        jmp   n259_iterate_β
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn384:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn384]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n260_disjunction_β
                                                                                        jmp   n267_lit_string_α
n262_call_builtin_icon_β:
                                                                                        jmp   n260_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n268_call_builtin_icon_α
n263_var_β:
                                                                                        jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx386_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n260_disjunction_as
n264_lit_string_β:
                                                                                        jmp   n260_disjunction_af
.Lx386_0:
                        .quad            .Lx386_0_s
.Lx386_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn388:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn388]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n260_disjunction_af
                                                                                        jmp   n260_disjunction_as
n265_call_builtin_icon_β:
                                                                                        jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n269_binop_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "     "
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n270_disjunction_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "f := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn392:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n260_disjunction_af
                                                                                        jmp   n265_call_builtin_icon_α
n268_call_builtin_icon_β:
                                                                                        jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n269_binop_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n271_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n270_disjunction_α:
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0
                                                                                        jmp   n273_lit_string_α
n270_disjunction_as:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        jne   .Lx395_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n272_call_builtin_icon_α
.Lx395_0:
                        cmp              eax, 1
                                                                                        jne   .Lx395_1
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n272_call_builtin_icon_α
.Lx395_1:
                                                                                        jmp   n272_call_builtin_icon_α
n270_disjunction_β:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        je    n270_disjunction_af
                                                                                        jmp   n270_disjunction_af
n270_disjunction_af:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 1
                                                                                        je    n274_lit_string_α
                                                                                        jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx396_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n259_iterate_β
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n276_lit_string_α
n271_keyword_icon_β:
                                                                                        jmp   n259_iterate_β
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn398:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn398]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n270_disjunction_β
                                                                                        jmp   n277_lit_string_α
n272_call_builtin_icon_β:
                                                                                        jmp   n270_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n278_call_builtin_icon_α
n273_lit_string_β:
                                                                                        jmp   n270_disjunction_af
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n270_disjunction_as
n274_lit_string_β:
                                                                                        jmp   n270_disjunction_af
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn402:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn402]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n270_disjunction_af
                                                                                        jmp   n270_disjunction_as
n275_call_builtin_icon_β:
                                                                                        jmp   n270_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n279_binop_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n280_disjunction_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "while writes(reads(f)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n278_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn406:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n270_disjunction_af
                                                                                        jmp   n281_assign_α
n278_call_builtin_icon_β:
                                                                                        jmp   n270_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n279_binop_α:
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n282_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n280_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n284_var_α
n280_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx409_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n283_call_builtin_icon_α
.Lx409_0:
                        cmp              eax, 1
                                                                                        jne   .Lx409_1
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n283_call_builtin_icon_α
.Lx409_1:
                                                                                        jmp   n283_call_builtin_icon_α
n280_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        je    n285_goto_β
                                                                                        jmp   n280_disjunction_af
n280_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1
                                                                                        je    n286_lit_string_α
                                                                                        jmp   n289_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n275_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn412:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n259_iterate_β
                                                                                        jmp   n288_call_builtin_icon_α
n282_call_builtin_icon_β:
                                                                                        jmp   n259_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n283_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn414:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n280_disjunction_β
                                                                                        jmp   n289_lit_string_α
n283_call_builtin_icon_β:
                                                                                        jmp   n280_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n290_call_builtin_icon_α
n284_var_β:
                                                                                        jmp   n280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n285_goto_α:
                                                                                        jmp   n284_var_α
n285_goto_β:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n280_disjunction_as
n286_lit_string_β:
                                                                                        jmp   n280_disjunction_af
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn419:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn419]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n284_var_α
                                                                                        jmp   n280_disjunction_as
n287_call_builtin_icon_β:
                                                                                        jmp   n284_var_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn421:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n259_iterate_β
                                                                                        jmp   n259_iterate_β
n288_call_builtin_icon_β:
                                                                                        jmp   n259_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n291_disjunction_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "close(f) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n290_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn424:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn424]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n280_disjunction_af
                                                                                        jmp   n292_call_builtin_icon_α
n290_call_builtin_icon_β:
                                                                                        jmp   n280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n291_disjunction_α:
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0
                                                                                        jmp   n294_var_α
n291_disjunction_as:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        jne   .Lx426_0
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n293_call_builtin_icon_α
.Lx426_0:
                        cmp              eax, 1
                                                                                        jne   .Lx426_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n293_call_builtin_icon_α
.Lx426_1:
                                                                                        jmp   n293_call_builtin_icon_α
n291_disjunction_β:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        je    n291_disjunction_af
                                                                                        jmp   n291_disjunction_af
n291_disjunction_af:
                        add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1
                                                                                        je    n295_lit_string_α
                                                                                        jmp   n297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn428:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n280_disjunction_af
                                                                                        jmp   n284_var_α
n292_call_builtin_icon_β:
                                                                                        jmp   n280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn430:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn430]
                        lea              rsi, [rbp + 832]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n291_disjunction_β
                                                                                        jmp   n297_lit_string_α
n293_call_builtin_icon_β:
                                                                                        jmp   n291_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n298_call_builtin_icon_α
n294_var_β:
                                                                                        jmp   n291_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n291_disjunction_as
n295_lit_string_β:
                                                                                        jmp   n291_disjunction_af
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn434:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn434]
                        lea              rsi, [rbp + 944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n291_disjunction_af
                                                                                        jmp   n291_disjunction_as
n296_call_builtin_icon_β:
                                                                                        jmp   n291_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n299_disjunction_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "f := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn437:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn437]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n291_disjunction_af
                                                                                        jmp   n296_call_builtin_icon_α
n298_call_builtin_icon_β:
                                                                                        jmp   n291_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n299_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n301_lit_string_α
n299_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx439_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n300_call_builtin_icon_α
.Lx439_0:
                        cmp              eax, 1
                                                                                        jne   .Lx439_1
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n300_call_builtin_icon_α
.Lx439_1:
                                                                                        jmp   n300_call_builtin_icon_α
n299_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n299_disjunction_af
n299_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n302_lit_string_α
                                                                                        jmp   n304_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn441:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]
                        lea              rsi, [rbp + 576]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n299_disjunction_β
                                                                                        jmp   n304_lit_string_α
n300_call_builtin_icon_β:
                                                                                        jmp   n299_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n305_call_builtin_icon_α
n301_lit_string_β:
                                                                                        jmp   n299_disjunction_af
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n299_disjunction_as
n302_lit_string_β:
                                                                                        jmp   n299_disjunction_af
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n303_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn445:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n299_disjunction_as
n303_call_builtin_icon_β:
                                                                                        jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n306_disjunction_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "while writes(reads(f,10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn448:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn448]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n307_assign_α
n305_call_builtin_icon_β:
                                                                                        jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n306_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n309_var_α
n306_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx450_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n308_call_builtin_icon_α
.Lx450_0:
                        cmp              eax, 1
                                                                                        jne   .Lx450_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n308_call_builtin_icon_α
.Lx450_1:
                                                                                        jmp   n308_call_builtin_icon_α
n306_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n310_goto_β
                                                                                        jmp   n306_disjunction_af
n306_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n313_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n303_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn453:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n306_disjunction_β
                                                                                        jmp   n313_lit_string_α
n308_call_builtin_icon_β:
                                                                                        jmp   n306_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n314_lit_integer_α
n309_var_β:
                                                                                        jmp   n306_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:
                                                                                        jmp   n309_var_α
n310_goto_β:
                                                                                        jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n306_disjunction_as
n311_lit_string_β:
                                                                                        jmp   n306_disjunction_af
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn458:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rbp + 384]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n309_var_α
                                                                                        jmp   n306_disjunction_as
n312_call_builtin_icon_β:
                                                                                        jmp   n309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n315_disjunction_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "f := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n316_call_builtin_icon_α
.Lx460_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n315_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n318_lit_string_α
n315_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx462_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n317_call_builtin_icon_α
.Lx462_0:
                        cmp              eax, 1
                                                                                        jne   .Lx462_1
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n317_call_builtin_icon_α
.Lx462_1:
                                                                                        jmp   n317_call_builtin_icon_α
n315_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n315_disjunction_af
                                                                                        jmp   n315_disjunction_af
n315_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n319_lit_string_α
                                                                                        jmp   proc_q2_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn464:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn464]
                        lea              rsi, [rbp + 464]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n306_disjunction_af
                                                                                        jmp   n321_call_builtin_icon_α
n316_call_builtin_icon_β:
                                                                                        jmp   n306_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn466:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n315_disjunction_β
                                                                                        jmp   proc_q2_ω
n317_call_builtin_icon_β:
                                                                                        jmp   n315_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n322_call_builtin_icon_α
n318_lit_string_β:
                                                                                        jmp   n315_disjunction_af
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n315_disjunction_as
n319_lit_string_β:
                                                                                        jmp   n315_disjunction_af
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn470:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n315_disjunction_af
                                                                                        jmp   n315_disjunction_as
n320_call_builtin_icon_β:
                                                                                        jmp   n315_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn472:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n306_disjunction_af
                                                                                        jmp   n309_var_α
n321_call_builtin_icon_β:
                                                                                        jmp   n306_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn474:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn474]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n315_disjunction_af
                                                                                        jmp   n323_assign_α
n322_call_builtin_icon_β:
                                                                                        jmp   n315_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n323_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n320_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_q2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q2_β:
                                                                                        jmp   proc_q2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3256]
                        lea              rsp, [rbp + 3280]
                        mov              rbp, [rbp + 3272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q2_ω:
                        mov              rax, [rbp + 3264]
                        lea              rsp, [rbp + 3280]
                        mov              rbp, [rbp + 3272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q2_dcα:
                        pop              r11
                        sub              rsp, 3296
                        mov              qword ptr [rsp + 3272], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3248], r11
                        lea              rax, [rip + .Lx476_2]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rax, [rip + .Lx476_3]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rdi, rbp
                        mov              esi, 3248
                        mov              edx, 3248
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_q2_α_body
.Lx476_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3280
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx476_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3280
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q3_α
proc_q3_α:
                        .global          proc_q3_α
                        .global          proc_q3_β
                        .global          proc_q3_γ
                        .global          proc_q3_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_q3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n478_disjunction_α
.Lx493_0:
                        .quad            .Lx493_0_s
.Lx493_0_s:
                        .string          "while write(read(f)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n478_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n480_var_α
n478_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx495_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n479_call_builtin_icon_α
.Lx495_0:
                        cmp              eax, 1
                                                                                        jne   .Lx495_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n479_call_builtin_icon_α
.Lx495_1:
                                                                                        jmp   n479_call_builtin_icon_α
n478_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n481_goto_β
                                                                                        jmp   n478_disjunction_af
n478_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n482_lit_string_α
                                                                                        jmp   n484_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn497:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn497]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n478_disjunction_β
                                                                                        jmp   n484_lit_string_α
n479_call_builtin_icon_β:
                                                                                        jmp   n478_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n480_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n485_call_builtin_icon_α
n480_var_β:
                                                                                        jmp   n478_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n481_goto_α:
                                                                                        jmp   n480_var_α
n481_goto_β:
                                                                                        jmp   n480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n478_disjunction_as
n482_lit_string_β:
                                                                                        jmp   n478_disjunction_af
.Lx500_0:
                        .quad            .Lx500_0_s
.Lx500_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n483_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn502:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rbp + 368]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n480_var_α
                                                                                        jmp   n478_disjunction_as
n483_call_builtin_icon_β:
                                                                                        jmp   n480_var_α
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n486_disjunction_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          "close(f) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn505:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n478_disjunction_af
                                                                                        jmp   n487_call_builtin_icon_α
n485_call_builtin_icon_β:
                                                                                        jmp   n478_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n486_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n489_var_α
n486_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx507_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n488_call_builtin_icon_α
.Lx507_0:
                        cmp              eax, 1
                                                                                        jne   .Lx507_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n488_call_builtin_icon_α
.Lx507_1:
                                                                                        jmp   n488_call_builtin_icon_α
n486_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n486_disjunction_af
                                                                                        jmp   n486_disjunction_af
n486_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n490_lit_string_α
                                                                                        jmp   proc_q3_ω
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn509:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn509]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n478_disjunction_af
                                                                                        jmp   n480_var_α
n487_call_builtin_icon_β:
                                                                                        jmp   n478_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn511:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n486_disjunction_β
                                                                                        jmp   proc_q3_ω
n488_call_builtin_icon_β:
                                                                                        jmp   n486_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n489_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n492_call_builtin_icon_α
n489_var_β:
                                                                                        jmp   n486_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n486_disjunction_as
n490_lit_string_β:
                                                                                        jmp   n486_disjunction_af
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn515:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n486_disjunction_af
                                                                                        jmp   n486_disjunction_as
n491_call_builtin_icon_β:
                                                                                        jmp   n486_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n492_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn517:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn517]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n486_disjunction_af
                                                                                        jmp   n491_call_builtin_icon_α
n492_call_builtin_icon_β:
                                                                                        jmp   n486_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_q3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q3_β:
                                                                                        jmp   proc_q3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 520]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q3_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q3_dcα:
                        pop              r11
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 512], r11
                        lea              rax, [rip + .Lx518_2]
                        mov              qword ptr [rbp + 520], rax
                        lea              rax, [rip + .Lx518_3]
                        mov              qword ptr [rbp + 528], rax
                        mov              rdi, rbp
                        mov              esi, 512
                        mov              edx, 512
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_q3_α_body
.Lx518_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -544
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx518_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -544
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q4_α
proc_q4_α:
                        .global          proc_q4_α
                        .global          proc_q4_β
                        .global          proc_q4_γ
                        .global          proc_q4_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_q4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn539:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rbp + 464]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n521_call_builtin_icon_α
                                                                                        jmp   n520_assign_α
n519_call_builtin_icon_β:
                                                                                        jmp   n521_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n520_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n521_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn542:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]
                        lea              rsi, [rbp + 432]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n523_var_ref_α
                                                                                        jmp   n522_assign_α
n521_call_builtin_icon_β:
                                                                                        jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n524_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n525_lit_integer_α
.Lx546_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n526_to_α
.Lx547_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n526_to_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 320], 6
                        mov              qword ptr [rbp + 328], rax
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 336], 6
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 304], rax
.Lx549_0:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 344]
                        cmp              rax, rcx
                                                                                        jg    n530_var_α
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n527_subscript_α
n526_to_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx549_0
#-----------------------------------------------------------------------------------------------------------------------
n527_subscript_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n526_to_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n528_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n529_assign_var_α
.Lx551_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n529_assign_var_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n530_var_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n526_to_β
#-----------------------------------------------------------------------------------------------------------------------
n530_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n531_var_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n533_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n534_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n533_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx560_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 99
                                                                                        je    n532_var_α
                                                                                        jmp   n535_call_builtin_icon_α
n533_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx560_0
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn562:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn562]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_q4_ω
                                                                                        jmp   n536_iterate_α
n534_call_builtin_icon_β:
                                                                                        jmp   proc_q4_ω
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn564:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rbp + 160]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n533_iterate_β
                                                                                        jmp   n533_iterate_β
n535_call_builtin_icon_β:
                                                                                        jmp   n533_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n536_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx566_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    proc_q4_ω
                                                                                        jmp   n537_call_builtin_icon_α
n536_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx566_0
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn568:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n536_iterate_β
                                                                                        jmp   n536_iterate_β
n537_call_builtin_icon_β:
                                                                                        jmp   n536_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
proc_q4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q4_β:
                                                                                        jmp   proc_q4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 520]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q4_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q4_dcα:
                        pop              r11
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 512], r11
                        lea              rax, [rip + .Lx569_2]
                        mov              qword ptr [rbp + 520], rax
                        lea              rax, [rip + .Lx569_3]
                        mov              qword ptr [rbp + 528], rax
                        mov              rdi, rbp
                        mov              esi, 480
                        mov              edx, 512
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_q4_α_body
.Lx569_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -544
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx569_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -544
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q5_α
proc_q5_α:
                        .global          proc_q5_α
                        .global          proc_q5_β
                        .global          proc_q5_γ
                        .global          proc_q5_ω
                        sub              rsp, 1600
                        mov              [rsp + 1576], rcx
                        mov              [rsp + 1584], rdx
                        mov              [rsp + 1592], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1536
                        mov              edx, 1568
                        call             rt_jmp_frame_lexprep2@PLT
proc_q5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n571_lit_integer_α
.Lx624_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n572_to_α
.Lx625_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n572_to_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 32], rax
.Lx627_0:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 72]
                        cmp              rax, rcx
                                                                                        jg    proc_q5_ω
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n573_assign_α
n572_to_β:
                        inc              qword ptr [rbp + 32]
                                                                                        jmp   .Lx627_0
#-----------------------------------------------------------------------------------------------------------------------
n573_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n574_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n574_bound_α:
                        mov              qword ptr [rbp + 80], rsp
                                                                                        jmp   n575_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_real_α:
                        mov              qword ptr [rbp + 1504], 7
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n576_var_α
.Lx631_0:
                        .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n576_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n577_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n577_op75_α:
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 7
                                                                                        je    .Lx635_1
                        cmp              eax, 6
                                                                                        jne   .Lx635_0
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 6
                                                                                        jne   .Lx635_0
.Lx635_1:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n579_binop_α
.Lx635_0:
                        lea              rdi, [rbp + 1536]
                        lea              rsi, [rbp + 1504]
                        lea              rdx, [rbp + 1488]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n579_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n578_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n580_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n579_binop_α:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n578_var_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n582_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n580_call_proc_staged_α:
                        lea              rsi, [rbp + 1456]
                        call             proc_wf_dcα
                                                                                        jmp   .Lx640_2
.Lx640_2:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n581_disjunction_α
                                                                                        jmp   n581_disjunction_α
n580_call_proc_staged_β:
                                                                                        jmp   n581_disjunction_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n581_disjunction_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                        mov              dword ptr [rbp + 1024], 0
                                                                                        jmp   n584_var_α
n581_disjunction_as:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        jne   .Lx642_0
                                                                                        jmp   n583_disjunction_α
.Lx642_0:
                        cmp              eax, 1
                                                                                        jne   .Lx642_1
                                                                                        jmp   n583_disjunction_α
.Lx642_1:
                                                                                        jmp   n583_disjunction_α
n581_disjunction_β:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 0
                                                                                        je    n583_disjunction_α
                                                                                        jmp   n583_disjunction_α
n581_disjunction_af:
                        add              dword ptr [rbp + 1024], 1
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 1
                                                                                        je    n585_disjunction_α
                                                                                        jmp   n583_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n582_assign_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n578_var_α
#-----------------------------------------------------------------------------------------------------------------------
n583_disjunction_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   n587_var_α
n583_disjunction_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        jne   .Lx645_0
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n586_call_proc_staged_α
.Lx645_0:
                        cmp              eax, 1
                                                                                        jne   .Lx645_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n586_call_proc_staged_α
.Lx645_1:
                                                                                        jmp   n586_call_proc_staged_α
n583_disjunction_β:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        je    n583_disjunction_af
                                                                                        jmp   n583_disjunction_af
n583_disjunction_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 1
                                                                                        je    n588_var_α
                                                                                        jmp   n603_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n584_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n591_lit_real_α
n584_var_β:
                                                                                        jmp   n581_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n585_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n593_lit_string_α
n585_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx649_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n592_call_proc_staged_α
.Lx649_0:
                        cmp              eax, 1
                                                                                        jne   .Lx649_1
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n592_call_proc_staged_α
.Lx649_1:
                                                                                        jmp   n592_call_proc_staged_α
n585_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n585_disjunction_af
                                                                                        jmp   n585_disjunction_af
n585_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n594_lit_string_α
                                                                                        jmp   n583_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n586_call_proc_staged_α:
                        lea              rsi, [rbp + 816]
                        call             proc_wf_dcα
                                                                                        jmp   .Lx651_2
.Lx651_2:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n583_disjunction_β
                                                                                        jmp   n583_disjunction_β
n586_call_proc_staged_β:
                                                                                        jmp   n583_disjunction_β
.Lx651_0:
                        .quad            .Lx651_0_s
.Lx651_0_s:
                        .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n587_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n589_call_builtin_icon_α
n587_var_β:
                                                                                        jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n595_lit_integer_α
n588_var_β:
                                                                                        jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n589_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn657:              .string          "atan"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn657]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n583_disjunction_af
                                                                                        jmp   n583_disjunction_as
n589_call_builtin_icon_β:
                                                                                        jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn659:              .string          "atan"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn659]
                        lea              rsi, [rbp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n583_disjunction_af
                                                                                        jmp   n583_disjunction_as
n590_call_builtin_icon_β:
                                                                                        jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_real_α:
                        mov              qword ptr [rbp + 1280], 7
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n596_binop_test_α
.Lx660_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n592_call_proc_staged_α:
                        lea              rsi, [rbp + 1344]
                        call             proc_wf_dcα
                                                                                        jmp   .Lx662_2
.Lx662_2:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n585_disjunction_β
                                                                                        jmp   n585_disjunction_β
n592_call_proc_staged_β:
                                                                                        jmp   n585_disjunction_β
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n585_disjunction_as
n593_lit_string_β:
                                                                                        jmp   n585_disjunction_af
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n585_disjunction_as
n594_lit_string_β:
                                                                                        jmp   n585_disjunction_af
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n590_call_builtin_icon_α
.Lx665_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n596_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n581_disjunction_af
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n597_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n597_disjunction_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   n599_proc_value_α
n597_disjunction_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx668_0
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n598_var_α
.Lx668_0:
                        cmp              eax, 1
                                                                                        jne   .Lx668_1
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n598_var_α
.Lx668_1:
                                                                                        jmp   n598_var_α
n597_disjunction_β:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        je    n597_disjunction_af
                                                                                        jmp   n597_disjunction_af
n597_disjunction_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 1
                                                                                        je    n600_proc_value_α
                                                                                        jmp   n583_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n601_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n599_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx672_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n597_disjunction_as
n599_proc_value_β:
                                                                                        jmp   n597_disjunction_af
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "acos"
#-----------------------------------------------------------------------------------------------------------------------
n600_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx674_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n597_disjunction_as
n600_proc_value_β:
                                                                                        jmp   n597_disjunction_af
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "asin"
#-----------------------------------------------------------------------------------------------------------------------
n601_call_value_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              qword ptr [rbp + 1184], 0
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        lea              rdx, [rbp + 1168]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx676_7
                        lea              rcx, [rip + .Lx676_3]
                        lea              rdx, [rip + .Lx676_4]
                                                                                        jmp   rax
.Lx676_3:
                        mov              qword ptr [rbp + 1192], rsp
                        mov              rax, qword ptr [rbp + 1184]
                        test             rax, rax
                                                                                        jne   .Lx676_5
                        mov              qword ptr [rbp + 1184], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx676_2
.Lx676_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx676_2
.Lx676_4:
                        mov              qword ptr [rbp + 1192], rsp
                        mov              rax, qword ptr [rbp + 1184]
                        test             rax, rax
                                                                                        jne   .Lx676_6
                        mov              qword ptr [rbp + 1184], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx676_2
.Lx676_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx676_2
.Lx676_7:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        lea              rdx, [rbp + 1168]
                        mov              ecx, 1
                        lea              r8, [rbp + 1184]
                        call             rt_call_value_gen_h@PLT
.Lx676_2:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n597_disjunction_β
                                                                                        jmp   n602_call_proc_staged_α
n601_call_value_β:
                        mov              rax, qword ptr [rbp + 1184]
                        cmp              rax, 1
                                                                                        jne   .Lx676_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1192]
                                                                                        jmp   qword ptr [rsp]
.Lx676_8:
                        lea              rdi, [rbp + 1184]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n597_disjunction_β
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n602_call_proc_staged_α
                                                                                        jmp   n597_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n602_call_proc_staged_α:
                        lea              rsi, [rbp + 1152]
                        call             proc_wf_dcα
                                                                                        jmp   .Lx678_2
.Lx678_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n601_call_value_β
                                                                                        jmp   n601_call_value_β
n602_call_proc_staged_β:
                                                                                        jmp   n601_call_value_β
.Lx678_0:
                        .quad            .Lx678_0_s
.Lx678_0_s:
                        .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n603_disjunction_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0
                                                                                        jmp   n606_proc_value_α
n603_disjunction_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        jne   .Lx680_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n604_var_α
.Lx680_0:
                        cmp              eax, 1
                                                                                        jne   .Lx680_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n604_var_α
.Lx680_1:
                        cmp              eax, 2
                                                                                        jne   .Lx680_2
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n604_var_α
.Lx680_2:
                                                                                        jmp   n604_var_α
n603_disjunction_β:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        je    n603_disjunction_af
                        cmp              eax, 1
                                                                                        je    n603_disjunction_af
                                                                                        jmp   n603_disjunction_af
n603_disjunction_af:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1
                                                                                        je    n607_proc_value_α
                        cmp              eax, 2
                                                                                        je    n608_proc_value_α
                                                                                        jmp   n605_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n609_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n605_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n612_proc_value_α
n605_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx684_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n610_var_α
.Lx684_0:
                        cmp              eax, 1
                                                                                        jne   .Lx684_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n610_var_α
.Lx684_1:
                        cmp              eax, 2
                                                                                        jne   .Lx684_2
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n610_var_α
.Lx684_2:
                                                                                        jmp   n610_var_α
n605_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n605_disjunction_af
                        cmp              eax, 1
                                                                                        je    n605_disjunction_af
                                                                                        jmp   n605_disjunction_af
n605_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n613_proc_value_α
                        cmp              eax, 2
                                                                                        je    n614_proc_value_α
                                                                                        jmp   n611_var_α
#-----------------------------------------------------------------------------------------------------------------------
n606_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx686_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n603_disjunction_as
n606_proc_value_β:
                                                                                        jmp   n603_disjunction_af
.Lx686_0:
                        .quad            .Lx686_0_s
.Lx686_0_s:
                        .string          "cos"
#-----------------------------------------------------------------------------------------------------------------------
n607_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx688_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n603_disjunction_as
n607_proc_value_β:
                                                                                        jmp   n603_disjunction_af
.Lx688_0:
                        .quad            .Lx688_0_s
.Lx688_0_s:
                        .string          "sin"
#-----------------------------------------------------------------------------------------------------------------------
n608_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx690_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n603_disjunction_as
n608_proc_value_β:
                                                                                        jmp   n603_disjunction_af
.Lx690_0:
                        .quad            .Lx690_0_s
.Lx690_0_s:
                        .string          "tan"
#-----------------------------------------------------------------------------------------------------------------------
n609_call_value_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              qword ptr [rbp + 704], 0
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        lea              rdx, [rbp + 688]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx692_7
                        lea              rcx, [rip + .Lx692_3]
                        lea              rdx, [rip + .Lx692_4]
                                                                                        jmp   rax
.Lx692_3:
                        mov              qword ptr [rbp + 712], rsp
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx692_5
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx692_2
.Lx692_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx692_2
.Lx692_4:
                        mov              qword ptr [rbp + 712], rsp
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx692_6
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx692_2
.Lx692_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx692_2
.Lx692_7:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        lea              rdx, [rbp + 688]
                        mov              ecx, 1
                        lea              r8, [rbp + 704]
                        call             rt_call_value_gen_h@PLT
.Lx692_2:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n603_disjunction_β
                                                                                        jmp   n615_call_proc_staged_α
n609_call_value_β:
                        mov              rax, qword ptr [rbp + 704]
                        cmp              rax, 1
                                                                                        jne   .Lx692_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 712]
                                                                                        jmp   qword ptr [rsp]
.Lx692_8:
                        lea              rdi, [rbp + 704]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n603_disjunction_β
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n615_call_proc_staged_α
                                                                                        jmp   n603_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n610_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n616_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n617_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n612_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx698_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n605_disjunction_as
n612_proc_value_β:
                                                                                        jmp   n605_disjunction_af
.Lx698_0:
                        .quad            .Lx698_0_s
.Lx698_0_s:
                        .string          "sqrt"
#-----------------------------------------------------------------------------------------------------------------------
n613_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx700_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n605_disjunction_as
n613_proc_value_β:
                                                                                        jmp   n605_disjunction_af
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n614_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx702_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n605_disjunction_as
n614_proc_value_β:
                                                                                        jmp   n605_disjunction_af
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n615_call_proc_staged_α:
                        lea              rsi, [rbp + 672]
                        call             proc_wf_dcα
                                                                                        jmp   .Lx704_2
.Lx704_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n609_call_value_β
                                                                                        jmp   n609_call_value_β
n615_call_proc_staged_β:
                                                                                        jmp   n609_call_value_β
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n616_call_value_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              qword ptr [rbp + 480], 0
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        lea              rdx, [rbp + 464]
                        mov              ecx, 1
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx706_7
                        lea              rcx, [rip + .Lx706_3]
                        lea              rdx, [rip + .Lx706_4]
                                                                                        jmp   rax
.Lx706_3:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx706_5
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx706_2
.Lx706_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx706_2
.Lx706_4:
                        mov              qword ptr [rbp + 488], rsp
                        mov              rax, qword ptr [rbp + 480]
                        test             rax, rax
                                                                                        jne   .Lx706_6
                        mov              qword ptr [rbp + 480], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx706_2
.Lx706_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx706_2
.Lx706_7:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        lea              rdx, [rbp + 464]
                        mov              ecx, 1
                        lea              r8, [rbp + 480]
                        call             rt_call_value_gen_h@PLT
.Lx706_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n605_disjunction_β
                                                                                        jmp   n619_call_proc_staged_α
n616_call_value_β:
                        mov              rax, qword ptr [rbp + 480]
                        cmp              rax, 1
                                                                                        jne   .Lx706_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 488]
                                                                                        jmp   qword ptr [rsp]
.Lx706_8:
                        lea              rdi, [rbp + 480]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n605_disjunction_β
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n619_call_proc_staged_α
                                                                                        jmp   n605_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx707_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n620_call_builtin_icon_α
.Lx707_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n618_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn709:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn709]
                        lea              rsi, [rbp + 160]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n622_unmark_α
                                                                                        jmp   n621_conjunction_α
n618_call_builtin_icon_β:
                                                                                        jmp   n622_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n619_call_proc_staged_α:
                        lea              rsi, [rbp + 448]
                        call             proc_wf_dcα
                                                                                        jmp   .Lx711_2
.Lx711_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n616_call_value_β
                                                                                        jmp   n616_call_value_β
n619_call_proc_staged_β:
                                                                                        jmp   n616_call_value_β
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n620_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn713:              .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn713]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n618_call_builtin_icon_α
                                                                                        jmp   n623_call_proc_staged_α
n620_call_builtin_icon_β:
                                                                                        jmp   n618_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n621_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n622_unmark_α
n621_conjunction_β:
                                                                                        jmp   n622_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n622_unmark_α:
                        mov              rsp, qword ptr [rbp + 80]
                                                                                        jmp   n572_to_β
#-----------------------------------------------------------------------------------------------------------------------
n623_call_proc_staged_α:
                        lea              rsi, [rbp + 224]
                        call             proc_wf_dcα
                                                                                        jmp   .Lx718_2
.Lx718_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n618_call_builtin_icon_α
                                                                                        jmp   n618_call_builtin_icon_α
n623_call_proc_staged_β:
                                                                                        jmp   n618_call_builtin_icon_α
.Lx718_0:
                        .quad            .Lx718_0_s
.Lx718_0_s:
                        .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
proc_q5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q5_β:
                                                                                        jmp   proc_q5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1576]
                        lea              rsp, [rbp + 1600]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q5_ω:
                        mov              rax, [rbp + 1584]
                        lea              rsp, [rbp + 1600]
                        mov              rbp, [rbp + 1592]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q5_dcα:
                        pop              r11
                        sub              rsp, 1616
                        mov              qword ptr [rsp + 1592], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1568], r11
                        lea              rax, [rip + .Lx719_2]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rax, [rip + .Lx719_3]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rdi, rbp
                        mov              esi, 1536
                        mov              edx, 1568
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_q5_α_body
.Lx719_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1600
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx719_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1600
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wf_α
proc_wf_α:
                        .global          proc_wf_α
                        .global          proc_wf_β
                        .global          proc_wf_γ
                        .global          proc_wf_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_wf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n721_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n722_call_builtin_icon_α
.Lx727_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n722_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn729:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn729]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_wf_ω
                                                                                        jmp   n723_lit_string_α
n722_call_builtin_icon_β:
                                                                                        jmp   proc_wf_ω
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:
                        mov              qword ptr [rsp + 192], 1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n724_call_builtin_icon_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n724_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn732:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn732]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_wf_ω
                                                                                        jmp   proc_wf_ω
n724_call_builtin_icon_β:
                                                                                        jmp   proc_wf_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wf_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_wf_β:
                                                                                        jmp   proc_wf_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wf_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 216]
                        add              rsp, 240
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wf_ω:
                        mov              rax, [rsp + 224]
                        add              rsp, 240
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wf_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 208], r11
                        lea              rax, [rip + .Lx733_2]
                        mov              qword ptr [rsp + 216], rax
                        lea              rax, [rip + .Lx733_3]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wf_α_body
.Lx733_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx733_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "array(a,b,c,d,e,f,g)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "q1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_q1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_q1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "q2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_q2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_q2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "q3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_q3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_q3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "q4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_q4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_q4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "q5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_q5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1568
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_q5_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "wf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_wf_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_wf_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "F"
.Lgvan1:                .string          "f"
.Lgvan2:                .string          "w"
.Lgvan3:                .string          "t"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
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
                        sub              rsp, 168
                        mov              rdi, rsp
                        mov              ecx, 168
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n734_call_proc_staged_α:
                        call             proc_q1_dcα
                                                                                        jmp   .Lx740_2
.Lx740_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n735_call_proc_staged_α
                                                                                        jmp   n735_call_proc_staged_α
n734_call_proc_staged_β:
                                                                                        jmp   n735_call_proc_staged_α
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "q1"
#-----------------------------------------------------------------------------------------------------------------------
n735_call_proc_staged_α:
                        call             proc_q2_dcα
                                                                                        jmp   .Lx742_2
.Lx742_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n736_call_proc_staged_α
                                                                                        jmp   n736_call_proc_staged_α
n735_call_proc_staged_β:
                                                                                        jmp   n736_call_proc_staged_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "q2"
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        call             proc_q3_dcα
                                                                                        jmp   .Lx744_2
.Lx744_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n737_call_proc_staged_α
                                                                                        jmp   n737_call_proc_staged_α
n736_call_proc_staged_β:
                                                                                        jmp   n737_call_proc_staged_α
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          "q3"
#-----------------------------------------------------------------------------------------------------------------------
n737_call_proc_staged_α:
                        call             proc_q4_dcα
                                                                                        jmp   .Lx746_2
.Lx746_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n738_call_proc_staged_α
                                                                                        jmp   n738_call_proc_staged_α
n737_call_proc_staged_β:
                                                                                        jmp   n738_call_proc_staged_α
.Lx746_0:
                        .quad            .Lx746_0_s
.Lx746_0_s:
                        .string          "q4"
#-----------------------------------------------------------------------------------------------------------------------
n738_call_proc_staged_α:
                        call             proc_q5_dcα
                                                                                        jmp   .Lx748_2
.Lx748_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n738_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx748_0:
                        .quad            .Lx748_0_s
.Lx748_0_s:
                        .string          "q5"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 168
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 168
                        ret
                        .section         .note.GNU-stack,"",@progbits
