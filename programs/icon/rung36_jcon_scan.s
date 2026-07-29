                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p1_α
proc_p1_α:
                        .global          proc_p1_α
                        .global          proc_p1_β
                        .global          proc_p1_γ
                        .global          proc_p1_ω
                        sub              rsp, 2992
                        mov              [rsp + 2968], rcx
                        mov              [rsp + 2976], rdx
                        mov              [rsp + 2984], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2960
                        mov              edx, 2960
                        call             rt_jmp_frame_lexprep2@PLT
proc_p1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n1_disjunction_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          " ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 2880], 0
                        mov              qword ptr [rbp + 2888], 0
                        mov              dword ptr [rbp + 2896], 0
                                                                                        jmp   n3_call_builtin_icon_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 0
                                                                                        jne   .Lx100_0
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx100_0:
                        cmp              eax, 1
                                                                                        jne   .Lx100_1
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx100_1:
                                                                                        jmp   n2_call_builtin_icon_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 2896], 1
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 1
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lrkfn102:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]
                        lea              rsi, [rbp + 2816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_β
                                                                                        jmp   n5_lit_string_α
n2_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn104:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 2928]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_as
n3_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 2944], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n1_disjunction_as
n4_lit_string_β:
                                                                                        jmp   n1_disjunction_af
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n6_disjunction_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "every write((\"badc\" | \"edgf\" | \"x\") ? write(upto(!&lcase))) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 2384], 0
                        mov              qword ptr [rbp + 2392], 0
                        mov              dword ptr [rbp + 2400], 0
                                                                                        jmp   n8_disjunction_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        jne   .Lx108_0
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx108_0:
                        cmp              eax, 1
                                                                                        jne   .Lx108_1
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx108_1:
                                                                                        jmp   n7_call_builtin_icon_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 2400], 1
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 1
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn110:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_β
                                                                                        jmp   n11_lit_string_α
n7_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              dword ptr [rbp + 2720], 0
                                                                                        jmp   n13_lit_string_α
n8_disjunction_as:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n12_scan_enter_α
.Lx112_0:
                        cmp              eax, 1
                                                                                        jne   .Lx112_1
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n12_scan_enter_α
.Lx112_1:
                        cmp              eax, 2
                                                                                        jne   .Lx112_2
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n12_scan_enter_α
.Lx112_2:
                                                                                        jmp   n12_scan_enter_α
n8_disjunction_β:
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 0
                                                                                        je    n8_disjunction_af
                        cmp              eax, 1
                                                                                        je    n8_disjunction_af
                                                                                        jmp   n8_disjunction_af
n8_disjunction_af:
                        add              dword ptr [rbp + 2720], 1
                        mov              eax, dword ptr [rbp + 2720]
                        cmp              eax, 1
                                                                                        je    n14_lit_string_α
                        cmp              eax, 2
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n6_disjunction_as
n9_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn115:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rbp + 2432]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n16_disjunction_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "every write(((\"aeiou\" | \"foobaz\") ? upto('dracula')) ? =(1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n12_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n8_disjunction_as
n13_lit_string_β:
                                                                                        jmp   n8_disjunction_af
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "badc"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n8_disjunction_as
n14_lit_string_β:
                                                                                        jmp   n8_disjunction_af
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "edgf"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n8_disjunction_as
n15_lit_string_β:
                                                                                        jmp   n8_disjunction_af
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:
                        mov              qword ptr [rbp + 1776], 0
                        mov              qword ptr [rbp + 1784], 0
                        mov              dword ptr [rbp + 1792], 0
                                                                                        jmp   n19_disjunction_α
n16_disjunction_as:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0
                                                                                        jne   .Lx123_0
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx123_0:
                        cmp              eax, 1
                                                                                        jne   .Lx123_1
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n18_call_builtin_icon_α
.Lx123_1:
                                                                                        jmp   n18_call_builtin_icon_α
n16_disjunction_β:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0
                                                                                        je    n16_disjunction_af
                                                                                        jmp   n16_disjunction_af
n16_disjunction_af:
                        add              dword ptr [rbp + 1792], 1
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 1
                                                                                        je    n20_lit_string_α
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              dword ptr [rbp + 2692], -1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n22_iterate_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn126:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n16_disjunction_β
                                                                                        jmp   n23_lit_string_α
n18_call_builtin_icon_β:
                                                                                        jmp   n16_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n19_disjunction_α:
                        mov              qword ptr [rbp + 2224], 0
                        mov              qword ptr [rbp + 2232], 0
                        mov              dword ptr [rbp + 2240], 0
                                                                                        jmp   n25_lit_string_α
n19_disjunction_as:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 0
                                                                                        jne   .Lx128_0
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n24_scan_enter_α
.Lx128_0:
                        cmp              eax, 1
                                                                                        jne   .Lx128_1
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n24_scan_enter_α
.Lx128_1:
                                                                                        jmp   n24_scan_enter_α
n19_disjunction_β:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 0
                                                                                        je    n19_disjunction_af
                                                                                        jmp   n19_disjunction_af
n19_disjunction_af:
                        add              dword ptr [rbp + 2240], 1
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 1
                                                                                        je    n26_lit_string_α
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n16_disjunction_as
n20_lit_string_β:
                                                                                        jmp   n16_disjunction_af
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn131:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n16_disjunction_af
                                                                                        jmp   n16_disjunction_as
n21_call_builtin_icon_β:
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n22_iterate_α:
                        mov              qword ptr [rbp + 2672], 0
.Lx133_0:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, qword ptr [rbp + 2672]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              rax, 99
                                                                                        je    n95_scan_α
                                                                                        jmp   n27_scan_upto_α
n22_iterate_β:
                        inc              qword ptr [rbp + 2672]
                                                                                        jmp   .Lx133_0
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n28_disjunction_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "every write((1 to 10) ? move(1)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n24_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n29_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n19_disjunction_as
n25_lit_string_β:
                                                                                        jmp   n19_disjunction_af
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n19_disjunction_as
n26_lit_string_β:
                                                                                        jmp   n19_disjunction_af
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "foobaz"
#-----------------------------------------------------------------------------------------------------------------------
n27_scan_upto_α:
                        mov              qword ptr [rbp + 2640], r14
.Lx140_0:
                        mov              rax, qword ptr [rbp + 2640]
                        cmp              rax, r15
                                                                                        jge   n22_iterate_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rbp + 2664]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx140_1
                        mov              qword ptr [rbp + 2624], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n30_call_builtin_icon_α
.Lx140_1:
                        inc              qword ptr [rbp + 2640]
                                                                                        jmp   .Lx140_0
n27_scan_upto_β:
                        inc              qword ptr [rbp + 2640]
                                                                                        jmp   .Lx140_0
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              dword ptr [rbp + 1392], 0
                                                                                        jmp   n32_lit_integer_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        jne   .Lx142_0
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx142_0:
                        cmp              eax, 1
                                                                                        jne   .Lx142_1
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx142_1:
                                                                                        jmp   n31_call_builtin_icon_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 0
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n28_disjunction_af
n28_disjunction_af:
                        add              dword ptr [rbp + 1392], 1
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              eax, 1
                                                                                        je    n33_lit_string_α
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_charset_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              dword ptr [rbp + 2212], -1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n35_scan_upto_α
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "acdlru"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn145:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n27_scan_upto_β
                                                                                        jmp   n36_scan_α
n30_call_builtin_icon_β:
                                                                                        jmp   n27_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn147:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n28_disjunction_β
                                                                                        jmp   n37_lit_string_α
n31_call_builtin_icon_β:
                                                                                        jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n38_lit_integer_α
n32_lit_integer_β:
                                                                                        jmp   n28_disjunction_af
.Lx148_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n28_disjunction_as
n33_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn151:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n28_disjunction_as
n34_call_builtin_icon_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n35_scan_upto_α:
                        mov              qword ptr [rbp + 2192], r14
.Lx153_0:
                        mov              rax, qword ptr [rbp + 2192]
                        cmp              rax, r15
                                                                                        jge   n96_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx153_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx153_1
                        mov              qword ptr [rbp + 2176], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n39_scan_α
.Lx153_1:
                        inc              qword ptr [rbp + 2192]
                                                                                        jmp   .Lx153_0
n35_scan_upto_β:
                        inc              qword ptr [rbp + 2192]
                                                                                        jmp   .Lx153_0
.Lx153_2:
                        .quad            .Lx153_2_s
.Lx153_2_s:
                        .string          "acdlru"
#-----------------------------------------------------------------------------------------------------------------------
n36_scan_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2512]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2512]
                        mov              r14, qword ptr [rbp + 2520]
                        mov              r15, qword ptr [rbp + 2528]
                                                                                        jmp   n40_call_builtin_icon_α
n36_scan_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n41_disjunction_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "&subject := &pos ----> "
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n42_to_α
.Lx157_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n39_scan_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2112]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2112]
                        mov              r14, qword ptr [rbp + 2120]
                        mov              r15, qword ptr [rbp + 2128]
                                                                                        jmp   n43_scan_enter_α
n39_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n35_scan_upto_β
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn161:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n8_disjunction_β
                                                                                        jmp   n8_disjunction_β
n40_call_builtin_icon_β:
                                                                                        jmp   n8_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n41_disjunction_α:
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              dword ptr [rbp + 1168], 0
                                                                                        jmp   n45_keyword_icon_α
n41_disjunction_as:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        jne   .Lx163_0
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n44_call_builtin_icon_α
.Lx163_0:
                        cmp              eax, 1
                                                                                        jne   .Lx163_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n44_call_builtin_icon_α
.Lx163_1:
                                                                                        jmp   n44_call_builtin_icon_α
n41_disjunction_β:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        je    n41_disjunction_af
                                                                                        jmp   n41_disjunction_af
n41_disjunction_af:
                        add              dword ptr [rbp + 1168], 1
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 1
                                                                                        je    n46_lit_string_α
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_to_α:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1648], 6
                        mov              qword ptr [rbp + 1656], rax
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1664], 6
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1632], rax
.Lx165_0:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1672]
                        cmp              rax, rcx
                                                                                        jg    n28_disjunction_af
                        mov              qword ptr [rbp + 1616], 6
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n48_scan_enter_α
n42_to_β:
                        inc              qword ptr [rbp + 1632]
                                                                                        jmp   .Lx165_0
#-----------------------------------------------------------------------------------------------------------------------
n43_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn169:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n41_disjunction_β
                                                                                        jmp   n50_lit_string_α
n44_call_builtin_icon_β:
                                                                                        jmp   n41_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n45_keyword_icon_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n51_keyword_assign_α
n45_keyword_icon_β:
                                                                                        jmp   n41_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n41_disjunction_as
n46_lit_string_β:
                                                                                        jmp   n41_disjunction_af
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn173:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n41_disjunction_af
                                                                                        jmp   n41_disjunction_as
n47_call_builtin_icon_β:
                                                                                        jmp   n41_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n48_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n53_lit_integer_α
.Lx176_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n54_disjunction_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "&pos :=: &subject ----> "
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n41_disjunction_af
                        mov              qword ptr [rbp + 1232], 1
                        mov              qword ptr [rbp + 1240], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n47_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 1600], 6
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n55_scan_move_α
.Lx179_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 6
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n56_to_α
.Lx180_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n54_disjunction_α:
                        mov              qword ptr [rbp + 880], 0
                        mov              qword ptr [rbp + 888], 0
                        mov              dword ptr [rbp + 896], 0
                                                                                        jmp   n58_keyword_icon_α
n54_disjunction_as:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        jne   .Lx182_0
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n57_call_builtin_icon_α
.Lx182_0:
                        cmp              eax, 1
                                                                                        jne   .Lx182_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n57_call_builtin_icon_α
.Lx182_1:
                                                                                        jmp   n57_call_builtin_icon_α
n54_disjunction_β:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 0
                                                                                        je    n54_disjunction_af
                                                                                        jmp   n54_disjunction_af
n54_disjunction_af:
                        add              dword ptr [rbp + 896], 1
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 1
                                                                                        je    n59_lit_string_α
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx184_239
                        add              rsp, 16
                                                                                        jmp   n62_scan_α
.Lx184_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx184_240
                        add              rsp, 16
                                                                                        jmp   n62_scan_α
.Lx184_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n61_scan_α
n55_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n62_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n56_to_α:
                        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2064], 6
                        mov              qword ptr [rbp + 2072], rax
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2080], 6
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2048], rax
.Lx186_0:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2088]
                        cmp              rax, rcx
                                                                                        jg    n97_scan_α
                        mov              qword ptr [rbp + 2032], 6
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n63_scan_match_α
n56_to_β:
                        inc              qword ptr [rbp + 2048]
                                                                                        jmp   .Lx186_0
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
.Lrkfn188:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn188]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n54_disjunction_β
                                                                                        jmp   n64_lit_string_α
n57_call_builtin_icon_β:
                                                                                        jmp   n54_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n58_keyword_icon_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n65_keyword_icon_α
n58_keyword_icon_β:
                                                                                        jmp   n54_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n54_disjunction_as
n59_lit_string_β:
                                                                                        jmp   n54_disjunction_af
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn192:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n54_disjunction_af
                                                                                        jmp   n54_disjunction_as
n60_call_builtin_icon_β:
                                                                                        jmp   n54_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n61_scan_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1504]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1504]
                        mov              r14, qword ptr [rbp + 1512]
                        mov              r15, qword ptr [rbp + 1520]
                                                                                        jmp   n66_call_builtin_icon_α
n61_scan_β:
                                                                                        jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n62_scan_α:
                        lea              rdi, [rbp + 1504]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1504]
                        mov              r14, qword ptr [rbp + 1512]
                        mov              r15, qword ptr [rbp + 1520]
                                                                                        jmp   n42_to_β
n62_scan_β:
                                                                                        jmp   n42_to_β
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_match_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        push             r10
                        push             r10
                        call             rt_scan_needle@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, rdx
                                                                                        jge   .Lx198_239
                        add              rsp, 16
                                                                                        jmp   n56_to_β
.Lx198_239:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, qword ptr [rsp + 8]
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx198_240
                        add              rsp, 16
                                                                                        jmp   n56_to_β
.Lx198_240:
                        mov              qword ptr [rbp + 2000], 6
                        mov              rax, r14
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rax, 1
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n67_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n68_disjunction_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "&pos ----> "
#-----------------------------------------------------------------------------------------------------------------------
n65_keyword_icon_α:
                        call             rt_keyword_subject@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n69_keyword_assign_α
n65_keyword_icon_β:
                                                                                        jmp   n54_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn202:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n42_to_β
                                                                                        jmp   n42_to_β
n66_call_builtin_icon_β:
                                                                                        jmp   n42_to_β
#-----------------------------------------------------------------------------------------------------------------------
n67_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2008]
                        cmp              rax, 1
                                                                                        jge   .Lx204_0
                        add              rax, r15
                        add              rax, 1
.Lx204_0:
                        cmp              rax, 1
                                                                                        jge   .Lx204_239
                        add              rsp, 16
                                                                                        jmp   n56_to_β
.Lx204_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx204_240
                        add              rsp, 16
                                                                                        jmp   n56_to_β
.Lx204_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n70_scan_α
n67_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n56_to_β
#-----------------------------------------------------------------------------------------------------------------------
n68_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n72_keyword_icon_α
n68_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx206_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n71_call_builtin_icon_α
.Lx206_0:
                        cmp              eax, 1
                                                                                        jne   .Lx206_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n71_call_builtin_icon_α
.Lx206_1:
                                                                                        jmp   n71_call_builtin_icon_α
n68_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    n68_disjunction_af
                                                                                        jmp   n68_disjunction_af
n68_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    n73_lit_string_α
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        call             rt_keyword_pos_set@PLT
                        cmp              eax, 99
                                                                                        je    n54_disjunction_af
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              r14, rdx
                        sub              r14, 1
                                                                                        jmp   n75_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n70_scan_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1904]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1904]
                        mov              r14, qword ptr [rbp + 1912]
                        mov              r15, qword ptr [rbp + 1920]
                                                                                        jmp   n76_call_builtin_icon_α
n70_scan_β:
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn211:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n68_disjunction_β
                                                                                        jmp   n77_lit_string_α
n71_call_builtin_icon_β:
                                                                                        jmp   n68_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n72_keyword_icon_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n74_call_builtin_icon_α
n72_keyword_icon_β:
                                                                                        jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n68_disjunction_as
n73_lit_string_β:
                                                                                        jmp   n68_disjunction_af
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn215:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n68_disjunction_af
                                                                                        jmp   n68_disjunction_as
n74_call_builtin_icon_β:
                                                                                        jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n54_disjunction_af
                        mov              qword ptr [rbp + 1040], 1
                        mov              qword ptr [rbp + 1048], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n60_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn218:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n39_scan_β
                                                                                        jmp   n39_scan_β
n76_call_builtin_icon_β:
                                                                                        jmp   n39_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n78_disjunction_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "&subject ----> "
#-----------------------------------------------------------------------------------------------------------------------
n78_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n80_keyword_icon_α
n78_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx221_0
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n79_call_builtin_icon_α
.Lx221_0:
                        cmp              eax, 1
                                                                                        jne   .Lx221_1
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n79_call_builtin_icon_α
.Lx221_1:
                                                                                        jmp   n79_call_builtin_icon_α
n78_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n78_disjunction_af
                                                                                        jmp   n78_disjunction_af
n78_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n81_lit_string_α
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n78_disjunction_β
                                                                                        jmp   n83_lit_string_α
n79_call_builtin_icon_β:
                                                                                        jmp   n78_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n80_keyword_icon_α:
                        call             rt_keyword_subject@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n82_call_builtin_icon_α
n80_keyword_icon_β:
                                                                                        jmp   n78_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n78_disjunction_as
n81_lit_string_β:
                                                                                        jmp   n78_disjunction_af
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn227:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n78_disjunction_af
                                                                                        jmp   n78_disjunction_as
n82_call_builtin_icon_β:
                                                                                        jmp   n78_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n84_disjunction_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "+1 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n84_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n86_lit_integer_α
n84_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx230_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n85_call_builtin_icon_α
.Lx230_0:
                        cmp              eax, 1
                                                                                        jne   .Lx230_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n85_call_builtin_icon_α
.Lx230_1:
                                                                                        jmp   n85_call_builtin_icon_α
n84_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        je    n84_disjunction_af
                                                                                        jmp   n84_disjunction_af
n84_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 1
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn232:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n84_disjunction_β
                                                                                        jmp   n89_lit_string_α
n85_call_builtin_icon_β:
                                                                                        jmp   n84_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n88_call_builtin_icon_α
n86_lit_integer_β:
                                                                                        jmp   n84_disjunction_af
.Lx233_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n84_disjunction_as
n87_lit_string_β:
                                                                                        jmp   n84_disjunction_af
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn236:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn236]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n84_disjunction_af
                                                                                        jmp   n84_disjunction_as
n88_call_builtin_icon_β:
                                                                                        jmp   n84_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n90_disjunction_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "-1 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n90_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n92_lit_integer_α
n90_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx239_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n91_call_builtin_icon_α
.Lx239_0:
                        cmp              eax, 1
                                                                                        jne   .Lx239_1
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n91_call_builtin_icon_α
.Lx239_1:
                                                                                        jmp   n91_call_builtin_icon_α
n90_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n90_disjunction_af
                                                                                        jmp   n90_disjunction_af
n90_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n93_lit_string_α
                                                                                        jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn241:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n90_disjunction_β
                                                                                        jmp   proc_p1_ω
n91_call_builtin_icon_β:
                                                                                        jmp   n90_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n94_call_builtin_icon_α
n92_lit_integer_β:
                                                                                        jmp   n90_disjunction_af
.Lx242_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n90_disjunction_as
n93_lit_string_β:
                                                                                        jmp   n90_disjunction_af
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn245:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn245]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n90_disjunction_af
                                                                                        jmp   n90_disjunction_as
n94_call_builtin_icon_β:
                                                                                        jmp   n90_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_scan_α:
                        lea              rdi, [rbp + 2512]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2512]
                        mov              r14, qword ptr [rbp + 2520]
                        mov              r15, qword ptr [rbp + 2528]
                                                                                        jmp   n8_disjunction_β
n95_scan_β:
                                                                                        jmp   n8_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n96_scan_α:
                        lea              rdi, [rbp + 2112]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2112]
                        mov              r14, qword ptr [rbp + 2120]
                        mov              r15, qword ptr [rbp + 2128]
                                                                                        jmp   n19_disjunction_β
n96_scan_β:
                                                                                        jmp   n19_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n97_scan_α:
                        lea              rdi, [rbp + 1904]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1904]
                        mov              r14, qword ptr [rbp + 1912]
                        mov              r15, qword ptr [rbp + 1920]
                                                                                        jmp   n39_scan_β
n97_scan_β:
                                                                                        jmp   n39_scan_β
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_β:
                                                                                        jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2968]
                        lea              rsp, [rbp + 2992]
                        mov              rbp, [rbp + 2984]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_ω:
                        mov              rax, [rbp + 2976]
                        lea              rsp, [rbp + 2992]
                        mov              rbp, [rbp + 2984]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_dcα:
                        pop              r11
                        sub              rsp, 3008
                        mov              qword ptr [rsp + 2984], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2960], r11
                        lea              rax, [rip + .Lx252_2]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rax, [rip + .Lx252_3]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rdi, rbp
                        mov              esi, 2960
                        mov              edx, 2960
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p1_α_body
.Lx252_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2992
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx252_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2992
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p2_α
proc_p2_α:
                        .global          proc_p2_α
                        .global          proc_p2_β
                        .global          proc_p2_γ
                        .global          proc_p2_ω
                        sub              rsp, 2576
                        mov              [rsp + 2552], rcx
                        mov              [rsp + 2560], rdx
                        mov              [rsp + 2568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2544
                        mov              edx, 2544
                        call             rt_jmp_frame_lexprep2@PLT
proc_p2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n254_disjunction_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "?10 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n254_disjunction_α:
                        mov              qword ptr [rbp + 2400], 0
                        mov              qword ptr [rbp + 2408], 0
                        mov              dword ptr [rbp + 2416], 0
                                                                                        jmp   n256_lit_integer_α
n254_disjunction_as:
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              eax, 0
                                                                                        jne   .Lx333_0
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n255_call_builtin_icon_α
.Lx333_0:
                        cmp              eax, 1
                                                                                        jne   .Lx333_1
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n255_call_builtin_icon_α
.Lx333_1:
                                                                                        jmp   n255_call_builtin_icon_α
n254_disjunction_β:
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              eax, 0
                                                                                        je    n254_disjunction_af
                                                                                        jmp   n254_disjunction_af
n254_disjunction_af:
                        add              dword ptr [rbp + 2416], 1
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              eax, 1
                                                                                        je    n257_lit_string_α
                                                                                        jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn335:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n254_disjunction_β
                                                                                        jmp   n259_lit_string_α
n255_call_builtin_icon_β:
                                                                                        jmp   n254_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:
                        mov              qword ptr [rbp + 2496], 6
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n260_random_α
n256_lit_integer_β:
                                                                                        jmp   n254_disjunction_af
.Lx336_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n254_disjunction_as
n257_lit_string_β:
                                                                                        jmp   n254_disjunction_af
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        .section         .rodata
.Lrkfn339:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n254_disjunction_af
                                                                                        jmp   n254_disjunction_as
n258_call_builtin_icon_β:
                                                                                        jmp   n254_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n261_disjunction_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "?10 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n260_random_α:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n254_disjunction_af
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n262_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n261_disjunction_α:
                        mov              qword ptr [rbp + 2176], 0
                        mov              qword ptr [rbp + 2184], 0
                        mov              dword ptr [rbp + 2192], 0
                                                                                        jmp   n264_lit_integer_α
n261_disjunction_as:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        jne   .Lx343_0
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n263_call_builtin_icon_α
.Lx343_0:
                        cmp              eax, 1
                                                                                        jne   .Lx343_1
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n263_call_builtin_icon_α
.Lx343_1:
                                                                                        jmp   n263_call_builtin_icon_α
n261_disjunction_β:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        je    n261_disjunction_af
                                                                                        jmp   n261_disjunction_af
n261_disjunction_af:
                        add              dword ptr [rbp + 2192], 1
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 1
                                                                                        je    n265_lit_string_α
                                                                                        jmp   n267_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n262_deref_α:
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n254_disjunction_af
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n258_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn346:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n261_disjunction_β
                                                                                        jmp   n267_lit_string_α
n263_call_builtin_icon_β:
                                                                                        jmp   n261_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_integer_α:
                        mov              qword ptr [rbp + 2272], 6
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n268_random_α
n264_lit_integer_β:
                                                                                        jmp   n261_disjunction_af
.Lx347_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n261_disjunction_as
n265_lit_string_β:
                                                                                        jmp   n261_disjunction_af
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn350:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n261_disjunction_af
                                                                                        jmp   n261_disjunction_as
n266_call_builtin_icon_β:
                                                                                        jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n269_disjunction_α
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "?10 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n268_random_α:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n261_disjunction_af
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n270_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n269_disjunction_α:
                        mov              qword ptr [rbp + 1952], 0
                        mov              qword ptr [rbp + 1960], 0
                        mov              dword ptr [rbp + 1968], 0
                                                                                        jmp   n272_lit_integer_α
n269_disjunction_as:
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 0
                                                                                        jne   .Lx354_0
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n271_call_builtin_icon_α
.Lx354_0:
                        cmp              eax, 1
                                                                                        jne   .Lx354_1
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n271_call_builtin_icon_α
.Lx354_1:
                                                                                        jmp   n271_call_builtin_icon_α
n269_disjunction_β:
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 0
                                                                                        je    n269_disjunction_af
                                                                                        jmp   n269_disjunction_af
n269_disjunction_af:
                        add              dword ptr [rbp + 1968], 1
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 1
                                                                                        je    n273_lit_string_α
                                                                                        jmp   n275_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_deref_α:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n261_disjunction_af
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n266_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn357:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn357]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n269_disjunction_β
                                                                                        jmp   n275_lit_string_α
n271_call_builtin_icon_β:
                                                                                        jmp   n269_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n276_random_α
n272_lit_integer_β:
                                                                                        jmp   n269_disjunction_af
.Lx358_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n269_disjunction_as
n273_lit_string_β:
                                                                                        jmp   n269_disjunction_af
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lrkfn361:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn361]
                        lea              rsi, [rbp + 2000]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n269_disjunction_af
                                                                                        jmp   n269_disjunction_as
n274_call_builtin_icon_β:
                                                                                        jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n277_disjunction_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "~&cset ----> "
#-----------------------------------------------------------------------------------------------------------------------
n276_random_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        call             rt_random_var@PLT
                        cmp              eax, 99
                                                                                        je    n269_disjunction_af
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n278_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n277_disjunction_α:
                        mov              qword ptr [rbp + 1728], 0
                        mov              qword ptr [rbp + 1736], 0
                        mov              dword ptr [rbp + 1744], 0
                                                                                        jmp   n280_keyword_icon_α
n277_disjunction_as:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 0
                                                                                        jne   .Lx365_0
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n279_call_builtin_icon_α
.Lx365_0:
                        cmp              eax, 1
                                                                                        jne   .Lx365_1
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n279_call_builtin_icon_α
.Lx365_1:
                                                                                        jmp   n279_call_builtin_icon_α
n277_disjunction_β:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 0
                                                                                        je    n277_disjunction_af
                                                                                        jmp   n277_disjunction_af
n277_disjunction_af:
                        add              dword ptr [rbp + 1744], 1
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 1
                                                                                        je    n281_lit_string_α
                                                                                        jmp   n283_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n278_deref_α:
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n269_disjunction_af
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n274_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn368:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n277_disjunction_β
                                                                                        jmp   n283_lit_string_α
n279_call_builtin_icon_β:
                                                                                        jmp   n277_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n280_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx369_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n277_disjunction_af
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n284_unop_α
n280_keyword_icon_β:
                                                                                        jmp   n277_disjunction_af
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n277_disjunction_as
n281_lit_string_β:
                                                                                        jmp   n277_disjunction_af
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn372:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn372]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n277_disjunction_af
                                                                                        jmp   n277_disjunction_as
n282_call_builtin_icon_β:
                                                                                        jmp   n277_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n285_disjunction_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "~&ascii ----> "
#-----------------------------------------------------------------------------------------------------------------------
n284_unop_α:
                        mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n282_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n285_disjunction_α:
                        mov              qword ptr [rbp + 1504], 0
                        mov              qword ptr [rbp + 1512], 0
                        mov              dword ptr [rbp + 1520], 0
                                                                                        jmp   n287_keyword_icon_α
n285_disjunction_as:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 0
                                                                                        jne   .Lx376_0
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n286_call_builtin_icon_α
.Lx376_0:
                        cmp              eax, 1
                                                                                        jne   .Lx376_1
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n286_call_builtin_icon_α
.Lx376_1:
                                                                                        jmp   n286_call_builtin_icon_α
n285_disjunction_β:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 0
                                                                                        je    n285_disjunction_af
                                                                                        jmp   n285_disjunction_af
n285_disjunction_af:
                        add              dword ptr [rbp + 1520], 1
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 1
                                                                                        je    n288_lit_string_α
                                                                                        jmp   n290_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn378:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n285_disjunction_β
                                                                                        jmp   n290_lit_string_α
n286_call_builtin_icon_β:
                                                                                        jmp   n285_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n287_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx379_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n285_disjunction_af
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n291_unop_α
n287_keyword_icon_β:
                                                                                        jmp   n285_disjunction_af
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n285_disjunction_as
n288_lit_string_β:
                                                                                        jmp   n285_disjunction_af
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn382:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rbp + 1552]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n285_disjunction_af
                                                                                        jmp   n285_disjunction_as
n289_call_builtin_icon_β:
                                                                                        jmp   n285_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n292_disjunction_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n291_unop_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n289_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n292_disjunction_α:
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0
                                                                                        jmp   n294_lit_charset_α
n292_disjunction_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        jne   .Lx386_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n293_call_builtin_icon_α
.Lx386_0:
                        cmp              eax, 1
                                                                                        jne   .Lx386_1
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n293_call_builtin_icon_α
.Lx386_1:
                                                                                        jmp   n293_call_builtin_icon_α
n292_disjunction_β:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        je    n292_disjunction_af
                                                                                        jmp   n292_disjunction_af
n292_disjunction_af:
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 1
                                                                                        je    n295_lit_string_α
                                                                                        jmp   n297_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn388:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn388]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n292_disjunction_β
                                                                                        jmp   n297_lit_string_α
n293_call_builtin_icon_β:
                                                                                        jmp   n292_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_charset_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              dword ptr [rbp + 1396], -1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n298_call_builtin_icon_α
n294_lit_charset_β:
                                                                                        jmp   n292_disjunction_af
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n292_disjunction_as
n295_lit_string_β:
                                                                                        jmp   n292_disjunction_af
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn392:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n292_disjunction_af
                                                                                        jmp   n292_disjunction_as
n296_call_builtin_icon_β:
                                                                                        jmp   n292_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n299_disjunction_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "=\"a\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn395:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n292_disjunction_af
                                                                                        jmp   n300_keyword_assign_α
n298_call_builtin_icon_β:
                                                                                        jmp   n292_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n299_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n302_lit_string_α
n299_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx397_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n301_call_builtin_icon_α
.Lx397_0:
                        cmp              eax, 1
                                                                                        jne   .Lx397_1
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n301_call_builtin_icon_α
.Lx397_1:
                                                                                        jmp   n301_call_builtin_icon_α
n299_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n299_disjunction_af
n299_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 1
                                                                                        je    n303_lit_string_α
                                                                                        jmp   n305_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n292_disjunction_af
                        mov              qword ptr [rbp + 1328], 1
                        mov              qword ptr [rbp + 1336], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n296_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn400:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn400]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n299_disjunction_β
                                                                                        jmp   n305_lit_string_α
n301_call_builtin_icon_β:
                                                                                        jmp   n299_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n306_call_α
n302_lit_string_β:
                                                                                        jmp   n299_disjunction_af
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n299_disjunction_as
n303_lit_string_β:
                                                                                        jmp   n299_disjunction_af
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn404:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn404]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n299_disjunction_as
n304_call_builtin_icon_β:
                                                                                        jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n307_disjunction_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "=\"b\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn152:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn152]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n308_call_α
n306_call_β:
                                                                                        jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n307_disjunction_α:
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0
                                                                                        jmp   n310_lit_string_α
n307_disjunction_as:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        jne   .Lx408_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n309_call_builtin_icon_α
.Lx408_0:
                        cmp              eax, 1
                                                                                        jne   .Lx408_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n309_call_builtin_icon_α
.Lx408_1:
                                                                                        jmp   n309_call_builtin_icon_α
n307_disjunction_β:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0
                                                                                        je    n307_disjunction_af
                                                                                        jmp   n307_disjunction_af
n307_disjunction_af:
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 1
                                                                                        je    n311_lit_string_α
                                                                                        jmp   n313_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              qword ptr [rbp + 1056], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn154:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn154]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n299_disjunction_af
                                                                                        jmp   n304_call_builtin_icon_α
n308_call_β:
                        mov              r14, qword ptr [rbp + 1056]
                                                                                        jmp   n299_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn411:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn411]
                        lea              rsi, [rbp + 576]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n307_disjunction_β
                                                                                        jmp   n313_lit_string_α
n309_call_builtin_icon_β:
                                                                                        jmp   n307_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n314_call_α
n310_lit_string_β:
                                                                                        jmp   n307_disjunction_af
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n307_disjunction_as
n311_lit_string_β:
                                                                                        jmp   n307_disjunction_af
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn415:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn415]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n307_disjunction_af
                                                                                        jmp   n307_disjunction_as
n312_call_builtin_icon_β:
                                                                                        jmp   n307_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n315_disjunction_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "=\"d\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn160:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn160]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n307_disjunction_af
                                                                                        jmp   n316_call_α
n314_call_β:
                                                                                        jmp   n307_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n315_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n318_lit_string_α
n315_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx419_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n317_call_builtin_icon_α
.Lx419_0:
                        cmp              eax, 1
                                                                                        jne   .Lx419_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n317_call_builtin_icon_α
.Lx419_1:
                                                                                        jmp   n317_call_builtin_icon_α
n315_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n315_disjunction_af
                                                                                        jmp   n315_disjunction_af
n315_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n319_lit_string_α
                                                                                        jmp   n321_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              qword ptr [rbp + 752], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn162:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn162]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n307_disjunction_af
                                                                                        jmp   n312_call_builtin_icon_α
n316_call_β:
                        mov              r14, qword ptr [rbp + 752]
                                                                                        jmp   n307_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n317_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn422:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n315_disjunction_β
                                                                                        jmp   n321_lit_string_α
n317_call_builtin_icon_β:
                                                                                        jmp   n315_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n322_call_α
n318_lit_string_β:
                                                                                        jmp   n315_disjunction_af
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n315_disjunction_as
n319_lit_string_β:
                                                                                        jmp   n315_disjunction_af
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn426:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn426]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n315_disjunction_af
                                                                                        jmp   n315_disjunction_as
n320_call_builtin_icon_β:
                                                                                        jmp   n315_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n323_disjunction_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn168:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn168]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n315_disjunction_af
                                                                                        jmp   n324_call_α
n322_call_β:
                                                                                        jmp   n315_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n323_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n326_lit_charset_α
n323_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx430_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n325_call_builtin_icon_α
.Lx430_0:
                        cmp              eax, 1
                                                                                        jne   .Lx430_1
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n325_call_builtin_icon_α
.Lx430_1:
                                                                                        jmp   n325_call_builtin_icon_α
n323_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n323_disjunction_af
                                                                                        jmp   n323_disjunction_af
n323_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n327_lit_string_α
                                                                                        jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              qword ptr [rbp + 448], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn170:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn170]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n315_disjunction_af
                                                                                        jmp   n320_call_builtin_icon_α
n324_call_β:
                        mov              r14, qword ptr [rbp + 448]
                                                                                        jmp   n315_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn433:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n323_disjunction_β
                                                                                        jmp   proc_p2_ω
n325_call_builtin_icon_β:
                                                                                        jmp   n323_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_charset_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], -1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n329_call_builtin_icon_α
n326_lit_charset_β:
                                                                                        jmp   n323_disjunction_af
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n323_disjunction_as
n327_lit_string_β:
                                                                                        jmp   n323_disjunction_af
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn437:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn437]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n323_disjunction_af
                                                                                        jmp   n323_disjunction_as
n328_call_builtin_icon_β:
                                                                                        jmp   n323_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn439:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn439]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n323_disjunction_af
                                                                                        jmp   n330_keyword_assign_α
n329_call_builtin_icon_β:
                                                                                        jmp   n323_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n330_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n323_disjunction_af
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rbp + 168], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n328_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_β:
                                                                                        jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2552]
                        lea              rsp, [rbp + 2576]
                        mov              rbp, [rbp + 2568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_ω:
                        mov              rax, [rbp + 2560]
                        lea              rsp, [rbp + 2576]
                        mov              rbp, [rbp + 2568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_dcα:
                        pop              r11
                        sub              rsp, 2592
                        mov              qword ptr [rsp + 2568], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2544], r11
                        lea              rax, [rip + .Lx441_2]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rax, [rip + .Lx441_3]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rdi, rbp
                        mov              esi, 2544
                        mov              edx, 2544
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p2_α_body
.Lx441_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2576
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx441_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2576
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p3_α
proc_p3_α:
                        .global          proc_p3_α
                        .global          proc_p3_β
                        .global          proc_p3_γ
                        .global          proc_p3_ω
                        sub              rsp, 3264
                        mov              [rsp + 3240], rcx
                        mov              [rsp + 3248], rdx
                        mov              [rsp + 3256], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3216
                        mov              edx, 3232
                        call             rt_jmp_frame_lexprep2@PLT
proc_p3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:
                        mov              qword ptr [rbp + 2992], 1
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n443_disjunction_α
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "while write(move(1)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n443_disjunction_α:
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                        mov              dword ptr [rbp + 3024], 0
                                                                                        jmp   n445_lit_integer_α
n443_disjunction_as:
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0
                                                                                        jne   .Lx548_0
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n444_call_builtin_icon_α
.Lx548_0:
                        cmp              eax, 1
                                                                                        jne   .Lx548_1
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n444_call_builtin_icon_α
.Lx548_1:
                                                                                        jmp   n444_call_builtin_icon_α
n443_disjunction_β:
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 0
                                                                                        je    n446_goto_β
                                                                                        jmp   n443_disjunction_af
n443_disjunction_af:
                        add              dword ptr [rbp + 3024], 1
                        mov              eax, dword ptr [rbp + 3024]
                        cmp              eax, 1
                                                                                        je    n447_lit_string_α
                                                                                        jmp   n449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn550:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn550]
                        lea              rsi, [rbp + 2944]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n443_disjunction_β
                                                                                        jmp   n449_lit_string_α
n444_call_builtin_icon_β:
                                                                                        jmp   n443_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_integer_α:
                        mov              qword ptr [rbp + 3184], 6
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n450_call_α
n445_lit_integer_β:
                                                                                        jmp   n443_disjunction_af
.Lx551_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n446_goto_α:
                                                                                        jmp   n445_lit_integer_α
n446_goto_β:
                                                                                        jmp   n445_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n443_disjunction_as
n447_lit_string_β:
                                                                                        jmp   n443_disjunction_af
.Lx553_0:
                        .quad            .Lx553_0_s
.Lx553_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n448_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn555:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn555]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n445_lit_integer_α
                                                                                        jmp   n443_disjunction_as
n448_call_builtin_icon_β:
                                                                                        jmp   n445_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n451_disjunction_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n450_call_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        mov              qword ptr [rbp + 3152], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn185:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn185]
                        lea              rsi, [rbp + 3136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n443_disjunction_af
                                                                                        jmp   n452_call_builtin_icon_α
n450_call_β:
                        mov              r14, qword ptr [rbp + 3152]
                                                                                        jmp   n443_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n451_disjunction_α:
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              dword ptr [rbp + 2768], 0
                                                                                        jmp   n454_lit_charset_α
n451_disjunction_as:
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 0
                                                                                        jne   .Lx559_0
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n453_call_builtin_icon_α
.Lx559_0:
                        cmp              eax, 1
                                                                                        jne   .Lx559_1
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n453_call_builtin_icon_α
.Lx559_1:
                                                                                        jmp   n453_call_builtin_icon_α
n451_disjunction_β:
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 0
                                                                                        je    n451_disjunction_af
                                                                                        jmp   n451_disjunction_af
n451_disjunction_af:
                        add              dword ptr [rbp + 2768], 1
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              eax, 1
                                                                                        je    n455_lit_string_α
                                                                                        jmp   n457_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3096], rax
                        .section         .rodata
.Lrkfn561:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rbp + 3088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n443_disjunction_af
                                                                                        jmp   n445_lit_integer_α
n452_call_builtin_icon_β:
                                                                                        jmp   n443_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn563:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn563]
                        lea              rsi, [rbp + 2688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n451_disjunction_β
                                                                                        jmp   n457_lit_string_α
n453_call_builtin_icon_β:
                                                                                        jmp   n451_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_charset_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              dword ptr [rbp + 2900], -1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n458_call_builtin_icon_α
n454_lit_charset_β:
                                                                                        jmp   n451_disjunction_af
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n451_disjunction_as
n455_lit_string_β:
                                                                                        jmp   n451_disjunction_af
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn567:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn567]
                        lea              rsi, [rbp + 2800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n451_disjunction_af
                                                                                        jmp   n451_disjunction_as
n456_call_builtin_icon_β:
                                                                                        jmp   n451_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n459_disjunction_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "every write(tab(1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn570:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn570]
                        lea              rsi, [rbp + 2864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n451_disjunction_af
                                                                                        jmp   n460_keyword_assign_α
n458_call_builtin_icon_β:
                                                                                        jmp   n451_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n459_disjunction_α:
                        mov              qword ptr [rbp + 2416], 0
                        mov              qword ptr [rbp + 2424], 0
                        mov              dword ptr [rbp + 2432], 0
                                                                                        jmp   n462_lit_integer_α
n459_disjunction_as:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 0
                                                                                        jne   .Lx572_0
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n461_call_builtin_icon_α
.Lx572_0:
                        cmp              eax, 1
                                                                                        jne   .Lx572_1
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n461_call_builtin_icon_α
.Lx572_1:
                                                                                        jmp   n461_call_builtin_icon_α
n459_disjunction_β:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 0
                                                                                        je    n459_disjunction_af
                                                                                        jmp   n459_disjunction_af
n459_disjunction_af:
                        add              dword ptr [rbp + 2432], 1
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 1
                                                                                        je    n463_lit_string_α
                                                                                        jmp   n465_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n460_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n451_disjunction_af
                        mov              qword ptr [rbp + 2832], 1
                        mov              qword ptr [rbp + 2840], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n456_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn575:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn575]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n459_disjunction_β
                                                                                        jmp   n465_lit_string_α
n461_call_builtin_icon_β:
                                                                                        jmp   n459_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:
                        mov              qword ptr [rbp + 2624], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n466_lit_integer_α
n462_lit_integer_β:
                                                                                        jmp   n459_disjunction_af
.Lx576_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n459_disjunction_as
n463_lit_string_β:
                                                                                        jmp   n459_disjunction_af
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn579:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n459_disjunction_af
                                                                                        jmp   n459_disjunction_as
n464_call_builtin_icon_β:
                                                                                        jmp   n459_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n467_disjunction_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "pos(0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 6
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n468_to_α
.Lx581_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n467_disjunction_α:
                        mov              qword ptr [rbp + 2176], 0
                        mov              qword ptr [rbp + 2184], 0
                        mov              dword ptr [rbp + 2192], 0
                                                                                        jmp   n470_lit_integer_α
n467_disjunction_as:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        jne   .Lx583_0
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n469_call_builtin_icon_α
.Lx583_0:
                        cmp              eax, 1
                                                                                        jne   .Lx583_1
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n469_call_builtin_icon_α
.Lx583_1:
                                                                                        jmp   n469_call_builtin_icon_α
n467_disjunction_β:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        je    n467_disjunction_af
                                                                                        jmp   n467_disjunction_af
n467_disjunction_af:
                        add              dword ptr [rbp + 2192], 1
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 1
                                                                                        je    n471_lit_string_α
                                                                                        jmp   n474_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_to_α:
                        mov              rdi, qword ptr [rbp + 2624]
                        mov              rsi, qword ptr [rbp + 2632]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2624], 6
                        mov              qword ptr [rbp + 2632], rax
                        mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2640], 6
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2608], rax
.Lx585_0:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              rcx, qword ptr [rbp + 2648]
                        cmp              rax, rcx
                                                                                        jg    n459_disjunction_af
                        mov              qword ptr [rbp + 2592], 6
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n473_call_α
n468_to_β:
                        inc              qword ptr [rbp + 2608]
                                                                                        jmp   .Lx585_0
#-----------------------------------------------------------------------------------------------------------------------
n469_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn587:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn587]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n467_disjunction_β
                                                                                        jmp   n474_lit_string_α
n469_call_builtin_icon_β:
                                                                                        jmp   n467_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n475_call_α
n470_lit_integer_β:
                                                                                        jmp   n467_disjunction_af
.Lx588_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n467_disjunction_as
n471_lit_string_β:
                                                                                        jmp   n467_disjunction_af
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn591:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn591]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n467_disjunction_af
                                                                                        jmp   n467_disjunction_as
n472_call_builtin_icon_β:
                                                                                        jmp   n467_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n473_call_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                        mov              qword ptr [rbp + 2560], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn208:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn208]
                        lea              rsi, [rbp + 2544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n468_to_β
                                                                                        jmp   n476_call_builtin_icon_α
n473_call_β:
                        mov              r14, qword ptr [rbp + 2560]
                                                                                        jmp   n468_to_β
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n477_disjunction_α
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "pos(15) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n475_call_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn210:          .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn210]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n467_disjunction_af
                                                                                        jmp   n472_call_builtin_icon_α
n475_call_β:
                                                                                        jmp   n467_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        .section         .rodata
.Lrkfn596:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn596]
                        lea              rsi, [rbp + 2496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n468_to_β
                                                                                        jmp   n468_to_β
n476_call_builtin_icon_β:
                                                                                        jmp   n468_to_β
#-----------------------------------------------------------------------------------------------------------------------
n477_disjunction_α:
                        mov              qword ptr [rbp + 1936], 0
                        mov              qword ptr [rbp + 1944], 0
                        mov              dword ptr [rbp + 1952], 0
                                                                                        jmp   n479_lit_integer_α
n477_disjunction_as:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 0
                                                                                        jne   .Lx598_0
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n478_call_builtin_icon_α
.Lx598_0:
                        cmp              eax, 1
                                                                                        jne   .Lx598_1
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n478_call_builtin_icon_α
.Lx598_1:
                                                                                        jmp   n478_call_builtin_icon_α
n477_disjunction_β:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 0
                                                                                        je    n477_disjunction_af
                                                                                        jmp   n477_disjunction_af
n477_disjunction_af:
                        add              dword ptr [rbp + 1952], 1
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 1
                                                                                        je    n480_lit_string_α
                                                                                        jmp   n482_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn600:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n477_disjunction_β
                                                                                        jmp   n482_lit_string_α
n478_call_builtin_icon_β:
                                                                                        jmp   n477_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n483_call_α
n479_lit_integer_β:
                                                                                        jmp   n477_disjunction_af
.Lx601_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n477_disjunction_as
n480_lit_string_β:
                                                                                        jmp   n477_disjunction_af
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n481_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn604:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n477_disjunction_af
                                                                                        jmp   n477_disjunction_as
n481_call_builtin_icon_β:
                                                                                        jmp   n477_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n484_disjunction_α
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n483_call_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn218:          .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn218]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n477_disjunction_af
                                                                                        jmp   n481_call_builtin_icon_α
n483_call_β:
                                                                                        jmp   n477_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n484_disjunction_α:
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              dword ptr [rbp + 1696], 0
                                                                                        jmp   n486_lit_charset_α
n484_disjunction_as:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 0
                                                                                        jne   .Lx608_0
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n485_call_builtin_icon_α
.Lx608_0:
                        cmp              eax, 1
                                                                                        jne   .Lx608_1
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n485_call_builtin_icon_α
.Lx608_1:
                                                                                        jmp   n485_call_builtin_icon_α
n484_disjunction_β:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 0
                                                                                        je    n484_disjunction_af
                                                                                        jmp   n484_disjunction_af
n484_disjunction_af:
                        add              dword ptr [rbp + 1696], 1
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 1
                                                                                        je    n487_lit_string_α
                                                                                        jmp   n489_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn610:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n484_disjunction_β
                                                                                        jmp   n489_lit_string_α
n485_call_builtin_icon_β:
                                                                                        jmp   n484_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_charset_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              dword ptr [rbp + 1828], -1
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n490_call_builtin_icon_α
n486_lit_charset_β:
                                                                                        jmp   n484_disjunction_af
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx612_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n484_disjunction_as
n487_lit_string_β:
                                                                                        jmp   n484_disjunction_af
.Lx612_0:
                        .quad            .Lx612_0_s
.Lx612_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn614:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn614]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n484_disjunction_af
                                                                                        jmp   n484_disjunction_as
n488_call_builtin_icon_β:
                                                                                        jmp   n484_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n491_disjunction_α
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          "pos(1) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn617:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n484_disjunction_af
                                                                                        jmp   n492_keyword_assign_α
n490_call_builtin_icon_β:
                                                                                        jmp   n484_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n491_disjunction_α:
                        mov              qword ptr [rbp + 1440], 0
                        mov              qword ptr [rbp + 1448], 0
                        mov              dword ptr [rbp + 1456], 0
                                                                                        jmp   n494_lit_integer_α
n491_disjunction_as:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        jne   .Lx619_0
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n493_call_builtin_icon_α
.Lx619_0:
                        cmp              eax, 1
                                                                                        jne   .Lx619_1
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n493_call_builtin_icon_α
.Lx619_1:
                                                                                        jmp   n493_call_builtin_icon_α
n491_disjunction_β:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        je    n491_disjunction_af
                                                                                        jmp   n491_disjunction_af
n491_disjunction_af:
                        add              dword ptr [rbp + 1456], 1
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 1
                                                                                        je    n495_lit_string_α
                                                                                        jmp   n497_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n492_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        call             rt_keyword_subject_set@PLT
                        test             rax, rax
                                                                                        je    n484_disjunction_af
                        mov              qword ptr [rbp + 1760], 1
                        mov              qword ptr [rbp + 1768], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n488_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn622:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn622]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n491_disjunction_β
                                                                                        jmp   n497_lit_string_α
n493_call_builtin_icon_β:
                                                                                        jmp   n491_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n498_call_α
n494_lit_integer_β:
                                                                                        jmp   n491_disjunction_af
.Lx623_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n491_disjunction_as
n495_lit_string_β:
                                                                                        jmp   n491_disjunction_af
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n496_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn626:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn626]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n491_disjunction_af
                                                                                        jmp   n491_disjunction_as
n496_call_builtin_icon_β:
                                                                                        jmp   n491_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n499_disjunction_α
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
                        .string          "every write(\"abcdef\" ? tab(1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n498_call_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn233:          .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn233]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n491_disjunction_af
                                                                                        jmp   n496_call_builtin_icon_α
n498_call_β:
                                                                                        jmp   n491_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n499_disjunction_α:
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              dword ptr [rbp + 1056], 0
                                                                                        jmp   n501_lit_string_α
n499_disjunction_as:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        jne   .Lx630_0
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n500_call_builtin_icon_α
.Lx630_0:
                        cmp              eax, 1
                                                                                        jne   .Lx630_1
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n500_call_builtin_icon_α
.Lx630_1:
                                                                                        jmp   n500_call_builtin_icon_α
n499_disjunction_β:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        je    n499_disjunction_af
                                                                                        jmp   n499_disjunction_af
n499_disjunction_af:
                        add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 1
                                                                                        je    n502_lit_string_α
                                                                                        jmp   n504_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n500_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn632:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rbp + 976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n499_disjunction_β
                                                                                        jmp   n504_lit_string_α
n500_call_builtin_icon_β:
                                                                                        jmp   n499_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n505_scan_enter_α
n501_lit_string_β:
                                                                                        jmp   n499_disjunction_af
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx634_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n499_disjunction_as
n502_lit_string_β:
                                                                                        jmp   n499_disjunction_af
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n503_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn636:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn636]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n499_disjunction_af
                                                                                        jmp   n499_disjunction_as
n503_call_builtin_icon_β:
                                                                                        jmp   n499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n506_disjunction_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "every write(\"abcde\" ? while move(2) ? move(1)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n505_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n507_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n506_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n509_lit_string_α
n506_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx641_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n508_call_builtin_icon_α
.Lx641_0:
                        cmp              eax, 1
                                                                                        jne   .Lx641_1
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n508_call_builtin_icon_α
.Lx641_1:
                                                                                        jmp   n508_call_builtin_icon_α
n506_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        je    n506_disjunction_af
                                                                                        jmp   n506_disjunction_af
n506_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 1
                                                                                        je    n510_lit_string_α
                                                                                        jmp   n513_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n512_lit_integer_α
.Lx642_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n508_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn644:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n506_disjunction_β
                                                                                        jmp   n513_lit_string_α
n508_call_builtin_icon_β:
                                                                                        jmp   n506_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n509_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n514_scan_enter_α
n509_lit_string_β:
                                                                                        jmp   n506_disjunction_af
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n510_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n506_disjunction_as
n510_lit_string_β:
                                                                                        jmp   n506_disjunction_af
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n511_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn648:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn648]
                        lea              rsi, [rbp + 672]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n506_disjunction_af
                                                                                        jmp   n506_disjunction_as
n511_call_builtin_icon_β:
                                                                                        jmp   n506_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n515_to_α
.Lx649_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n516_disjunction_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "s := \"abcdef\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n514_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n517_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n515_to_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1296], 6
                        mov              qword ptr [rbp + 1304], rax
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1312], 6
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1280], rax
.Lx654_0:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1320]
                        cmp              rax, rcx
                                                                                        jg    n545_scan_α
                        mov              qword ptr [rbp + 1264], 6
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n518_scan_tab_α
n515_to_β:
                        inc              qword ptr [rbp + 1280]
                                                                                        jmp   .Lx654_0
#-----------------------------------------------------------------------------------------------------------------------
n516_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n520_lit_string_α
n516_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx656_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n519_call_builtin_icon_α
.Lx656_0:
                        cmp              eax, 1
                                                                                        jne   .Lx656_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n519_call_builtin_icon_α
.Lx656_1:
                                                                                        jmp   n519_call_builtin_icon_α
n516_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        je    n516_disjunction_af
                                                                                        jmp   n516_disjunction_af
n516_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1
                                                                                        je    n521_lit_string_α
                                                                                        jmp   n525_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n523_scan_move_α
.Lx657_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n518_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1272]
                        cmp              rax, 1
                                                                                        jge   .Lx659_0
                        add              rax, r15
                        add              rax, 1
.Lx659_0:
                        cmp              rax, 1
                                                                                        jge   .Lx659_239
                        add              rsp, 16
                                                                                        jmp   n515_to_β
.Lx659_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx659_240
                        add              rsp, 16
                                                                                        jmp   n515_to_β
.Lx659_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n524_scan_α
n518_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n515_to_β
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn661:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn661]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n516_disjunction_β
                                                                                        jmp   n525_lit_string_α
n519_call_builtin_icon_β:
                                                                                        jmp   n516_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n526_assign_α
n520_lit_string_β:
                                                                                        jmp   n516_disjunction_af
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n516_disjunction_as
n521_lit_string_β:
                                                                                        jmp   n516_disjunction_af
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n522_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn665:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn665]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n516_disjunction_af
                                                                                        jmp   n516_disjunction_as
n522_call_builtin_icon_β:
                                                                                        jmp   n516_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n523_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx667_239
                        add              rsp, 16
                                                                                        jmp   n528_scan_α
.Lx667_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx667_240
                        add              rsp, 16
                                                                                        jmp   n528_scan_α
.Lx667_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n527_scan_enter_α
n523_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n528_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n524_scan_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1168]
                        mov              r14, qword ptr [rbp + 1176]
                        mov              r15, qword ptr [rbp + 1184]
                                                                                        jmp   n529_call_builtin_icon_α
n524_scan_β:
                                                                                        jmp   n499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n530_disjunction_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "s ?:= move(3) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n526_assign_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n522_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n527_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n531_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n528_scan_α:
                        lea              rdi, [rbp + 704]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 704]
                        mov              r14, qword ptr [rbp + 712]
                        mov              r15, qword ptr [rbp + 720]
                                                                                        jmp   n506_disjunction_af
n528_scan_β:
                                                                                        jmp   n506_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn677:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn677]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n499_disjunction_af
                                                                                        jmp   n499_disjunction_as
n529_call_builtin_icon_β:
                                                                                        jmp   n499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n530_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n533_var_α
n530_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx679_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n532_call_builtin_icon_α
.Lx679_0:
                        cmp              eax, 1
                                                                                        jne   .Lx679_1
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n532_call_builtin_icon_α
.Lx679_1:
                                                                                        jmp   n532_call_builtin_icon_α
n530_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n530_disjunction_af
                                                                                        jmp   n530_disjunction_af
n530_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n534_lit_string_α
                                                                                        jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n536_scan_move_α
.Lx680_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n532_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn682:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn682]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n530_disjunction_β
                                                                                        jmp   proc_p3_ω
n532_call_builtin_icon_β:
                                                                                        jmp   n530_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n533_var_α:
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n537_scan_enter_α
n533_var_β:
                                                                                        jmp   n530_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n530_disjunction_as
n534_lit_string_β:
                                                                                        jmp   n530_disjunction_af
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn687:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn687]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n530_disjunction_af
                                                                                        jmp   n530_disjunction_as
n535_call_builtin_icon_β:
                                                                                        jmp   n530_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n536_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx689_239
                        add              rsp, 16
                                                                                        jmp   n539_scan_α
.Lx689_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx689_240
                        add              rsp, 16
                                                                                        jmp   n539_scan_α
.Lx689_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n538_scan_α
n536_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n539_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n537_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n540_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n538_scan_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 768]
                        mov              r14, qword ptr [rbp + 776]
                        mov              r15, qword ptr [rbp + 784]
                                                                                        jmp   n517_lit_integer_α
n538_scan_β:
                                                                                        jmp   n528_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n539_scan_α:
                        lea              rdi, [rbp + 768]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 768]
                        mov              r14, qword ptr [rbp + 776]
                        mov              r15, qword ptr [rbp + 784]
                                                                                        jmp   n528_scan_α
n539_scan_β:
                                                                                        jmp   n528_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n541_scan_move_α
.Lx696_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n541_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 3
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx698_239
                        add              rsp, 16
                                                                                        jmp   n543_scan_α
.Lx698_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx698_240
                        add              rsp, 16
                                                                                        jmp   n543_scan_α
.Lx698_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n542_scan_α
n541_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n543_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n542_scan_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 192]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 192]
                        mov              r14, qword ptr [rbp + 200]
                        mov              r15, qword ptr [rbp + 208]
                                                                                        jmp   n544_assign_α
n542_scan_β:
                                                                                        jmp   n530_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n543_scan_α:
                        lea              rdi, [rbp + 192]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 192]
                        mov              r14, qword ptr [rbp + 200]
                        mov              r15, qword ptr [rbp + 208]
                                                                                        jmp   n530_disjunction_af
n543_scan_β:
                                                                                        jmp   n530_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n544_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n535_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n545_scan_α:
                        lea              rdi, [rbp + 1168]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1168]
                        mov              r14, qword ptr [rbp + 1176]
                        mov              r15, qword ptr [rbp + 1184]
                                                                                        jmp   n499_disjunction_af
n545_scan_β:
                                                                                        jmp   n499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_β:
                                                                                        jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3240]
                        lea              rsp, [rbp + 3264]
                        mov              rbp, [rbp + 3256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_ω:
                        mov              rax, [rbp + 3248]
                        lea              rsp, [rbp + 3264]
                        mov              rbp, [rbp + 3256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_dcα:
                        pop              r11
                        sub              rsp, 3280
                        mov              qword ptr [rsp + 3256], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3232], r11
                        lea              rax, [rip + .Lx706_2]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rax, [rip + .Lx706_3]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rdi, rbp
                        mov              esi, 3216
                        mov              edx, 3232
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p3_α_body
.Lx706_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3264
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx706_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3264
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p4_α
proc_p4_α:
                        .global          proc_p4_α
                        .global          proc_p4_β
                        .global          proc_p4_γ
                        .global          proc_p4_ω
                        sub              rsp, 2288
                        mov              [rsp + 2264], rcx
                        mov              [rsp + 2272], rdx
                        mov              [rsp + 2280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2240
                        mov              edx, 2256
                        call             rt_jmp_frame_lexprep2@PLT
proc_p4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n708_disjunction_α
.Lx782_0:
                        .quad            .Lx782_0_s
.Lx782_0_s:
                        .string          "s := \"abcdef\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n708_disjunction_α:
                        mov              qword ptr [rbp + 2112], 0
                        mov              qword ptr [rbp + 2120], 0
                        mov              dword ptr [rbp + 2128], 0
                                                                                        jmp   n710_lit_string_α
n708_disjunction_as:
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 0
                                                                                        jne   .Lx784_0
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n709_call_builtin_icon_α
.Lx784_0:
                        cmp              eax, 1
                                                                                        jne   .Lx784_1
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n709_call_builtin_icon_α
.Lx784_1:
                                                                                        jmp   n709_call_builtin_icon_α
n708_disjunction_β:
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 0
                                                                                        je    n708_disjunction_af
                                                                                        jmp   n708_disjunction_af
n708_disjunction_af:
                        add              dword ptr [rbp + 2128], 1
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 1
                                                                                        je    n711_lit_string_α
                                                                                        jmp   n713_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n709_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn786:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn786]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n708_disjunction_β
                                                                                        jmp   n713_lit_string_α
n709_call_builtin_icon_β:
                                                                                        jmp   n708_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n714_assign_α
n710_lit_string_β:
                                                                                        jmp   n708_disjunction_af
.Lx787_0:
                        .quad            .Lx787_0_s
.Lx787_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n708_disjunction_as
n711_lit_string_β:
                                                                                        jmp   n708_disjunction_af
.Lx788_0:
                        .quad            .Lx788_0_s
.Lx788_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n712_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn790:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn790]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n708_disjunction_af
                                                                                        jmp   n708_disjunction_as
n712_call_builtin_icon_β:
                                                                                        jmp   n708_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n715_disjunction_α
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "every write(s ?:= upto(&lcase)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n714_assign_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n712_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n715_disjunction_α:
                        mov              qword ptr [rbp + 1744], 0
                        mov              qword ptr [rbp + 1752], 0
                        mov              dword ptr [rbp + 1760], 0
                                                                                        jmp   n717_var_α
n715_disjunction_as:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 0
                                                                                        jne   .Lx794_0
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n716_call_builtin_icon_α
.Lx794_0:
                        cmp              eax, 1
                                                                                        jne   .Lx794_1
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n716_call_builtin_icon_α
.Lx794_1:
                                                                                        jmp   n716_call_builtin_icon_α
n715_disjunction_β:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 0
                                                                                        je    n715_disjunction_af
                                                                                        jmp   n715_disjunction_af
n715_disjunction_af:
                        add              dword ptr [rbp + 1760], 1
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 1
                                                                                        je    n718_lit_string_α
                                                                                        jmp   n720_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n716_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lrkfn796:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn796]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n715_disjunction_β
                                                                                        jmp   n720_lit_string_α
n716_call_builtin_icon_β:
                                                                                        jmp   n715_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n717_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n721_scan_enter_α
n717_var_β:
                                                                                        jmp   n715_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n715_disjunction_as
n718_lit_string_β:
                                                                                        jmp   n715_disjunction_af
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n719_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn801:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn801]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n715_disjunction_af
                                                                                        jmp   n715_disjunction_as
n719_call_builtin_icon_β:
                                                                                        jmp   n715_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n722_disjunction_α
.Lx802_0:
                        .quad            .Lx802_0_s
.Lx802_0_s:
                        .string          "s := \"this is the time to work it all out\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n721_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n723_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n722_disjunction_α:
                        mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              dword ptr [rbp + 1552], 0
                                                                                        jmp   n725_lit_string_α
n722_disjunction_as:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0
                                                                                        jne   .Lx806_0
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n724_call_builtin_icon_α
.Lx806_0:
                        cmp              eax, 1
                                                                                        jne   .Lx806_1
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n724_call_builtin_icon_α
.Lx806_1:
                                                                                        jmp   n724_call_builtin_icon_α
n722_disjunction_β:
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0
                                                                                        je    n722_disjunction_af
                                                                                        jmp   n722_disjunction_af
n722_disjunction_af:
                        add              dword ptr [rbp + 1552], 1
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 1
                                                                                        je    n726_lit_string_α
                                                                                        jmp   n729_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_charset_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              dword ptr [rbp + 1988], -1
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n728_scan_upto_α
.Lx807_0:
                        .quad            .Lx807_0_s
.Lx807_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n724_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn809:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n722_disjunction_β
                                                                                        jmp   n729_lit_string_α
n724_call_builtin_icon_β:
                                                                                        jmp   n722_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n730_assign_α
n725_lit_string_β:
                                                                                        jmp   n722_disjunction_af
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          "this is the time to work it all out"
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n722_disjunction_as
n726_lit_string_β:
                                                                                        jmp   n722_disjunction_af
.Lx811_0:
                        .quad            .Lx811_0_s
.Lx811_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn813:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn813]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n722_disjunction_af
                                                                                        jmp   n722_disjunction_as
n727_call_builtin_icon_β:
                                                                                        jmp   n722_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n728_scan_upto_α:
                        mov              qword ptr [rbp + 1968], r14
.Lx815_0:
                        mov              rax, qword ptr [rbp + 1968]
                        cmp              rax, r15
                                                                                        jge   n779_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx815_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx815_1
                        mov              qword ptr [rbp + 1952], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n731_scan_α
.Lx815_1:
                        inc              qword ptr [rbp + 1968]
                                                                                        jmp   .Lx815_0
n728_scan_upto_β:
                        inc              qword ptr [rbp + 1968]
                                                                                        jmp   .Lx815_0
.Lx815_2:
                        .quad            .Lx815_2_s
.Lx815_2_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n732_disjunction_α
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "every write(s ? tab(find(\" \"))) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n730_assign_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n727_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n731_scan_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1888]
                        mov              r14, qword ptr [rbp + 1896]
                        mov              r15, qword ptr [rbp + 1904]
                                                                                        jmp   n733_assign_α
n731_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n728_scan_upto_β
                                                                                        jmp   n715_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n732_disjunction_α:
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              dword ptr [rbp + 1168], 0
                                                                                        jmp   n735_var_α
n732_disjunction_as:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        jne   .Lx821_0
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n734_call_builtin_icon_α
.Lx821_0:
                        cmp              eax, 1
                                                                                        jne   .Lx821_1
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n734_call_builtin_icon_α
.Lx821_1:
                                                                                        jmp   n734_call_builtin_icon_α
n732_disjunction_β:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        je    n732_disjunction_af
                                                                                        jmp   n732_disjunction_af
n732_disjunction_af:
                        add              dword ptr [rbp + 1168], 1
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 1
                                                                                        je    n736_lit_string_α
                                                                                        jmp   n739_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n733_assign_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n738_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n734_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn824:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn824]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n732_disjunction_β
                                                                                        jmp   n739_lit_string_α
n734_call_builtin_icon_β:
                                                                                        jmp   n732_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n735_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n740_scan_enter_α
n735_var_β:
                                                                                        jmp   n732_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n736_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n732_disjunction_as
n736_lit_string_β:
                                                                                        jmp   n732_disjunction_af
.Lx827_0:
                        .quad            .Lx827_0_s
.Lx827_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n737_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn829:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn829]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n732_disjunction_af
                                                                                        jmp   n732_disjunction_as
n737_call_builtin_icon_β:
                                                                                        jmp   n732_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n738_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn831:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn831]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n731_scan_β
                                                                                        jmp   n731_scan_β
n738_call_builtin_icon_β:
                                                                                        jmp   n731_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n741_disjunction_α
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "s := \"xxxxxx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n740_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n742_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n741_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n744_lit_string_α
n741_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx836_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n743_call_builtin_icon_α
.Lx836_0:
                        cmp              eax, 1
                                                                                        jne   .Lx836_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n743_call_builtin_icon_α
.Lx836_1:
                                                                                        jmp   n743_call_builtin_icon_α
n741_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        je    n741_disjunction_af
                                                                                        jmp   n741_disjunction_af
n741_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 1
                                                                                        je    n745_lit_string_α
                                                                                        jmp   n748_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n742_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n747_scan_find_α
.Lx837_0:
                        .quad            .Lx837_0_s
.Lx837_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n743_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn839:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn839]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n741_disjunction_β
                                                                                        jmp   n748_lit_string_α
n743_call_builtin_icon_β:
                                                                                        jmp   n741_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n749_assign_α
n744_lit_string_β:
                                                                                        jmp   n741_disjunction_af
.Lx840_0:
                        .quad            .Lx840_0_s
.Lx840_0_s:
                        .string          "xxxxxx"
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx841_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n741_disjunction_as
n745_lit_string_β:
                                                                                        jmp   n741_disjunction_af
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n746_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn843:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn843]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n741_disjunction_af
                                                                                        jmp   n741_disjunction_as
n746_call_builtin_icon_β:
                                                                                        jmp   n741_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n747_scan_find_α:
                        mov              qword ptr [rbp + 1392], r14
.Lx845_0:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rcx, r15
                        sub              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n780_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 32
                                                                                        jne   .Lx845_1
                        mov              qword ptr [rbp + 1376], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n750_scan_tab_α
.Lx845_1:
                        inc              qword ptr [rbp + 1392]
                                                                                        jmp   .Lx845_0
n747_scan_find_β:
                        inc              qword ptr [rbp + 1392]
                                                                                        jmp   .Lx845_0
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n751_disjunction_α
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          "every s ? write(=(\"a\" | \"x\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n749_assign_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n746_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n750_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1384]
                        cmp              rax, 1
                                                                                        jge   .Lx849_0
                        add              rax, r15
                        add              rax, 1
.Lx849_0:
                        cmp              rax, 1
                                                                                        jge   .Lx849_239
                        add              rsp, 16
                                                                                        jmp   n747_scan_find_β
.Lx849_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx849_240
                        add              rsp, 16
                                                                                        jmp   n747_scan_find_β
.Lx849_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n752_scan_α
n750_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n747_scan_find_β
#-----------------------------------------------------------------------------------------------------------------------
n751_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n754_var_α
n751_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx851_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n753_call_builtin_icon_α
.Lx851_0:
                        cmp              eax, 1
                                                                                        jne   .Lx851_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n753_call_builtin_icon_α
.Lx851_1:
                                                                                        jmp   n753_call_builtin_icon_α
n751_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n751_disjunction_af
                                                                                        jmp   n751_disjunction_af
n751_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n755_lit_string_α
                                                                                        jmp   n758_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n752_scan_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1280]
                        mov              r14, qword ptr [rbp + 1288]
                        mov              r15, qword ptr [rbp + 1296]
                                                                                        jmp   n757_call_builtin_icon_α
n752_scan_β:
                                                                                        jmp   n732_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n753_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn855:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn855]
                        lea              rsi, [rbp + 448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n751_disjunction_β
                                                                                        jmp   n758_lit_string_α
n753_call_builtin_icon_β:
                                                                                        jmp   n751_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n754_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n759_scan_enter_α
n754_var_β:
                                                                                        jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n751_disjunction_as
n755_lit_string_β:
                                                                                        jmp   n751_disjunction_af
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n756_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn860:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn860]
                        lea              rsi, [rbp + 560]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n751_disjunction_af
                                                                                        jmp   n751_disjunction_as
n756_call_builtin_icon_β:
                                                                                        jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n757_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn862:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn862]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n732_disjunction_af
                                                                                        jmp   n732_disjunction_as
n757_call_builtin_icon_β:
                                                                                        jmp   n732_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n760_disjunction_α
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "\"abcdef\" ? (tab(0) & (while write(move(-1)))) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n759_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n761_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n760_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n763_lit_string_α
n760_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx867_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n762_call_builtin_icon_α
.Lx867_0:
                        cmp              eax, 1
                                                                                        jne   .Lx867_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n762_call_builtin_icon_α
.Lx867_1:
                                                                                        jmp   n762_call_builtin_icon_α
n760_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n760_disjunction_af
                                                                                        jmp   n760_disjunction_af
n760_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n764_lit_string_α
                                                                                        jmp   proc_p4_ω
#-----------------------------------------------------------------------------------------------------------------------
n761_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n767_lit_string_α
n761_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx869_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n766_scan_match_α
.Lx869_0:
                        cmp              eax, 1
                                                                                        jne   .Lx869_1
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n766_scan_match_α
.Lx869_1:
                                                                                        jmp   n766_scan_match_α
n761_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n761_disjunction_af
                                                                                        jmp   n761_disjunction_af
n761_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n768_lit_string_α
                                                                                        jmp   n781_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n762_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn871:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn871]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n760_disjunction_β
                                                                                        jmp   proc_p4_ω
n762_call_builtin_icon_β:
                                                                                        jmp   n760_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n769_scan_enter_α
n763_lit_string_β:
                                                                                        jmp   n760_disjunction_af
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n760_disjunction_as
n764_lit_string_β:
                                                                                        jmp   n760_disjunction_af
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n765_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn875:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn875]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n760_disjunction_af
                                                                                        jmp   n760_disjunction_as
n765_call_builtin_icon_β:
                                                                                        jmp   n760_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n766_scan_match_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        push             r10
                        push             r10
                        call             rt_scan_needle@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, rdx
                                                                                        jge   .Lx877_239
                        add              rsp, 16
                                                                                        jmp   n761_disjunction_β
.Lx877_239:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, qword ptr [rsp + 8]
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx877_240
                        add              rsp, 16
                                                                                        jmp   n761_disjunction_β
.Lx877_240:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, r14
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rax, 1
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n770_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n761_disjunction_as
n767_lit_string_β:
                                                                                        jmp   n761_disjunction_af
.Lx878_0:
                        .quad            .Lx878_0_s
.Lx878_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n761_disjunction_as
n768_lit_string_β:
                                                                                        jmp   n761_disjunction_af
.Lx879_0:
                        .quad            .Lx879_0_s
.Lx879_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n769_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n771_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n770_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 744]
                        cmp              rax, 1
                                                                                        jge   .Lx883_0
                        add              rax, r15
                        add              rax, 1
.Lx883_0:
                        cmp              rax, 1
                                                                                        jge   .Lx883_239
                        add              rsp, 16
                                                                                        jmp   n761_disjunction_β
.Lx883_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx883_240
                        add              rsp, 16
                                                                                        jmp   n761_disjunction_β
.Lx883_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n772_call_builtin_icon_α
n770_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n761_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_integer_α:
                        mov              qword ptr [rbp + 384], 6
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n773_scan_tab_α
.Lx884_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n772_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn886:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn886]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n761_disjunction_β
                                                                                        jmp   n774_scan_α
n772_call_builtin_icon_β:
                                                                                        jmp   n761_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n773_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx888_0
                        add              rax, r15
                        add              rax, 1
.Lx888_0:
                        cmp              rax, 1
                                                                                        jge   .Lx888_239
                        add              rsp, 16
                                                                                        jmp   n776_scan_α
.Lx888_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx888_240
                        add              rsp, 16
                                                                                        jmp   n776_scan_α
.Lx888_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n775_lit_integer_α
n773_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n776_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n774_scan_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 592]
                        mov              r14, qword ptr [rbp + 600]
                        mov              r15, qword ptr [rbp + 608]
                                                                                        jmp   n751_disjunction_as
n774_scan_β:
                                                                                        jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n777_scan_move_α
.Lx891_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n776_scan_α:
                        lea              rdi, [rbp + 176]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 176]
                        mov              r14, qword ptr [rbp + 184]
                        mov              r15, qword ptr [rbp + 192]
                                                                                        jmp   n760_disjunction_af
n776_scan_β:
                                                                                        jmp   n760_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n777_scan_move_α:
                        sub              rsp, 16
                        mov              rax, -1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx895_239
                        add              rsp, 16
                                                                                        jmp   n773_scan_tab_β
.Lx895_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx895_240
                        add              rsp, 16
                                                                                        jmp   n773_scan_tab_β
.Lx895_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n778_call_builtin_icon_α
n777_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n773_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n778_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn897:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n773_scan_tab_β
                                                                                        jmp   n775_lit_integer_α
n778_call_builtin_icon_β:
                                                                                        jmp   n773_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n779_scan_α:
                        lea              rdi, [rbp + 1888]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1888]
                        mov              r14, qword ptr [rbp + 1896]
                        mov              r15, qword ptr [rbp + 1904]
                                                                                        jmp   n715_disjunction_af
n779_scan_β:
                                                                                        jmp   n715_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n780_scan_α:
                        lea              rdi, [rbp + 1280]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1280]
                        mov              r14, qword ptr [rbp + 1288]
                        mov              r15, qword ptr [rbp + 1296]
                                                                                        jmp   n732_disjunction_af
n780_scan_β:
                                                                                        jmp   n732_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n781_scan_α:
                        lea              rdi, [rbp + 592]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 592]
                        mov              r14, qword ptr [rbp + 600]
                        mov              r15, qword ptr [rbp + 608]
                                                                                        jmp   n751_disjunction_af
n781_scan_β:
                                                                                        jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_β:
                                                                                        jmp   proc_p4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2264]
                        lea              rsp, [rbp + 2288]
                        mov              rbp, [rbp + 2280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_ω:
                        mov              rax, [rbp + 2272]
                        lea              rsp, [rbp + 2288]
                        mov              rbp, [rbp + 2280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_dcα:
                        pop              r11
                        sub              rsp, 2304
                        mov              qword ptr [rsp + 2280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2256], r11
                        lea              rax, [rip + .Lx904_2]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rax, [rip + .Lx904_3]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rdi, rbp
                        mov              esi, 2240
                        mov              edx, 2256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p4_α_body
.Lx904_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx904_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2288
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
.Lstartup_pname0:       .string          "p1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2960
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "p3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3232
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "p4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_p4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_p4_dcα]
                        call             rt_proc_set_dcfn@PLT
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
                        sub              rsp, 136
                        mov              rdi, rsp
                        mov              ecx, 136
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n905_call_proc_staged_α:
                        call             proc_p1_dcα
                                                                                        jmp   .Lx910_2
.Lx910_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n906_call_proc_staged_α
                                                                                        jmp   n906_call_proc_staged_α
n905_call_proc_staged_β:
                                                                                        jmp   n906_call_proc_staged_α
.Lx910_0:
                        .quad            .Lx910_0_s
.Lx910_0_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n906_call_proc_staged_α:
                        call             proc_p2_dcα
                                                                                        jmp   .Lx912_2
.Lx912_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n907_call_proc_staged_α
                                                                                        jmp   n907_call_proc_staged_α
n906_call_proc_staged_β:
                                                                                        jmp   n907_call_proc_staged_α
.Lx912_0:
                        .quad            .Lx912_0_s
.Lx912_0_s:
                        .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n907_call_proc_staged_α:
                        call             proc_p3_dcα
                                                                                        jmp   .Lx914_2
.Lx914_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n908_call_proc_staged_α
                                                                                        jmp   n908_call_proc_staged_α
n907_call_proc_staged_β:
                                                                                        jmp   n908_call_proc_staged_α
.Lx914_0:
                        .quad            .Lx914_0_s
.Lx914_0_s:
                        .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
n908_call_proc_staged_α:
                        call             proc_p4_dcα
                                                                                        jmp   .Lx916_2
.Lx916_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n908_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx916_0:
                        .quad            .Lx916_0_s
.Lx916_0_s:
                        .string          "p4"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 136
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 136
                        ret
                        .section         .note.GNU-stack,"",@progbits
