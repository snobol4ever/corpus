                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_dofile_α
proc_dofile_α:
                        .global          proc_dofile_α
                        .global          proc_dofile_β
                        .global          proc_dofile_γ
                        .global          proc_dofile_ω
                        sub              rsp, 3120
                        mov              [rsp + 3096], rcx
                        mov              [rsp + 3104], rdx
                        mov              [rsp + 3112], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2960
                        mov              edx, 3088
                        call             rt_jmp_frame_lexprep2@PLT
proc_dofile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_make_list_α:
                        lea              rdi, [rbp + 2960]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n2_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n2_make_list_α:
                        lea              rdi, [rbp + 2944]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn147:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_α
                                                                                        jmp   n7_assign_α
n5_call_builtin_icon_β:
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n8_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              rdx, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_unop_α:
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n14_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn157:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n9_var_α
                                                                                        jmp   n9_var_α
n11_call_builtin_icon_β:
                                                                                        jmp   n9_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 6
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n15_call_builtin_icon_α
.Lx00001_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 1840], 6
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n16_assign_α
.Lx00002_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2912]
                        mov              rsi, qword ptr [rbp + 2920]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lrkfn163:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n13_lit_integer_α
                                                                                        jmp   n18_call_builtin_icon_α
n15_call_builtin_icon_β:
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              dword ptr [rbp + 2900], -1
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n20_scan_many_α
.Lx00003_0:
                        .quad            .Lx00003_0_s
.Lx00003_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn167:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n13_lit_integer_α
                                                                                        jmp   n13_lit_integer_α
n18_call_builtin_icon_β:
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_many_α:
                        mov              eax, r14d
.Lx00004_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00004_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00004_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00004_1
                        add              eax, 1
                                                                                        jmp   .Lx00004_0
.Lx00004_1:
                        cmp              eax, r14d
                                                                                        je    n27_lit_charset_α
                        mov              qword ptr [rbp + 2880], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 2888], rcx
                                                                                        jmp   n23_scan_tab_α
n20_scan_many_β:
                                                                                        jmp   n27_lit_charset_α
.Lx00004_2:
                        .quad            .Lx00004_2_s
.Lx00004_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n24_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2888]
                        cmp              rax, 1
                                                                                        jge   .Lx00005_0
                        add              rax, r15
                        add              rax, 1
.Lx00005_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00005_239
                        add              rsp, 16
                                                                                        jmp   n27_lit_charset_α
.Lx00005_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00005_240
                        add              rsp, 16
                                                                                        jmp   n27_lit_charset_α
.Lx00005_240:
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
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n27_lit_charset_α
n23_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n27_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n24_iterate_α:
                        mov              qword ptr [rbp + 1792], 0
.Lx00006_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1792]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              rax, 99
                                                                                        je    n22_var_α
                                                                                        jmp   n28_lit_integer_α
n24_iterate_β:
                        inc              qword ptr [rbp + 1792]
                                                                                        jmp   .Lx00006_0
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n29_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_charset_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              dword ptr [rbp + 2836], -1
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n32_scan_many_α
.Lx00007_0:
                        .quad            .Lx00007_0_s
.Lx00007_0_s:
                        .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 6
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n33_op75_α
.Lx00008_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n29_unop_α:
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n34_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n35_call_builtin_icon_α
.Lx00009_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n32_scan_many_α:
                        mov              eax, r14d
.Lx00010_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00010_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00010_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00010_1
                        add              eax, 1
                                                                                        jmp   .Lx00010_0
.Lx00010_1:
                        cmp              eax, r14d
                                                                                        je    n45_lit_charset_α
                        mov              qword ptr [rbp + 2816], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 2824], rcx
                                                                                        jmp   n38_scan_tab_α
n32_scan_many_β:
                                                                                        jmp   n45_lit_charset_α
.Lx00010_2:
                        .quad            .Lx00010_2_s
.Lx00010_2_s:
                        .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n33_op75_α:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 7
                                                                                        je    .Lx00011_1
                        cmp              eax, 6
                                                                                        jne   .Lx00011_0
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 6
                                                                                        jne   .Lx00011_0
.Lx00011_1:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n39_binop_α
.Lx00011_0:
                        lea              rdi, [rbp + 1776]
                        lea              rsi, [rbp + 1824]
                        lea              rdx, [rbp + 1760]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n39_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op75_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 7
                                                                                        je    .Lx00012_1
                        cmp              eax, 6
                                                                                        jne   .Lx00012_0
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 6
                                                                                        jne   .Lx00012_0
.Lx00012_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n40_op75_α
.Lx00012_0:
                        lea              rdi, [rbp + 2960]
                        lea              rsi, [rbp + 1632]
                        lea              rdx, [rbp + 1600]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n40_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn197:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n31_var_α
                                                                                        jmp   n41_call_builtin_icon_α
n35_call_builtin_icon_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn199:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n37_var_ref_α
                                                                                        jmp   n42_assign_α
n36_call_builtin_icon_β:
                                                                                        jmp   n37_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2976]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2824]
                        cmp              rax, 1
                                                                                        jge   .Lx00013_0
                        add              rax, r15
                        add              rax, 1
.Lx00013_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00013_239
                        add              rsp, 16
                                                                                        jmp   n45_lit_charset_α
.Lx00013_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00013_240
                        add              rsp, 16
                                                                                        jmp   n45_lit_charset_α
.Lx00013_240:
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
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                                                                                        jmp   n44_call_builtin_icon_α
n38_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n45_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1824]
                        mov              rcx, qword ptr [rbp + 1832]
                        mov              r8d, 18
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n22_var_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n46_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op75_α:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 7
                                                                                        je    .Lx00014_1
                        cmp              eax, 6
                                                                                        jne   .Lx00014_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 6
                                                                                        jne   .Lx00014_0
.Lx00014_1:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n47_binop_α
.Lx00014_0:
                        lea              rdi, [rbp + 1632]
                        lea              rsi, [rbp + 2960]
                        lea              rdx, [rbp + 1584]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n47_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn208:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n31_var_α
                                                                                        jmp   n31_var_α
n41_call_builtin_icon_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n37_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n48_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn213:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 2752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    n45_lit_charset_α
                                                                                        jmp   n50_assign_α
n44_call_builtin_icon_β:
                                                                                        jmp   n45_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_charset_α:
                        mov              qword ptr [rbp + 2720], 1
                        mov              dword ptr [rbp + 2724], -1
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n51_scan_many_α
.Lx00015_0:
                        .quad            .Lx00015_0_s
.Lx00015_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n46_op75_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 7
                                                                                        je    .Lx00016_1
                        cmp              eax, 6
                                                                                        jne   .Lx00016_0
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 6
                                                                                        jne   .Lx00016_0
.Lx00016_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n52_op75_α
.Lx00016_0:
                        lea              rdi, [rbp + 2960]
                        lea              rsi, [rbp + 1744]
                        lea              rdx, [rbp + 1712]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n52_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 100
                                                                                        je    .Lx00017_0
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 100
                                                                                        je    .Lx00017_0
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 6
                                                                                        jne   .Lx00017_2
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 6
                                                                                        jne   .Lx00017_2
.Lx00017_1:
                        mov              rax, qword ptr [rbp + 1608]
                        mov              rcx, qword ptr [rbp + 1592]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 1568], 6
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n53_call_builtin_icon_α
.Lx00017_0:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        mov              r8d, 3
                        lea              r9, [rbp + 1568]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n53_call_builtin_icon_α
.Lx00017_2:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n26_var_α
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n53_call_builtin_icon_α
n47_binop_β:
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_unop_α:
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n55_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n45_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_many_α:
                        mov              eax, r14d
.Lx00018_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00018_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00018_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00018_1
                        add              eax, 1
                                                                                        jmp   .Lx00018_0
.Lx00018_1:
                        cmp              eax, r14d
                                                                                        je    n63_lit_integer_α
                        mov              qword ptr [rbp + 2704], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 2712], rcx
                                                                                        jmp   n57_scan_tab_α
n51_scan_many_β:
                                                                                        jmp   n63_lit_integer_α
.Lx00018_2:
                        .quad            .Lx00018_2_s
.Lx00018_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n52_op75_α:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 7
                                                                                        je    .Lx00019_1
                        cmp              eax, 6
                                                                                        jne   .Lx00019_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 6
                                                                                        jne   .Lx00019_0
.Lx00019_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n58_binop_α
.Lx00019_0:
                        lea              rdi, [rbp + 1744]
                        lea              rsi, [rbp + 2960]
                        lea              rdx, [rbp + 1696]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n58_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn227:              .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n26_var_α
                                                                                        jmp   n59_lit_real_α
n53_call_builtin_icon_β:
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n60_op75_α
.Lx00020_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n61_call_builtin_icon_α
.Lx00021_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_real_α:
                        mov              qword ptr [rbp + 896], 7
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n62_assign_α
.Lx00022_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n57_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2712]
                        cmp              rax, 1
                                                                                        jge   .Lx00023_0
                        add              rax, r15
                        add              rax, 1
.Lx00023_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00023_239
                        add              rsp, 16
                                                                                        jmp   n63_lit_integer_α
.Lx00023_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00023_240
                        add              rsp, 16
                                                                                        jmp   n63_lit_integer_α
.Lx00023_240:
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
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n63_lit_integer_α
n57_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 100
                                                                                        je    .Lx00024_0
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 100
                                                                                        je    .Lx00024_0
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 6
                                                                                        jne   .Lx00024_2
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 6
                                                                                        jne   .Lx00024_2
.Lx00024_1:
                        mov              rax, qword ptr [rbp + 1720]
                        mov              rcx, qword ptr [rbp + 1704]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1680], 6
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n64_assign_α
.Lx00024_0:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              r8d, 0
                        lea              r9, [rbp + 1680]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n64_assign_α
.Lx00024_2:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n22_var_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n64_assign_α
n58_binop_β:
                                                                                        jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_real_α:
                        mov              qword ptr [rbp + 1664], 7
                        mov              rax, qword ptr [rip + .Lx00025_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n65_op75_α
.Lx00025_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n60_op75_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 7
                                                                                        je    .Lx00026_1
                        cmp              eax, 6
                                                                                        jne   .Lx00026_0
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 6
                                                                                        jne   .Lx00026_0
.Lx00026_1:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n66_binop_α
.Lx00026_0:
                        lea              rdi, [rbp + 1136]
                        lea              rsi, [rbp + 1168]
                        lea              rdx, [rbp + 1120]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n66_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn238:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n56_lit_real_α
                                                                                        jmp   n67_call_builtin_icon_α
n61_call_builtin_icon_β:
                                                                                        jmp   n56_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx00027_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n69_scan_tab_α
.Lx00027_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n24_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n65_op75_α:
                        mov              eax, dword ptr [rbp + 1520]
                        cmp              eax, 7
                                                                                        je    .Lx00028_1
                        cmp              eax, 6
                                                                                        jne   .Lx00028_0
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 6
                                                                                        jne   .Lx00028_0
.Lx00028_1:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n70_binop_α
.Lx00028_0:
                        lea              rdi, [rbp + 1520]
                        lea              rsi, [rbp + 1664]
                        lea              rdx, [rbp + 1504]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n70_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 100
                                                                                        je    .Lx00029_0
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 6
                                                                                        jne   .Lx00029_2
.Lx00029_1:
                        mov              rax, qword ptr [rbp + 1128]
                        mov              rcx, 2
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 1104], 6
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n71_lit_integer_α
.Lx00029_0:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        mov              r8d, 3
                        lea              r9, [rbp + 1104]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n71_lit_integer_α
.Lx00029_2:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n49_var_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n71_lit_integer_α
n66_binop_β:
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn246:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n56_lit_real_α
                                                                                        jmp   n56_lit_real_α
n67_call_builtin_icon_β:
                                                                                        jmp   n56_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n72_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00030_0
                        add              rax, r15
                        add              rax, 1
.Lx00030_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00030_239
                        add              rsp, 16
                                                                                        jmp   n75_disjunction_α
.Lx00030_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00030_240
                        add              rsp, 16
                                                                                        jmp   n75_disjunction_α
.Lx00030_240:
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
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n74_assign_α
n69_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n75_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n26_var_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n76_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx00031_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n77_op75_α
.Lx00031_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_iterate_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00032_0:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 592]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              rax, 99
                                                                                        je    n73_keyword_icon_α
                                                                                        jmp   n78_assign_α
n72_iterate_β:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx00032_0
#-----------------------------------------------------------------------------------------------------------------------
n73_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00033_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n79_var_α
n73_keyword_icon_β:
                                                                                        jmp   n88_var_α
.Lx00033_0:
                        .quad            .Lx00033_0_s
.Lx00033_0_s:
                        .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              rdx, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n75_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n75_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n81_var_α
n75_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx00034_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n80_conjunction_α
.Lx00034_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00034_1
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n80_conjunction_α
.Lx00034_1:
                                                                                        jmp   n80_conjunction_α
n75_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        je    n00035_scan_α
                                                                                        jmp   n82_disjunction_β
n75_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 1
                                                                                        je    n82_disjunction_α
                                                                                        jmp   n00035_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn260:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n26_var_α
                                                                                        jmp   n84_assign_α
n76_call_builtin_icon_β:
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op75_α:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 7
                                                                                        je    .Lx00036_1
                        cmp              eax, 6
                                                                                        jne   .Lx00036_0
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 6
                                                                                        jne   .Lx00036_0
.Lx00036_1:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n85_binop_α
.Lx00036_0:
                        lea              rdi, [rbp + 1104]
                        lea              rsi, [rbp + 1184]
                        lea              rdx, [rbp + 1088]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n85_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n86_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_conjunction_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n89_scan_α
n80_conjunction_β:
                                                                                        jmp   n00035_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n90_lit_string_α
n81_var_β:
                                                                                        jmp   n75_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n91_var_α
n82_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx00037_0
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n75_disjunction_as
.Lx00037_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00037_1
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n75_disjunction_as
.Lx00037_1:
                                                                                        jmp   n75_disjunction_as
n82_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n00035_scan_α
                                                                                        jmp   n00035_scan_α
n82_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n92_var_α
                                                                                        jmp   n00035_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n75_disjunction_as
n83_assign_β:
                                                                                        jmp   n00035_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 100
                                                                                        je    .Lx00038_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 6
                                                                                        jne   .Lx00038_2
.Lx00038_1:
                        mov              rax, qword ptr [rbp + 1096]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1072], 6
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n95_subscript_α
.Lx00038_0:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        mov              r8d, 0
                        lea              r9, [rbp + 1072]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n95_subscript_α
.Lx00038_2:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n49_var_α
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n95_subscript_α
n85_binop_β:
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n86_bound_α:
                        mov              qword ptr [rbp + 624], rsp
                                                                                        jmp   n96_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n97_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n98_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_scan_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2160]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2160]
                        mov              r14, qword ptr [rbp + 2168]
                        mov              r15, qword ptr [rbp + 2176]
                                                                                        jmp   n4_var_α
n89_scan_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx00039_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n00040_binop_test_α
.Lx00039_0:
                        .quad            .Lx00039_0_s
.Lx00039_0_s:
                        .string          "overhead"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n00041_lit_string_α
n91_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00042_var_α
n92_var_β:
                                                                                        jmp   n00035_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn288:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n00035_scan_α
                                                                                        jmp   n82_disjunction_as
n93_call_builtin_icon_β:
                                                                                        jmp   n00035_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn290:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 2544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n00035_scan_α
                                                                                        jmp   n82_disjunction_as
n94_call_builtin_icon_β:
                                                                                        jmp   n00035_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n95_subscript_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n49_var_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n00043_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00044_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n97_unop_α:
                        mov              rdi, qword ptr [rbp + 2976]
                        mov              rsi, qword ptr [rbp + 2984]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00045_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx00046_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00047_call_builtin_icon_α
.Lx00046_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx00048_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00049_var_α
.Lx00048_0:
                        .quad            .Lx00048_0_s
.Lx00048_0_s:
                        .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n00040_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rbp + 2336]
                        mov              rcx, qword ptr [rbp + 2344]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n75_disjunction_af
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n00050_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx00051_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00052_binop_test_α
.Lx00051_0:
                        .quad            .Lx00051_0_s
.Lx00051_0_s:
                        .string          "nothing"
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n94_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_scan_α:
                        lea              rdi, [rbp + 2160]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2160]
                        mov              r14, qword ptr [rbp + 2168]
                        mov              r15, qword ptr [rbp + 2176]
                                                                                        jmp   n4_var_α
n00035_scan_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_deref_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n49_var_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n00053_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_disjunction_α:
                        mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0
                                                                                        jmp   n00054_var_α
n00044_disjunction_as:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0
                                                                                        jne   .Lx00055_0
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00056_op75_α
.Lx00055_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00055_1
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00056_op75_α
.Lx00055_1:
                                                                                        jmp   n00056_op75_α
n00044_disjunction_β:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0
                                                                                        je    n00057_unmark_α
                                                                                        jmp   n00057_unmark_α
n00044_disjunction_af:
                        add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1
                                                                                        je    n00058_var_α
                                                                                        jmp   n00057_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_unmark_α:
                        mov              rsp, qword ptr [rbp + 624]
                                                                                        jmp   n72_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00045_op75_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 7
                                                                                        je    .Lx00059_1
                        cmp              eax, 6
                                                                                        jne   .Lx00059_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 6
                                                                                        jne   .Lx00059_0
.Lx00059_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n00060_op75_α
.Lx00059_0:
                        lea              rdi, [rbp + 2960]
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 496]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00060_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn311:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n99_lit_string_α
                                                                                        jmp   n00061_call_builtin_icon_α
n00047_call_builtin_icon_β:
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00062_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_var_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n83_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        mov              rdx, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2520]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n82_disjunction_af
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n00063_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_assign_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_op75_α:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 7
                                                                                        je    .Lx00064_1
                        cmp              eax, 6
                                                                                        jne   .Lx00064_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx00064_0
.Lx00064_1:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00065_op75_α
.Lx00064_0:
                        lea              rdi, [rbp + 2960]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 704]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00065_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_var_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00066_lit_integer_α
n00054_var_β:
                                                                                        jmp   n00044_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00067_call_builtin_icon_α
n00058_var_β:
                                                                                        jmp   n00057_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx00069_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00044_disjunction_as
n00068_lit_integer_β:
                                                                                        jmp   n00057_unmark_α
.Lx00069_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00067_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn326:              .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n00057_unmark_α
                                                                                        jmp   n00044_disjunction_as
n00067_call_builtin_icon_β:
                                                                                        jmp   n00057_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00060_op75_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 7
                                                                                        je    .Lx00070_1
                        cmp              eax, 6
                                                                                        jne   .Lx00070_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 6
                                                                                        jne   .Lx00070_0
.Lx00070_1:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00071_binop_α
.Lx00070_0:
                        lea              rdi, [rbp + 528]
                        lea              rsi, [rbp + 2960]
                        lea              rdx, [rbp + 480]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00071_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn330:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn330]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n99_lit_string_α
                                                                                        jmp   n99_lit_string_α
n00061_call_builtin_icon_β:
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn332:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n00072_return_α
                                                                                        jmp   n00072_return_α
n00062_call_builtin_icon_β:
                                                                                        jmp   n00072_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00072_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_dofile_γ
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n00073_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_op75_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 7
                                                                                        je    .Lx00074_1
                        cmp              eax, 6
                                                                                        jne   .Lx00074_0
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 6
                                                                                        jne   .Lx00074_0
.Lx00074_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00075_binop_α
.Lx00074_0:
                        lea              rdi, [rbp + 736]
                        lea              rsi, [rbp + 2960]
                        lea              rdx, [rbp + 688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00075_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_lit_integer_α:
                        mov              qword ptr [rbp + 816], 6
                        mov              rax, qword ptr [rip + .Lx00076_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00077_binop_test_α
.Lx00076_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00071_binop_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 100
                                                                                        je    .Lx00078_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 100
                                                                                        je    .Lx00078_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx00078_2
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx00078_2
.Lx00078_1:
                        mov              rax, qword ptr [rbp + 504]
                        mov              rcx, qword ptr [rbp + 488]
                        cqo
                        idiv             rcx
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00079_op75_α
.Lx00078_0:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              r8d, 3
                        lea              r9, [rbp + 464]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00079_op75_α
.Lx00078_2:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              r8d, 3
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00079_op75_α
n00071_binop_β:
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n93_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_binop_α:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 100
                                                                                        je    .Lx00080_0
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 100
                                                                                        je    .Lx00080_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 6
                                                                                        jne   .Lx00080_2
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx00080_2
.Lx00080_1:
                        mov              rax, qword ptr [rbp + 712]
                        mov              rcx, qword ptr [rbp + 696]
                        add              rax, rcx
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00081_assign_α
.Lx00080_0:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              r8d, 0
                        lea              r9, [rbp + 672]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   n00081_assign_α
.Lx00080_2:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n00057_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00081_assign_α
n00075_binop_β:
                                                                                        jmp   n00057_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_binop_test_α:
                        mov              eax, dword ptr [rbp + 2992]
                        cmp              eax, 100
                                                                                        je    .Lx00082_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 100
                                                                                        je    .Lx00082_0
                        mov              eax, dword ptr [rbp + 2992]
                        cmp              eax, 6
                                                                                        jne   .Lx00082_2
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx00082_2
.Lx00082_1:
                        mov              rax, qword ptr [rbp + 3000]
                        mov              rcx, qword ptr [rbp + 824]
                        cmp              rax, rcx
                                                                                        jg    n00044_disjunction_af
                        mov              rcx, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rcx
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rcx
                                                                                        jmp   n00068_lit_integer_α
.Lx00082_0:
                        mov              rdi, qword ptr [rbp + 2992]
                        mov              rsi, qword ptr [rbp + 3000]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 6
                        lea              r9, [rbp + 784]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00082_1
                        cmp              eax, 1
                                                                                        je    n00044_disjunction_af
                                                                                        jmp   n00068_lit_integer_α
.Lx00082_2:
                        mov              rdi, qword ptr [rbp + 2992]
                        mov              rsi, qword ptr [rbp + 3000]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00044_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00068_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_op75_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 7
                                                                                        je    .Lx00083_1
                        cmp              eax, 6
                                                                                        jne   .Lx00083_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx00083_0
.Lx00083_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00084_op75_α
.Lx00083_0:
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00084_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n00057_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_op75_α:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 7
                                                                                        je    .Lx00085_1
                        cmp              eax, 6
                                                                                        jne   .Lx00085_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx00085_0
.Lx00085_1:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00086_binop_α
.Lx00085_0:
                        lea              rdi, [rbp + 464]
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00086_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        mov              r8d, 18
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00087_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_real_α:
                        mov              qword ptr [rbp + 560], 7
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00089_op75_α
.Lx00088_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n00089_op75_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 7
                                                                                        je    .Lx00090_1
                        cmp              eax, 6
                                                                                        jne   .Lx00090_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 6
                                                                                        jne   .Lx00090_0
.Lx00090_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00091_binop_α
.Lx00090_0:
                        lea              rdi, [rbp + 384]
                        lea              rsi, [rbp + 560]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00091_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_binop_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    n88_var_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00092_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn355:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n88_var_α
                                                                                        jmp   n00093_assign_α
n00092_call_builtin_icon_β:
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_assign_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                                                                                        jmp   n88_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_β:
                                                                                        jmp   proc_dofile_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3096]
                        lea              rsp, [rbp + 3120]
                        mov              rbp, [rbp + 3112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_ω:
                        mov              rax, [rbp + 3104]
                        lea              rsp, [rbp + 3120]
                        mov              rbp, [rbp + 3112]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_dofile_dcα:
                        pop              r11
                        sub              rsp, 3136
                        mov              qword ptr [rsp + 3112], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3088], r11
                        lea              rax, [rip + .Lx00094_2]
                        mov              qword ptr [rbp + 3096], rax
                        lea              rax, [rip + .Lx00094_3]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2960
                        mov              edx, 3088
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_dofile_α_body
.Lx00094_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3120
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00094_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3120
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "dofile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_dofile_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3088
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_dofile_dcα]
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
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [1879048192]
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
                        sub              rsp, 728
                        mov              rdi, rsp
                        mov              ecx, 728
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 720], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00095_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx00096_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00097_call_builtin_icon_α
.Lx00096_0:
                        .quad            .Lx00096_0_s
.Lx00096_0_s:
                        .string          "  N ovhead rmserr median  gmean   filename"
#-----------------------------------------------------------------------------------------------------------------------
n00097_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn385:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn385]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n00098_disjunction_α
                                                                                        jmp   n00098_disjunction_α
n00097_call_builtin_icon_β:
                                                                                        jmp   n00098_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00099_var_α
n00098_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00100_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   main_ω
.Lx00100_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00100_1
                                                                                        jmp   main_ω
.Lx00100_1:
                                                                                        jmp   main_ω
n00098_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    main_ω
                                                                                        jmp   n00101_goto_β
n00098_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00102_var_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00099_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00103_unop_α
n00099_var_β:
                                                                                        jmp   n00098_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00104_call_builtin_icon_α
n00102_var_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00101_goto_α:
                                                                                        jmp   n00102_var_α
n00101_goto_β:
                                                                                        jmp   n00102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 160]
                        call             proc_dofile_dcα
                                                                                        jmp   .Lx00106_2
.Lx00106_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n00098_disjunction_as
n00105_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00106_0:
                        .quad            .Lx00106_0_s
.Lx00106_0_s:
                        .string          "dofile"
#-----------------------------------------------------------------------------------------------------------------------
n00103_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00107_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn397:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn397]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n00108_assign_α
n00104_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00107_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx00109_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00110_binop_test_α
.Lx00109_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00108_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00111_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_binop_test_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 100
                                                                                        je    .Lx00112_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 100
                                                                                        je    .Lx00112_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx00112_2
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx00112_2
.Lx00112_1:
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, qword ptr [rbp + 232]
                        cmp              rax, rcx
                                                                                        jne   n00098_disjunction_af
                        mov              rcx, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rcx
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rcx
                                                                                        jmp   n00113_keyword_icon_α
.Lx00112_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8d, 9
                        lea              r9, [rbp + 176]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00112_1
                        cmp              eax, 1
                                                                                        je    n00098_disjunction_af
                                                                                        jmp   n00113_keyword_icon_α
.Lx00112_2:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00098_disjunction_af
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n00113_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_disjunction_α:
                        mov              qword ptr [rbp + 432], 0
                        mov              qword ptr [rbp + 440], 0
                        mov              dword ptr [rbp + 448], 0
                                                                                        jmp   n00114_var_α
n00111_disjunction_as:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0
                                                                                        jne   .Lx00115_0
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00116_assign_α
.Lx00115_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00115_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00116_assign_α
.Lx00115_1:
                                                                                        jmp   n00116_assign_α
n00111_disjunction_β:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 0
                                                                                        je    n00111_disjunction_af
                                                                                        jmp   n00111_disjunction_af
n00111_disjunction_af:
                        add              dword ptr [rbp + 448], 1
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 1
                                                                                        je    n00117_lit_string_α
                                                                                        jmp   n00118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00119_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00120_lit_string_α
n00113_keyword_icon_β:
                                                                                        jmp   main_ω
.Lx00119_0:
                        .quad            .Lx00119_0_s
.Lx00119_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00116_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00121_call_builtin_icon_α
n00114_var_β:
                                                                                        jmp   n00111_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx00122_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00123_var_α
n00117_lit_string_β:
                                                                                        jmp   n00111_disjunction_af
.Lx00122_0:
                        .quad            .Lx00122_0_s
.Lx00122_0_s:
                        .string          "cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn409:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn409]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n00111_disjunction_af
                                                                                        jmp   n00111_disjunction_as
n00121_call_builtin_icon_β:
                                                                                        jmp   n00111_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn411:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn411]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n00111_disjunction_af
                                                                                        jmp   n00111_disjunction_as
n00124_call_builtin_icon_β:
                                                                                        jmp   n00111_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00120_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx00125_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00105_call_proc_staged_α
.Lx00125_0:
                        .quad            .Lx00125_0_s
.Lx00125_0_s:
                        .string          "stdin"
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00124_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_call_proc_staged_α:
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 416]
                        call             proc_dofile_dcα
                                                                                        jmp   .Lx00128_2
.Lx00128_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n00102_var_α
                                                                                        jmp   n00129_conjunction_α
n00127_call_proc_staged_β:
                                                                                        jmp   n00102_var_α
.Lx00128_0:
                        .quad            .Lx00128_0_s
.Lx00128_0_s:
                        .string          "dofile"
#-----------------------------------------------------------------------------------------------------------------------
n00129_conjunction_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00102_var_α
n00129_conjunction_β:
                                                                                        jmp   n00102_var_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 720]
                        add              rsp, 728
                        ret
                        .section         .note.GNU-stack,"",@progbits
