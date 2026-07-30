                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q_α
proc_q_α:
                        .global          proc_q_α
                        .global          proc_q_β
                        .global          proc_q_γ
                        .global          proc_q_ω
                        sub              rsp, 2144
                        mov              [rsp + 2120], rcx
                        mov              [rsp + 2128], rdx
                        mov              [rsp + 2136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2096
                        mov              edx, 2112
                        call             rt_jmp_frame_lexprep2@PLT
proc_q_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              dword ptr [rbp + 1488], 0
                                                                                        jmp   n2_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0
                                                                                        jne   .Lx00001_0
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n1_lit_integer_α
.Lx00001_0:
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 1488]
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_af:
                        add              dword ptr [rbp + 1488], 1
                        mov              eax, dword ptr [rbp + 1488]
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n4_var_ref_α
.Lx00002_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052416
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n5_nulltest_var_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_conjunction_α:
                                                                                        jmp   n0_disjunction_as
n3_conjunction_β:
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052400
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n8_var_α
.Lx00003_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 6
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n9_assign_var_α
.Lx00004_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n10_to_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_to_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 688], 6
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 656], rax
.Lx00005_0:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 696]
                        cmp              rax, rcx
                                                                                        jg    proc_q_ω
                        mov              qword ptr [rbp + 640], 6
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n12_assign_α
n10_to_β:
                        inc              qword ptr [rbp + 656]
                                                                                        jmp   .Lx00005_0
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx00006_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n13_var_α
.Lx00006_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n14_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n15_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n14_subscript_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n17_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op75_α:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 7
                                                                                        je    .Lx00007_1
                        cmp              eax, 6
                                                                                        jne   .Lx00007_0
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 6
                                                                                        jne   .Lx00007_0
.Lx00007_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n18_binop_α
.Lx00007_0:
                        lea              rdi, [rbp + 1984]
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 1952]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n19_var_α
.Lx00008_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n17_deref_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n20_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 6
                                                                                        jne   .Lx00009_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 1960]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1936], 6
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n21_lit_integer_α
.Lx00009_0:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n16_lit_integer_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n22_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_test_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 100
                                                                                        je    .Lx00010_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 100
                                                                                        je    .Lx00010_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx00010_2
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx00010_2
.Lx00010_1:
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jne   n10_to_β
                        mov              rcx, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rcx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rcx
                                                                                        jmp   n24_var_ref_α
.Lx00010_0:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 9
                        lea              r9, [rbp + 576]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00010_1
                        cmp              eax, 1
                                                                                        je    n10_to_β
                                                                                        jmp   n24_var_ref_α
.Lx00010_2:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n10_to_β
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 2000], 6
                        mov              rax, qword ptr [rip + .Lx00011_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n25_op75_α
.Lx00011_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_op75_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 7
                                                                                        je    .Lx00012_1
                        cmp              eax, 6
                                                                                        jne   .Lx00012_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 6
                                                                                        jne   .Lx00012_0
.Lx00012_1:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n26_binop_α
.Lx00012_0:
                        lea              rdi, [rbp + 1792]
                        lea              rsi, [rbp + 1776]
                        lea              rdx, [rbp + 1760]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n26_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n27_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052368
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op75_α:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 7
                                                                                        je    .Lx00013_1
                        cmp              eax, 6
                                                                                        jne   .Lx00013_0
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 6
                                                                                        jne   .Lx00013_0
.Lx00013_1:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n29_binop_α
.Lx00013_0:
                        lea              rdi, [rbp + 1936]
                        lea              rsi, [rbp + 2000]
                        lea              rdx, [rbp + 1920]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 6
                                                                                        jne   .Lx00014_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 1768]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1744], 6
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n30_lit_integer_α
.Lx00014_0:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n23_var_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx00015_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 6
                                                                                        jne   .Lx00016_0
                        mov              rax, qword ptr [rbp + 1928]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1904], 6
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n33_lit_integer_α
.Lx00016_0:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n16_lit_integer_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n34_op75_α
.Lx00017_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn151:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 1552]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n1_lit_integer_α
                                                                                        jmp   n35_assign_α
n31_call_builtin_icon_β:
                                                                                        jmp   n1_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n36_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 6
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n37_call_builtin_icon_α
.Lx00018_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_op75_α:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 7
                                                                                        je    .Lx00019_1
                        cmp              eax, 6
                                                                                        jne   .Lx00019_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx00019_0
.Lx00019_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n38_binop_α
.Lx00019_0:
                        lea              rdi, [rbp + 1744]
                        lea              rsi, [rbp + 1808]
                        lea              rdx, [rbp + 1728]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n38_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n3_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op75_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 7
                                                                                        je    .Lx00020_1
                        cmp              eax, 6
                                                                                        jne   .Lx00020_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 6
                                                                                        jne   .Lx00020_0
.Lx00020_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n39_op75_α
.Lx00020_0:
                        lea              rdi, [rbp + 848]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 832]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n39_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn161:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n16_lit_integer_α
                                                                                        jmp   n40_assign_α
n37_call_builtin_icon_β:
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx00021_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n41_lit_integer_α
.Lx00021_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n23_var_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n41_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op75_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 7
                                                                                        je    .Lx00022_1
                        cmp              eax, 6
                                                                                        jne   .Lx00022_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx00022_0
.Lx00022_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n42_binop_α
.Lx00022_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n42_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 6
                        mov              rax, qword ptr [rip + .Lx00023_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n43_call_builtin_icon_α
.Lx00023_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx00024_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx00024_0
                        mov              rax, qword ptr [rbp + 840]
                        mov              rcx, qword ptr [rbp + 824]
                        add              rax, rcx
                        mov              qword ptr [rbp + 800], 6
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n44_var_α
.Lx00024_0:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn169:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n23_var_α
                                                                                        jmp   n45_assign_α
n43_call_builtin_icon_β:
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n46_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op75_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 7
                                                                                        je    .Lx00025_1
                        cmp              eax, 6
                                                                                        jne   .Lx00025_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx00025_0
.Lx00025_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n47_op75_α
.Lx00025_0:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 784]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n47_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx00026_1
                        cmp              eax, 6
                                                                                        jne   .Lx00026_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx00026_0
.Lx00026_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n48_binop_α
.Lx00026_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n48_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 6
                                                                                        jne   .Lx00027_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx00027_0
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 776]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n49_subscript_α
.Lx00027_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n49_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n50_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n51_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 100
                                                                                        je    .Lx00028_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 100
                                                                                        je    .Lx00028_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 6
                                                                                        jne   .Lx00028_2
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 6
                                                                                        jne   .Lx00028_2
.Lx00028_1:
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 920]
                        cmp              rax, rcx
                                                                                        jne   n10_to_β
                        mov              rcx, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rcx
                                                                                        jmp   n52_var_ref_α
.Lx00028_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              r8d, 9
                        lea              r9, [rbp + 560]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00028_1
                        cmp              eax, 1
                                                                                        je    n10_to_β
                                                                                        jmp   n52_var_ref_α
.Lx00028_2:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n10_to_β
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052384
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n55_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op75_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 7
                                                                                        je    .Lx00029_1
                        cmp              eax, 6
                                                                                        jne   .Lx00029_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx00029_0
.Lx00029_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n56_op75_α
.Lx00029_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n56_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx00030_1
                        cmp              eax, 6
                                                                                        jne   .Lx00030_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 6
                                                                                        jne   .Lx00030_0
.Lx00030_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n57_binop_α
.Lx00030_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 992]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n57_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx00031_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 6
                                                                                        jne   .Lx00031_0
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 1000]
                        add              rax, rcx
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n58_lit_integer_α
.Lx00031_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n59_op75_α
.Lx00032_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_op75_α:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 7
                                                                                        je    .Lx00033_1
                        cmp              eax, 6
                                                                                        jne   .Lx00033_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 6
                                                                                        jne   .Lx00033_0
.Lx00033_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n60_binop_α
.Lx00033_0:
                        lea              rdi, [rbp + 976]
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 960]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n60_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                                                                                        jne   .Lx00034_0
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 944], 6
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n61_subscript_α
.Lx00034_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n63_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 100
                                                                                        je    .Lx00035_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 100
                                                                                        je    .Lx00035_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 6
                                                                                        jne   .Lx00035_2
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 6
                                                                                        jne   .Lx00035_2
.Lx00035_1:
                        mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 1096]
                        cmp              rax, rcx
                                                                                        jne   n10_to_β
                        mov              rcx, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rcx
                                                                                        jmp   n64_var_ref_α
.Lx00035_0:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 9
                        lea              r9, [rbp + 544]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00035_1
                        cmp              eax, 1
                                                                                        je    n10_to_β
                                                                                        jmp   n64_var_ref_α
.Lx00035_2:
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n10_to_β
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052400
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n66_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052368
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n70_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n70_op75_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 7
                                                                                        je    .Lx00036_1
                        cmp              eax, 6
                                                                                        jne   .Lx00036_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 6
                                                                                        jne   .Lx00036_0
.Lx00036_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n71_op75_α
.Lx00036_0:
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n71_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op75_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 7
                                                                                        je    .Lx00037_1
                        cmp              eax, 6
                                                                                        jne   .Lx00037_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx00037_0
.Lx00037_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n72_binop_α
.Lx00037_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n72_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx00038_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx00038_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 216]
                        add              rax, rcx
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n73_var_α
.Lx00038_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n74_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op75_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 7
                                                                                        je    .Lx00039_1
                        cmp              eax, 6
                                                                                        jne   .Lx00039_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx00039_0
.Lx00039_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n75_op75_α
.Lx00039_0:
                        lea              rdi, [rbp + 192]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 176]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx00040_1
                        cmp              eax, 6
                                                                                        jne   .Lx00040_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx00040_0
.Lx00040_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n76_binop_α
.Lx00040_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 192]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n76_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 6
                                                                                        jne   .Lx00041_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx00041_0
                        mov              rax, qword ptr [rbp + 184]
                        mov              rcx, qword ptr [rbp + 168]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n77_subscript_α
.Lx00041_0:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n77_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052384
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n80_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n81_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op75_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 7
                                                                                        je    .Lx00042_1
                        cmp              eax, 6
                                                                                        jne   .Lx00042_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx00042_0
.Lx00042_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n82_op75_α
.Lx00042_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n82_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx00043_1
                        cmp              eax, 6
                                                                                        jne   .Lx00043_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 6
                                                                                        jne   .Lx00043_0
.Lx00043_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n83_binop_α
.Lx00043_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n83_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx00044_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx00044_0
                        mov              rax, qword ptr [rbp + 424]
                        mov              rcx, qword ptr [rbp + 408]
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 6
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n84_lit_integer_α
.Lx00044_0:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx00045_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n85_op75_α
.Lx00045_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_op75_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 7
                                                                                        je    .Lx00046_1
                        cmp              eax, 6
                                                                                        jne   .Lx00046_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx00046_0
.Lx00046_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n86_binop_α
.Lx00046_0:
                        lea              rdi, [rbp + 384]
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n86_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx00047_0
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n87_subscript_α
.Lx00047_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n87_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n87_subscript_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx00048_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n89_rev_assign_var_α
.Lx00048_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n10_to_β
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n90_rev_assign_var_α
n89_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_assign_var@PLT
                                                                                        jmp   n10_to_β
#-----------------------------------------------------------------------------------------------------------------------
n90_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n89_rev_assign_var_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n91_rev_assign_var_α
n90_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_assign_var@PLT
                                                                                        jmp   n89_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n91_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n90_rev_assign_var_β
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n92_conjunction_α
n91_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        call             rt_assign_var@PLT
                                                                                        jmp   n90_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n92_conjunction_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n93_bound_α
n92_conjunction_β:
                                                                                        jmp   proc_q_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_bound_α:
                        mov              qword ptr [rbp + 1104], rsp
                                                                                        jmp   n94_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n95_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n96_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n97_disjunction_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_disjunction_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0
                                                                                        jmp   n00049_var_α
n97_disjunction_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        jne   .Lx00050_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n99_conjunction_α
.Lx00050_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00050_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n99_conjunction_α
.Lx00050_1:
                                                                                        jmp   n99_conjunction_α
n97_disjunction_β:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        je    n00051_unmark_α
                                                                                        jmp   n00051_unmark_α
n97_disjunction_af:
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1
                                                                                        je    n00052_var_α
                                                                                        jmp   n00051_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n00053_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n99_conjunction_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00051_unmark_α
n99_conjunction_β:
                                                                                        jmp   n00051_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00054_var_α
n00049_var_β:
                                                                                        jmp   n97_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00055_lit_integer_α
n00052_var_β:
                                                                                        jmp   n00051_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_call_proc_staged_α:
                        call             proc_show_dcα
                                                                                        jmp   .Lx00057_2
.Lx00057_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n00051_unmark_α
                                                                                        jmp   n97_disjunction_as
n00056_call_proc_staged_β:
                                                                                        jmp   n00051_unmark_α
.Lx00057_0:
                        .quad            .Lx00057_0_s
.Lx00057_0_s:
                        .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n00058_call_proc_staged_α:
                        lea              rsi, [rbp + 1328]
                        call             proc_q_dcα
                                                                                        jmp   .Lx00059_2
.Lx00059_2:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n00051_unmark_α
                                                                                        jmp   n97_disjunction_as
n00058_call_proc_staged_β:
                                                                                        jmp   n00051_unmark_α
.Lx00059_0:
                        .quad            .Lx00059_0_s
.Lx00059_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00053_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n97_disjunction_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n97_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_unmark_α:
                        mov              rsp, qword ptr [rbp + 1104]
                                                                                        jmp   n91_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n00054_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n00060_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx00061_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00062_op75_α
.Lx00061_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00060_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx00063_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 100
                                                                                        je    .Lx00063_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx00063_2
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 6
                                                                                        jne   .Lx00063_2
.Lx00063_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx
                                                                                        jne   n97_disjunction_af
                        mov              rcx, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rcx
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rcx
                                                                                        jmp   n00056_call_proc_staged_α
.Lx00063_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8d, 9
                        lea              r9, [rbp + 1232]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00063_1
                        cmp              eax, 1
                                                                                        je    n97_disjunction_af
                                                                                        jmp   n00056_call_proc_staged_α
.Lx00063_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n97_disjunction_af
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00056_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx00064_1
                        cmp              eax, 6
                                                                                        jne   .Lx00064_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx00064_0
.Lx00064_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00065_binop_α
.Lx00064_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 1376]
                        lea              rdx, [rbp + 1344]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00065_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_binop_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 6
                                                                                        jne   .Lx00066_0
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1328], 6
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00058_call_proc_staged_α
.Lx00066_0:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00051_unmark_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n00058_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
proc_q_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q_β:
                                                                                        jmp   proc_q_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2120]
                        lea              rsp, [rbp + 2144]
                        mov              rbp, [rbp + 2136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q_ω:
                        mov              rax, [rbp + 2128]
                        lea              rsp, [rbp + 2144]
                        mov              rbp, [rbp + 2136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_q_dcα:
                        pop              r11
                        sub              rsp, 2160
                        mov              qword ptr [rsp + 2136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2112], r11
                        lea              rax, [rip + .Lx00067_2]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rax, [rip + .Lx00067_3]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 2096
                        mov              edx, 2112
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_q_α_body
.Lx00067_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00067_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_show_α
proc_show_α:
                        .global          proc_show_α
                        .global          proc_show_β
                        .global          proc_show_γ
                        .global          proc_show_ω
                        sub              rsp, 1264
                        mov              [rsp + 1240], rcx
                        mov              [rsp + 1248], rdx
                        mov              [rsp + 1256], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1232
                        mov              edx, 1232
                        call             rt_jmp_frame_lexprep2@PLT
proc_show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00068_disjunction_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   n00069_var_ref_α
n00068_disjunction_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        jne   .Lx00070_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00071_lit_string_α
.Lx00070_0:
                                                                                        jmp   n00071_lit_string_α
n00068_disjunction_β:
                        mov              eax, dword ptr [rbp + 832]
                                                                                        jmp   n00071_lit_string_α
n00068_disjunction_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                                                                                        jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              dword ptr [rbp + 724], 10
                        mov              rax, qword ptr [rip + .Lx00072_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00073_var_α
.Lx00072_0:
                        .quad            .Lx00072_0_s
.Lx00072_0_s:
                        .string          "solution: "
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052480
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00074_nulltest_var_α
n00069_var_ref_β:
                                                                                        jmp   n00068_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00075_conjunction_α:
                                                                                        jmp   n00068_disjunction_as
n00075_conjunction_β:
                                                                                        jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00076_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 99
                                                                                        je    n00068_disjunction_af
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00068_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00068_disjunction_af
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n00077_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx00078_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00079_op75_α
.Lx00078_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00080_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              dword ptr [rbp + 628], 2
                        mov              rax, qword ptr [rip + .Lx00081_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00082_var_α
.Lx00081_0:
                        .quad            .Lx00081_0_s
.Lx00081_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00077_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 6
                        mov              rax, qword ptr [rip + .Lx00083_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n00084_assign_var_α
.Lx00083_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00079_op75_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 7
                                                                                        je    .Lx00085_1
                        cmp              eax, 6
                                                                                        jne   .Lx00085_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx00085_0
.Lx00085_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00086_binop_α
.Lx00085_0:
                        lea              rdi, [rbp + 784]
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00086_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00087_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00068_disjunction_af
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n00088_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_binop_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 6
                                                                                        jne   .Lx00089_0
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00090_assign_α
.Lx00089_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00080_lit_string_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00090_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn345:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rbp + 576]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n00091_var_ref_α
                                                                                        jmp   n00091_var_ref_α
n00087_call_builtin_icon_β:
                                                                                        jmp   n00091_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052448
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00092_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx00093_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00094_assign_α
.Lx00093_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00090_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00095_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx00096_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00097_var_α
.Lx00096_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00094_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n00098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn353:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rbp + 672]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n00080_lit_string_α
                                                                                        jmp   n00080_lit_string_α
n00095_call_builtin_icon_β:
                                                                                        jmp   n00080_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00099_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              dword ptr [rbp + 1108], 4
                        mov              rax, qword ptr [rip + .Lx00100_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00101_var_α
.Lx00100_0:
                        .quad            .Lx00100_0_s
.Lx00100_0_s:
                        .string          "|   "
#-----------------------------------------------------------------------------------------------------------------------
n00099_iterate_α:
                        mov              qword ptr [rbp + 176], 0
.Lx00102_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        je    n00103_call_builtin_icon_α
                                                                                        jmp   n00104_lit_integer_α
n00099_iterate_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx00102_0
#-----------------------------------------------------------------------------------------------------------------------
n00103_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn359:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rbp + 16]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    proc_show_ω
                                                                                        jmp   proc_show_ω
n00103_call_builtin_icon_β:
                                                                                        jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00105_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx00106_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00107_op75_α
.Lx00106_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00105_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn363:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn363]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n00108_lit_string_α
                                                                                        jmp   n00109_lit_string_α
n00105_call_builtin_icon_β:
                                                                                        jmp   n00108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 4
                        mov              rax, qword ptr [rip + .Lx00110_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00111_var_α
.Lx00110_0:
                        .quad            .Lx00110_0_s
.Lx00110_0_s:
                        .string          "----"
#-----------------------------------------------------------------------------------------------------------------------
n00107_op75_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 7
                                                                                        je    .Lx00112_1
                        cmp              eax, 6
                                                                                        jne   .Lx00112_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx00112_0
.Lx00112_1:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00113_binop_α
.Lx00112_0:
                        lea              rdi, [rbp + 160]
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 144]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00113_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00114_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00115_binop_α
.Lx00114_0:
                        .quad            .Lx00114_0_s
.Lx00114_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n00111_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_binop_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 6
                                                                                        jne   .Lx00117_0
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00118_op75_α
.Lx00117_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n00103_call_builtin_icon_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00118_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00119_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn372:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn372]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n00071_lit_string_α
                                                                                        jmp   n00120_lit_string_α
n00116_call_builtin_icon_β:
                                                                                        jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00118_op75_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 7
                                                                                        je    .Lx00121_1
                        cmp              eax, 6
                                                                                        jne   .Lx00121_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 6
                                                                                        jne   .Lx00121_0
.Lx00121_1:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00122_binop_α
.Lx00121_0:
                        lea              rdi, [rbp + 128]
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 96]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00122_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00119_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n00108_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00120_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Lx00123_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00124_binop_α
.Lx00123_0:
                        .quad            .Lx00123_0_s
.Lx00123_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00122_binop_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx00125_0
                        mov              rax, 4
                        mov              rcx, qword ptr [rbp + 104]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00126_lit_integer_α
.Lx00125_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n00103_call_builtin_icon_α
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_binop_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00127_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx00128_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00129_op75_α
.Lx00128_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00075_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_op75_α:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 7
                                                                                        je    .Lx00130_1
                        cmp              eax, 6
                                                                                        jne   .Lx00130_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx00130_0
.Lx00130_1:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00131_binop_α
.Lx00130_0:
                        lea              rdi, [rbp + 80]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 64]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00131_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_binop_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx00132_0
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00133_subscript_α
.Lx00132_0:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00103_call_builtin_icon_α
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00133_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_subscript_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00099_iterate_β
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx00135_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00136_rev_assign_var_α
.Lx00135_0:
                        .quad            .Lx00135_0_s
.Lx00135_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n00136_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00099_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00137_bound_α
n00136_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_assign_var@PLT
                                                                                        jmp   n00099_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00137_bound_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n00138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00138_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              dword ptr [rbp + 532], 2
                        mov              rax, qword ptr [rip + .Lx00139_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00140_var_α
.Lx00139_0:
                        .quad            .Lx00139_0_s
.Lx00139_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00140_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00141_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn392:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n00142_lit_string_α
                                                                                        jmp   n00142_lit_string_α
n00141_call_builtin_icon_β:
                                                                                        jmp   n00142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              dword ptr [rbp + 436], 2
                        mov              rax, qword ptr [rip + .Lx00143_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00144_var_α
.Lx00143_0:
                        .quad            .Lx00143_0_s
.Lx00143_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n00145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn396:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n00146_unmark_α
                                                                                        jmp   n00147_conjunction_α
n00145_call_builtin_icon_β:
                                                                                        jmp   n00146_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00146_unmark_α:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   n00136_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n00147_conjunction_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00146_unmark_α
n00147_conjunction_β:
                                                                                        jmp   n00146_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_show_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_show_β:
                                                                                        jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_show_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1240]
                        lea              rsp, [rbp + 1264]
                        mov              rbp, [rbp + 1256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_show_ω:
                        mov              rax, [rbp + 1248]
                        lea              rsp, [rbp + 1264]
                        mov              rbp, [rbp + 1256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_show_dcα:
                        pop              r11
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1256], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1232], r11
                        lea              rax, [rip + .Lx00148_2]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rax, [rip + .Lx00148_3]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rdi, rbp
                        mov              esi, 1232
                        mov              edx, 1232
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_show_α_body
.Lx00148_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1264
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00148_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1264
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        .global          proc_options_α
                        .global          proc_options_β
                        .global          proc_options_γ
                        .global          proc_options_ω
                        sub              rsp, 2768
                        mov              [rsp + 2744], rcx
                        mov              [rsp + 2752], rdx
                        mov              [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2608
                        mov              edx, 2736
                        call             rt_jmp_frame_lexprep2@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00150_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 99
                                                                                        je    n00151_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00151_call_builtin_icon_α
                        cmp              eax, 0
                                                                                        jne   n00151_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00152_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_lit_charset_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00153_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00154_call_builtin_icon_α
.Lx00153_0:
                        .quad            .Lx00153_0_s
.Lx00153_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00151_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn512:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn512]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n00155_make_list_α
                                                                                        jmp   n00156_assign_α
n00151_call_builtin_icon_β:
                                                                                        jmp   n00155_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn514:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n00151_call_builtin_icon_α
                                                                                        jmp   n00157_assign_var_α
n00154_call_builtin_icon_β:
                                                                                        jmp   n00151_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00155_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              rdx, qword ptr [rbp + 2544]
                        mov              rcx, qword ptr [rbp + 2552]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00151_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00151_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00160_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn523:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn523]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00161_var_α
                                                                                        jmp   n00162_assign_α
n00160_call_builtin_icon_β:
                                                                                        jmp   n00161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00161_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00163_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00162_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00165_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00167_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00168_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00165_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn534:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn534]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n00166_var_α
                                                                                        jmp   n00169_call_builtin_icon_α
n00165_call_builtin_icon_β:
                                                                                        jmp   n00166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00167_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
n00168_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00170_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn539:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n00166_var_α
                                                                                        jmp   n00161_var_α
n00169_call_builtin_icon_β:
                                                                                        jmp   n00166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00170_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00171_lit_string_α
n00170_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00172_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00173_scan_α
.Lx00172_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00172_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00173_scan_α
.Lx00172_1:
                                                                                        jmp   n00173_scan_α
n00170_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00174_disjunction_β
                                                                                        jmp   n00175_scan_α
n00170_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00176_var_α
                                                                                        jmp   n00175_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00159_var_α
n00173_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00170_disjunction_β
                                                                                        jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00171_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00177_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00178_scan_match_α
n00171_lit_string_β:
                                                                                        jmp   n00170_disjunction_af
.Lx00177_0:
                        .quad            .Lx00177_0_s
.Lx00177_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00174_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00179_var_α
n00174_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00180_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00181_lit_integer_α
.Lx00180_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00180_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00181_lit_integer_α
.Lx00180_1:
                                                                                        jmp   n00181_lit_integer_α
n00174_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00182_disjunction_β
                                                                                        jmp   n00181_lit_integer_α
n00174_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00183_lit_string_α
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00176_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00184_var_α
n00176_var_β:
                                                                                        jmp   n00175_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00185_conjunction_α:
                                                                                        jmp   n00170_disjunction_as
n00185_conjunction_β:
                                                                                        jmp   n00175_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn551:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn551]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n00175_scan_α
                                                                                        jmp   n00170_disjunction_as
n00186_call_builtin_icon_β:
                                                                                        jmp   n00175_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00178_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00187_239
                        add              rsp, 16
                                                                                        jmp   n00170_disjunction_af
.Lx00187_239:
                        mov              rdi, qword ptr [rip + .Lx00187_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00187_240
                        add              rsp, 16
                                                                                        jmp   n00170_disjunction_af
.Lx00187_240:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00188_scan_tab_α
.Lx00187_0:
                        .quad            .Lx00187_0_s
.Lx00187_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00189_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00190_scan_move_α
.Lx00189_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00179_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00191_var_α
n00179_var_β:
                                                                                        jmp   n00174_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00182_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00192_lit_charset_α
n00182_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00193_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00194_assign_var_α
.Lx00193_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00193_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00194_assign_var_α
.Lx00193_1:
                                                                                        jmp   n00194_assign_var_α
n00182_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00181_lit_integer_α
                                                                                        jmp   n00181_lit_integer_α
n00182_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00195_lit_integer_α
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              dword ptr [rbp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00196_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00197_var_α
n00183_lit_string_β:
                                                                                        jmp   n00181_lit_integer_α
.Lx00196_0:
                        .quad            .Lx00196_0_s
.Lx00196_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00181_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00174_disjunction_as
n00194_assign_var_β:
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn562:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn562]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n00181_lit_integer_α
                                                                                        jmp   n00174_disjunction_as
n00198_call_builtin_icon_β:
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00186_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_scan_α:
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00159_var_α
n00175_scan_β:
                                                                                        jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00188_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00199_0
                        add              rax, r15
                        add              rax, 1
.Lx00199_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00199_239
                        add              rsp, 16
                                                                                        jmp   n00170_disjunction_af
.Lx00199_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00199_240
                        add              rsp, 16
                                                                                        jmp   n00170_disjunction_af
.Lx00199_240:
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
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00200_lit_integer_α
n00188_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00170_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00190_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00201_239
                        add              rsp, 16
                                                                                        jmp   n00175_scan_α
.Lx00201_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00201_240
                        add              rsp, 16
                                                                                        jmp   n00175_scan_α
.Lx00201_240:
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00202_assign_α
n00190_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00175_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00191_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00203_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00192_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00204_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00205_var_ref_α
n00192_lit_charset_β:
                                                                                        jmp   n00182_disjunction_af
.Lx00204_0:
                        .quad            .Lx00204_0_s
.Lx00204_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00195_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx00206_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00182_disjunction_as
n00195_lit_integer_β:
                                                                                        jmp   n00181_lit_integer_α
.Lx00206_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00207_conjunction_α:
                                                                                        jmp   n00182_disjunction_as
n00207_conjunction_β:
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00198_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx00208_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00209_scan_pos_α
.Lx00208_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00202_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00174_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              qword ptr [rbp + 1872], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00210_60:
                        .section         .rodata
.Lbynamegenfn212:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn212]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 2
                        lea              rcx, [rbp + 1872]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n00174_disjunction_af
                                                                                        jmp   n00211_lit_integer_α
n00203_call_builtin_gen_β:
                                                                                        jmp   .Lx00210_60
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00212_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00213_0
                        add              rax, r15
                        add              rax, 1
.Lx00213_0:
                        cmp              rax, 1
                                                                                        jl    n00214_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00214_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00214_var_α
                        mov              qword ptr [rbp + 2224], 6
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00188_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00211_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx00215_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00216_op75_α
.Lx00215_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00212_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00217_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00218_conjunction_α
n00214_var_β:
                                                                                        jmp   n00188_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00216_op75_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 7
                                                                                        je    .Lx00219_1
                        cmp              eax, 6
                                                                                        jne   .Lx00219_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 6
                                                                                        jne   .Lx00219_0
.Lx00219_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00220_binop_α
.Lx00219_0:
                        lea              rdi, [rbp + 1824]
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1808]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00220_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00182_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00221_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00218_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00222_disjunction_α
n00218_conjunction_β:
                                                                                        jmp   n00170_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00220_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx00223_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 6
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00224_assign_α
.Lx00223_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00174_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00224_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00182_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00225_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00226_lit_string_α
n00222_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00227_0
                                                                                        jmp   n00181_lit_integer_α
.Lx00227_0:
                                                                                        jmp   n00181_lit_integer_α
n00222_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00181_lit_integer_α
n00222_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00225_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00229_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00230_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00231_scan_match_α
n00226_lit_string_β:
                                                                                        jmp   n00222_disjunction_af
.Lx00230_0:
                        .quad            .Lx00230_0_s
.Lx00230_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00232_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00229_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn228:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn228]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n00182_disjunction_af
                                                                                        jmp   n00233_disjunction_α
n00229_call_builtin_icon_β:
                                                                                        jmp   n00182_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00231_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00234_239
                        add              rsp, 16
                                                                                        jmp   n00222_disjunction_af
.Lx00234_239:
                        mov              rdi, qword ptr [rip + .Lx00234_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00234_240
                        add              rsp, 16
                                                                                        jmp   n00222_disjunction_af
.Lx00234_240:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00235_scan_tab_α
.Lx00234_0:
                        .quad            .Lx00234_0_s
.Lx00234_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00232_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00236_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00233_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00237_lit_string_α
n00233_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00238_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00239_assign_α
.Lx00238_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00238_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00239_assign_α
.Lx00238_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00238_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00239_assign_α
.Lx00238_2:
                                                                                        jmp   n00239_assign_α
n00233_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00233_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00233_disjunction_af
                                                                                        jmp   n00233_disjunction_af
n00233_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00240_var_α
                        cmp              eax, 2
                                                                                        je    n00241_lit_string_α
                                                                                        jmp   n00242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00235_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00243_0
                        add              rax, r15
                        add              rax, 1
.Lx00243_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00243_239
                        add              rsp, 16
                                                                                        jmp   n00222_disjunction_af
.Lx00243_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00243_240
                        add              rsp, 16
                                                                                        jmp   n00222_disjunction_af
.Lx00243_240:
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
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00244_lit_integer_α
n00235_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00222_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00236_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00181_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00182_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00239_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00237_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              dword ptr [rbp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00245_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00246_lit_integer_α
n00237_lit_string_β:
                                                                                        jmp   n00233_disjunction_af
.Lx00245_0:
                        .quad            .Lx00245_0_s
.Lx00245_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00247_call_builtin_icon_α
n00240_var_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              dword ptr [rbp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00248_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00249_var_α
n00241_lit_string_β:
                                                                                        jmp   n00233_disjunction_af
.Lx00248_0:
                        .quad            .Lx00248_0_s
.Lx00248_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00250_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00233_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00233_disjunction_as
n00250_binop_test_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00247_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn619:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn619]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n00233_disjunction_af
                                                                                        jmp   n00233_disjunction_as
n00247_call_builtin_icon_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn621:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn621]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n00233_disjunction_af
                                                                                        jmp   n00233_disjunction_as
n00251_call_builtin_icon_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00244_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx00252_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00253_scan_pos_α
.Lx00252_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00242_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00254_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx00255_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00256_scan_tab_α
.Lx00255_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00249_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00257_0
                        add              rax, r15
                        add              rax, 1
.Lx00257_0:
                        cmp              rax, 1
                                                                                        jl    n00235_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00235_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00235_scan_tab_β
                        mov              qword ptr [rbp + 2080], 6
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00258_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00254_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00259_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00260_call_builtin_α
.Lx00259_0:
                        .quad            .Lx00259_0_s
.Lx00259_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00256_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00261_0
                        add              rax, r15
                        add              rax, 1
.Lx00261_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00261_239
                        add              rsp, 16
                                                                                        jmp   n00233_disjunction_af
.Lx00261_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00261_240
                        add              rsp, 16
                                                                                        jmp   n00233_disjunction_af
.Lx00261_240:
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
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00250_binop_test_α
n00256_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00258_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00161_var_α
n00258_conjunction_β:
                                                                                        jmp   n00222_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn635:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n00262_lit_string_α
                                                                                        jmp   n00263_var_α
n00260_call_builtin_β:
                                                                                        jmp   n00262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00264_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00265_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00266_call_builtin_α
.Lx00265_0:
                        .quad            .Lx00265_0_s
.Lx00265_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00264_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn641:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00268_lit_string_α
                                                                                        jmp   n00269_disjunction_α
n00266_call_builtin_β:
                                                                                        jmp   n00268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00207_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00269_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00270_var_α
n00269_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00271_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00272_assign_α
.Lx00271_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00271_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00272_assign_α
.Lx00271_1:
                                                                                        jmp   n00272_assign_α
n00269_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00269_disjunction_af
                                                                                        jmp   n00269_disjunction_af
n00269_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00273_lit_string_α
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00268_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00274_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00275_call_builtin_α
.Lx00274_0:
                        .quad            .Lx00274_0_s
.Lx00274_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00272_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00270_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00276_call_builtin_icon_α
n00270_var_β:
                                                                                        jmp   n00269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00273_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00277_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00278_var_α
n00273_lit_string_β:
                                                                                        jmp   n00269_disjunction_af
.Lx00277_0:
                        .quad            .Lx00277_0_s
.Lx00277_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00276_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn652:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn652]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n00269_disjunction_af
                                                                                        jmp   n00269_disjunction_as
n00276_call_builtin_icon_β:
                                                                                        jmp   n00269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00279_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn654:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn654]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n00269_disjunction_af
                                                                                        jmp   n00269_disjunction_as
n00279_call_builtin_icon_β:
                                                                                        jmp   n00269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00275_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn656:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn656]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n00181_lit_integer_α
                                                                                        jmp   n00280_disjunction_α
n00275_call_builtin_β:
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00281_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00280_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00282_var_α
n00280_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00283_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00284_assign_α
.Lx00283_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00283_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00284_assign_α
.Lx00283_1:
                                                                                        jmp   n00284_assign_α
n00280_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00280_disjunction_af
                                                                                        jmp   n00280_disjunction_af
n00280_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00285_lit_string_α
                                                                                        jmp   n00181_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              dword ptr [rbp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00286_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00279_call_builtin_icon_α
.Lx00286_0:
                        .quad            .Lx00286_0_s
.Lx00286_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00284_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00267_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00287_call_builtin_icon_α
n00282_var_β:
                                                                                        jmp   n00280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00285_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00288_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00289_var_α
n00285_lit_string_β:
                                                                                        jmp   n00280_disjunction_af
.Lx00288_0:
                        .quad            .Lx00288_0_s
.Lx00288_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00287_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn667:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn667]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n00280_disjunction_af
                                                                                        jmp   n00280_disjunction_as
n00287_call_builtin_icon_β:
                                                                                        jmp   n00280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00290_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn669:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]
                        lea              rsi, [rbp + 768]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n00280_disjunction_af
                                                                                        jmp   n00280_disjunction_as
n00290_call_builtin_icon_β:
                                                                                        jmp   n00280_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00291_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00291_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              dword ptr [rbp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00292_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00290_call_builtin_icon_α
.Lx00292_0:
                        .quad            .Lx00292_0_s
.Lx00292_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2744]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        mov              rax, [rbp + 2752]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2736], r11
                        lea              rax, [rip + .Lx00293_2]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rax, [rip + .Lx00293_3]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2608
                        mov              edx, 2736
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_options_α_body
.Lx00293_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00293_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        .global          proc_Init___α
                        .global          proc_Init___β
                        .global          proc_Init___γ
                        .global          proc_Init___ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00295_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00296_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00296_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00297_2
.Lx00297_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n00298_call_proc_staged_α
                                                                                        jmp   n00298_call_proc_staged_α
n00296_call_proc_staged_β:
                                                                                        jmp   n00298_call_proc_staged_α
.Lx00297_0:
                        .quad            .Lx00297_0_s
.Lx00297_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00298_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00299_2
.Lx00299_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n00300_call_proc_staged_α
                                                                                        jmp   n00300_call_proc_staged_α
n00298_call_proc_staged_β:
                                                                                        jmp   n00300_call_proc_staged_α
.Lx00299_0:
                        .quad            .Lx00299_0_s
.Lx00299_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00300_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00301_2
.Lx00301_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00302_disjunction_α
                                                                                        jmp   n00302_disjunction_α
n00300_call_proc_staged_β:
                                                                                        jmp   n00302_disjunction_α
.Lx00301_0:
                        .quad            .Lx00301_0_s
.Lx00301_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00302_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00303_lit_string_α
n00302_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00304_0
                                                                                        jmp   n00305_var_α
.Lx00304_0:
                                                                                        jmp   n00305_var_α
n00302_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00305_var_α
n00302_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00305_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00306_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00306_240
                        add              rsp, 16
                                                                                        jmp   n00307_var_α
.Lx00306_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00308_assign_α
.Lx00306_0:
                        .quad            .Lx00306_0_s
.Lx00306_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              dword ptr [rbp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00309_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00310_call_builtin_icon_α
n00303_lit_string_β:
                                                                                        jmp   n00302_disjunction_af
.Lx00309_0:
                        .quad            .Lx00309_0_s
.Lx00309_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00311_conjunction_α:
                                                                                        jmp   n00302_disjunction_as
n00311_conjunction_β:
                                                                                        jmp   n00305_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00307_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00312_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00312_240
                        add              rsp, 16
                                                                                        jmp   n00313_lit_integer_α
.Lx00312_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00314_assign_α
.Lx00312_0:
                        .quad            .Lx00312_0_s
.Lx00312_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00310_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn711:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn711]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00302_disjunction_af
                                                                                        jmp   n00315_lit_string_α
n00310_call_builtin_icon_β:
                                                                                        jmp   n00302_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00313_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00313_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00316_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00317_assign_α
.Lx00316_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00315_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00318_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00319_call_builtin_icon_α
.Lx00318_0:
                        .quad            .Lx00318_0_s
.Lx00318_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00317_assign_α:
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              rdi, qword ptr [rip + .Lx00320_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00321_assign_α
.Lx00320_0:
                        .quad            .Lx00320_0_s
.Lx00320_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00319_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn717:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn717]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00322_return_α
                                                                                        jmp   n00322_return_α
n00319_call_builtin_icon_β:
                                                                                        jmp   n00322_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00321_assign_α:
                        mov              rsi, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rip + .Lx00323_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00324_return_α
.Lx00323_0:
                        .quad            .Lx00323_0_s
.Lx00323_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00322_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00324_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___β:
                                                                                        jmp   proc_Init___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx00325_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx00325_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 432
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Init___α_body
.Lx00325_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00325_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        .global          proc_Term___α
                        .global          proc_Term___β
                        .global          proc_Term___γ
                        .global          proc_Term___ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00326_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00327_lit_string_α
n00326_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00328_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00329_var_α
.Lx00328_0:
                                                                                        jmp   n00329_var_α
n00326_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00329_var_α
n00326_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00329_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00327_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              dword ptr [rbp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00331_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00332_call_builtin_icon_α
n00327_lit_string_β:
                                                                                        jmp   n00333_var_α
.Lx00331_0:
                        .quad            .Lx00331_0_s
.Lx00331_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00334_conjunction_α:
                                                                                        jmp   n00326_disjunction_as
n00334_conjunction_β:
                                                                                        jmp   n00329_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00330_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00335_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00336_call_proc_staged_α
.Lx00335_0:
                        .quad            .Lx00335_0_s
.Lx00335_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00337_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00338_2
.Lx00338_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00339_call_proc_staged_α
                                                                                        jmp   n00339_call_proc_staged_α
n00337_call_proc_staged_β:
                                                                                        jmp   n00339_call_proc_staged_α
.Lx00338_0:
                        .quad            .Lx00338_0_s
.Lx00338_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00332_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn748:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn748]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n00333_var_α
                                                                                        jmp   n00326_disjunction_af
n00332_call_builtin_icon_β:
                                                                                        jmp   n00333_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00336_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00340_2
.Lx00340_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00337_call_proc_staged_α
                                                                                        jmp   n00341_call_builtin_icon_α
n00336_call_proc_staged_β:
                                                                                        jmp   n00337_call_proc_staged_α
.Lx00340_0:
                        .quad            .Lx00340_0_s
.Lx00340_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00339_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00342_2
.Lx00342_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n00343_call_proc_staged_α
                                                                                        jmp   n00343_call_proc_staged_α
n00339_call_proc_staged_β:
                                                                                        jmp   n00343_call_proc_staged_α
.Lx00342_0:
                        .quad            .Lx00342_0_s
.Lx00342_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00344_var_α
n00333_var_β:
                                                                                        jmp   n00326_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00341_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn755:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn755]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n00337_call_proc_staged_α
                                                                                        jmp   n00337_call_proc_staged_α
n00341_call_builtin_icon_β:
                                                                                        jmp   n00337_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00345_2
.Lx00345_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00346_return_α
                                                                                        jmp   n00346_return_α
n00343_call_proc_staged_β:
                                                                                        jmp   n00346_return_α
.Lx00345_0:
                        .quad            .Lx00345_0_s
.Lx00345_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00344_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00347_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
n00347_assign_α:
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              rdi, qword ptr [rip + .Lx00348_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00349_var_α
.Lx00348_0:
                        .quad            .Lx00348_0_s
.Lx00348_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00349_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00350_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00350_assign_α:
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              rdi, qword ptr [rip + .Lx00351_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00334_conjunction_α
.Lx00351_0:
                        .quad            .Lx00351_0_s
.Lx00351_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx00352_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx00352_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, rbp
                        mov              esi, 448
                        mov              edx, 480
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Term___α_body
.Lx00352_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00352_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        .global          proc_Collections___α
                        .global          proc_Collections___β
                        .global          proc_Collections___γ
                        .global          proc_Collections___ω
                        sub              rsp, 944
                        mov              [rsp + 920], rcx
                        mov              [rsp + 928], rdx
                        mov              [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 912
                        call             rt_jmp_frame_lexprep2@PLT
proc_Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00353_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00354_var_ref_α
n00353_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00355_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00356_make_list_α
.Lx00355_0:
                                                                                        jmp   n00356_make_list_α
n00353_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00356_make_list_α
n00353_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00356_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00356_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00357_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00354_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052512
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00358_nulltest_var_α
n00354_var_ref_β:
                                                                                        jmp   n00353_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00359_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00353_disjunction_as
n00359_assign_β:
                                                                                        jmp   n00356_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 99
                                                                                        je    n00353_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00353_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00353_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00361_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00362_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00361_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx00363_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00364_assign_var_α
.Lx00363_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00362_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00365_1:
                        mov              rdi, qword ptr [rip + .Lx00365_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00366_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00367_call_builtin_icon_α
n00362_keyword_icon_gen_β:
                                                                                        jmp   .Lx00365_1
.Lx00365_0:
                        .quad            .Lx00365_0_s
.Lx00365_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00366_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00368_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00369_call_builtin_icon_α
.Lx00368_0:
                        .quad            .Lx00368_0_s
.Lx00368_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00364_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00353_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn817:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn817]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00362_keyword_icon_gen_β
                                                                                        jmp   n00362_keyword_icon_gen_β
n00367_call_builtin_icon_β:
                                                                                        jmp   n00362_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00369_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn819:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn819]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00371_lit_integer_α
                                                                                        jmp   n00371_lit_integer_α
n00369_call_builtin_icon_β:
                                                                                        jmp   n00371_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00372_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00373_lit_string_α
.Lx00372_0:
                        .quad            .Lx00372_0_s
.Lx00372_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00371_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00374_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00375_var_α
.Lx00374_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00373_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00376_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00377_lit_string_α
.Lx00376_0:
                        .quad            .Lx00376_0_s
.Lx00376_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00375_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00378_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00377_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00379_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00380_lit_string_α
.Lx00379_0:
                        .quad            .Lx00379_0_s
.Lx00379_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00378_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00381_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00380_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              dword ptr [rbp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00384_make_list_α
.Lx00383_0:
                        .quad            .Lx00383_0_s
.Lx00383_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00381_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00385_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00382_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00386_assign_α
n00381_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00385_0
#-----------------------------------------------------------------------------------------------------------------------
n00384_make_list_α:
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
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00359_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00387_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00388_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00390_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00391_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00392_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00381_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00392_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00391_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00393_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00395_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00395_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00391_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00396_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00391_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00397_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00397_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00398_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00399_call_builtin_icon_α
.Lx00398_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00399_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn851:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn851]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00391_unmark_α
                                                                                        jmp   n00400_call_builtin_icon_α
n00399_call_builtin_icon_β:
                                                                                        jmp   n00391_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00400_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn853:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn853]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00391_unmark_α
                                                                                        jmp   n00391_unmark_α
n00400_call_builtin_icon_β:
                                                                                        jmp   n00391_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 920]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        mov              rax, [rbp + 928]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 912], r11
                        lea              rax, [rip + .Lx00401_2]
                        mov              qword ptr [rbp + 920], rax
                        lea              rax, [rip + .Lx00401_3]
                        mov              qword ptr [rbp + 928], rax
                        mov              rdi, rbp
                        mov              esi, 880
                        mov              edx, 912
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Collections___α_body
.Lx00401_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00401_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        .global          proc_Regions___α
                        .global          proc_Regions___β
                        .global          proc_Regions___γ
                        .global          proc_Regions___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00402_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00403_var_ref_α
n00402_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00404_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00405_make_list_α
.Lx00404_0:
                                                                                        jmp   n00405_make_list_α
n00402_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00405_make_list_α
n00402_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00405_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00405_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00406_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052544
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00407_nulltest_var_α
n00403_var_ref_β:
                                                                                        jmp   n00402_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00408_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00402_disjunction_as
n00408_assign_β:
                                                                                        jmp   n00405_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00407_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00402_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00402_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00402_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00409_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00411_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00410_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00412_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00413_assign_var_α
.Lx00412_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00411_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00414_1:
                        mov              rdi, qword ptr [rip + .Lx00414_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00415_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00416_call_builtin_icon_α
n00411_keyword_icon_gen_β:
                                                                                        jmp   .Lx00414_1
.Lx00414_0:
                        .quad            .Lx00414_0_s
.Lx00414_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00415_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00417_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00418_call_builtin_icon_α
.Lx00417_0:
                        .quad            .Lx00417_0_s
.Lx00417_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00413_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00402_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00419_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn907:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn907]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00411_keyword_icon_gen_β
                                                                                        jmp   n00411_keyword_icon_gen_β
n00416_call_builtin_icon_β:
                                                                                        jmp   n00411_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00418_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn909:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn909]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00420_lit_integer_α
                                                                                        jmp   n00420_lit_integer_α
n00418_call_builtin_icon_β:
                                                                                        jmp   n00420_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00419_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00421_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00422_lit_string_α
.Lx00421_0:
                        .quad            .Lx00421_0_s
.Lx00421_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00420_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00423_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00424_var_α
.Lx00423_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00422_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00425_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00426_lit_string_α
.Lx00425_0:
                        .quad            .Lx00425_0_s
.Lx00425_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00424_var_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00427_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00426_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00428_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00429_make_list_α
.Lx00428_0:
                        .quad            .Lx00428_0_s
.Lx00428_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00427_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00430_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00431_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00429_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00408_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00432_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00431_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00433_assign_α
n00430_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00432_0
#-----------------------------------------------------------------------------------------------------------------------
n00433_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00434_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00434_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00435_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00435_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052528
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00436_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00437_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00437_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00438_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00439_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00430_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00439_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00438_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00440_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00440_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00441_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00442_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00442_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00438_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00443_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00443_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00438_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00444_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00444_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00445_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00446_call_builtin_icon_α
.Lx00445_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00446_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn940:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn940]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00438_unmark_α
                                                                                        jmp   n00447_call_builtin_icon_α
n00446_call_builtin_icon_β:
                                                                                        jmp   n00438_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00447_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn942:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn942]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00438_unmark_α
                                                                                        jmp   n00438_unmark_α
n00447_call_builtin_icon_β:
                                                                                        jmp   n00438_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00448_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00448_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Regions___α_body
.Lx00448_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00448_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        .global          proc_Signature___α
                        .global          proc_Signature___β
                        .global          proc_Signature___γ
                        .global          proc_Signature___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00449_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00450_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00451_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00452_call_builtin_icon_α
n00449_keyword_icon_β:
                                                                                        jmp   n00451_keyword_icon_α
.Lx00450_0:
                        .quad            .Lx00450_0_s
.Lx00450_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00452_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn953:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn953]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n00451_keyword_icon_α
                                                                                        jmp   n00451_keyword_icon_α
n00452_call_builtin_icon_β:
                                                                                        jmp   n00451_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00451_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00453_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00454_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00455_call_builtin_icon_α
n00451_keyword_icon_β:
                                                                                        jmp   n00454_keyword_icon_gen_α
.Lx00453_0:
                        .quad            .Lx00453_0_s
.Lx00453_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00455_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn956:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn956]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n00454_keyword_icon_gen_α
                                                                                        jmp   n00454_keyword_icon_gen_α
n00455_call_builtin_icon_β:
                                                                                        jmp   n00454_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00456_1:
                        mov              rdi, qword ptr [rip + .Lx00456_0]
                        mov              rsi, qword ptr [rbp + 80]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00457_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00458_call_builtin_icon_α
n00454_keyword_icon_gen_β:
                                                                                        jmp   .Lx00456_1
.Lx00456_0:
                        .quad            .Lx00456_0_s
.Lx00456_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00458_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn959:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn959]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00454_keyword_icon_gen_β
                                                                                        jmp   n00454_keyword_icon_gen_β
n00458_call_builtin_icon_β:
                                                                                        jmp   n00454_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00457_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___β:
                                                                                        jmp   proc_Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00459_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00459_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Signature___α_body
.Lx00459_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00459_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        .global          proc_Storage___α
                        .global          proc_Storage___β
                        .global          proc_Storage___γ
                        .global          proc_Storage___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00460_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00461_var_ref_α
n00460_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00462_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00463_make_list_α
.Lx00462_0:
                                                                                        jmp   n00463_make_list_α
n00460_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00463_make_list_α
n00460_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00463_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00463_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00464_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00461_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052576
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00465_nulltest_var_α
n00461_var_ref_β:
                                                                                        jmp   n00460_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00466_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00460_disjunction_as
n00466_assign_β:
                                                                                        jmp   n00463_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00464_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00467_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00460_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00460_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00460_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00468_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00469_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00470_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00471_assign_var_α
.Lx00470_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00469_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00472_1:
                        mov              rdi, qword ptr [rip + .Lx00472_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00473_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00474_call_builtin_icon_α
n00469_keyword_icon_gen_β:
                                                                                        jmp   .Lx00472_1
.Lx00472_0:
                        .quad            .Lx00472_0_s
.Lx00472_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00473_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00475_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00476_call_builtin_icon_α
.Lx00475_0:
                        .quad            .Lx00475_0_s
.Lx00475_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00471_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00460_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00477_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1014:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1014]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00469_keyword_icon_gen_β
                                                                                        jmp   n00469_keyword_icon_gen_β
n00474_call_builtin_icon_β:
                                                                                        jmp   n00469_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00476_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1016:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1016]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00478_lit_integer_α
                                                                                        jmp   n00478_lit_integer_α
n00476_call_builtin_icon_β:
                                                                                        jmp   n00478_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00479_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00480_lit_string_α
.Lx00479_0:
                        .quad            .Lx00479_0_s
.Lx00479_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00478_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00481_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00482_var_α
.Lx00481_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00480_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00483_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00484_lit_string_α
.Lx00483_0:
                        .quad            .Lx00483_0_s
.Lx00483_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00482_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00485_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00486_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00487_make_list_α
.Lx00486_0:
                        .quad            .Lx00486_0_s
.Lx00486_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00485_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00488_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00487_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00466_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00490_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00489_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00491_assign_α
n00488_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00490_0
#-----------------------------------------------------------------------------------------------------------------------
n00491_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00492_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00492_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00493_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00493_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052560
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00494_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00495_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00496_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00497_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00496_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00488_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00497_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00496_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00498_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00499_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00499_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00500_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00500_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00496_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00501_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00501_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00496_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00502_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00502_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00503_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00504_call_builtin_icon_α
.Lx00503_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00504_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1047:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1047]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00496_unmark_α
                                                                                        jmp   n00505_call_builtin_icon_α
n00504_call_builtin_icon_β:
                                                                                        jmp   n00496_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1049:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00496_unmark_α
                                                                                        jmp   n00496_unmark_α
n00505_call_builtin_icon_β:
                                                                                        jmp   n00496_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00506_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00506_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Storage___α_body
.Lx00506_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00506_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        .global          proc_Time___α
                        .global          proc_Time___β
                        .global          proc_Time___γ
                        .global          proc_Time___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00507_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00508_var_ref_α
n00507_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00509_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00510_keyword_icon_α
.Lx00509_0:
                                                                                        jmp   n00510_keyword_icon_α
n00507_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00510_keyword_icon_α
n00507_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00510_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00510_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00511_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00512_var_α
n00510_keyword_icon_β:
                                                                                        jmp   proc_Time___ω
.Lx00511_0:
                        .quad            .Lx00511_0_s
.Lx00511_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00508_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052608
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00513_nulltest_var_α
n00508_var_ref_β:
                                                                                        jmp   n00507_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00514_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052592], rax
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00507_disjunction_as
n00514_assign_β:
                                                                                        jmp   n00510_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_var_α:
                        mov              rax, qword ptr [1879052592]
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00515_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00513_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 99
                                                                                        je    n00507_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00507_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00507_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00516_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00515_op75_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx00517_1
                        cmp              eax, 6
                                                                                        jne   .Lx00517_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx00517_0
.Lx00517_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00518_op75_α
.Lx00517_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00518_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx00519_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00520_assign_var_α
.Lx00519_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00518_op75_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx00521_1
                        cmp              eax, 6
                                                                                        jne   .Lx00521_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx00521_0
.Lx00521_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00522_binop_α
.Lx00521_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00522_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00507_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00523_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx00524_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx00524_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00525_return_α
.Lx00524_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00525_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00523_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00526_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00510_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00514_assign_α
n00523_keyword_icon_β:
                                                                                        jmp   n00510_keyword_icon_α
.Lx00526_0:
                        .quad            .Lx00526_0_s
.Lx00526_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00525_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00527_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00527_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Time___α_body
.Lx00527_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00527_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "q"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_q_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_q_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1232
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_options_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_options_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_Init___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_Init___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Term___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Term___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Collections___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Collections___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Regions___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Regions___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Signature___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Signature___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Storage___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Storage___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Time___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Time___dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "n"
.Lgvan1:                .string          "solution"
.Lgvan2:                .string          "Save__"
.Lgvan3:                .string          "Saves__"
.Lgvan4:                .string          "Name__"
.Lgvan5:                .string          "q__STATIC__up"
.Lgvan6:                .string          "q__STATIC__down"
.Lgvan7:                .string          "q__STATIC__rows"
.Lgvan8:                .string          "q__INITFLAG__0"
.Lgvan9:                .string          "show__STATIC__count"
.Lgvan10:               .string          "show__STATIC__line"
.Lgvan11:               .string          "show__STATIC__border"
.Lgvan12:               .string          "show__INITFLAG__0"
.Lgvan13:               .string          "Collections____STATIC__labels"
.Lgvan14:               .string          "Collections____INITFLAG__0"
.Lgvan15:               .string          "Regions____STATIC__labels"
.Lgvan16:               .string          "Regions____INITFLAG__0"
.Lgvan17:               .string          "Storage____STATIC__labels"
.Lgvan18:               .string          "Storage____INITFLAG__0"
.Lgvan19:               .string          "Time____STATIC__lasttime"
.Lgvan20:               .string          "Time____INITFLAG__0"
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
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 21
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 21
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
n00528_call_proc_staged_α:
                        mov              edi, 3
                        call             rt_proc_call_open_det0@PLT
                        test             rax, rax
                                                                                        je    .Lx00529_1
                        lea              rcx, [rip + .Lx00529_3]
                        lea              rdx, [rip + .Lx00529_4]
                                                                                        jmp   rax
.Lx00529_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00529_2
.Lx00529_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00529_2
.Lx00529_1:
                        call             rt_faildescr@PLT
.Lx00529_2:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n00530_var_α
                                                                                        jmp   n00530_var_α
n00528_call_proc_staged_β:
                                                                                        jmp   n00530_var_α
.Lx00529_0:
                        .quad            .Lx00529_0_s
.Lx00529_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00530_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00531_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00531_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], 2
                        mov              rax, qword ptr [rip + .Lx00532_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00533_call_proc_staged_α
.Lx00532_0:
                        .quad            .Lx00532_0_s
.Lx00532_0_s:
                        .string          "n+"
#-----------------------------------------------------------------------------------------------------------------------
n00534_disjunction_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   n00535_var_ref_α
n00534_disjunction_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx00536_0
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00537_assign_α
.Lx00536_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00536_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00537_assign_α
.Lx00536_1:
                                                                                        jmp   n00537_assign_α
n00534_disjunction_β:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        je    n00534_disjunction_af
                                                                                        jmp   n00534_disjunction_af
n00534_disjunction_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 1
                                                                                        je    n00538_lit_integer_α
                                                                                        jmp   n00539_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_call_proc_staged_α:
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 656]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00540_2
.Lx00540_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n00534_disjunction_α
                                                                                        jmp   n00541_assign_α
n00533_call_proc_staged_β:
                                                                                        jmp   n00534_disjunction_α
.Lx00540_0:
                        .quad            .Lx00540_0_s
.Lx00540_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00537_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00539_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00535_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00542_lit_string_α
n00535_var_ref_β:
                                                                                        jmp   n00534_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00538_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx00543_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00534_disjunction_as
n00538_lit_integer_β:
                                                                                        jmp   n00534_disjunction_af
.Lx00543_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n00544_unop_test_α:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 99
                                                                                        je    n00534_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00534_disjunction_af
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00534_disjunction_as
n00544_unop_test_β:
                                                                                        jmp   n00534_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00541_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00534_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00539_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n00545_var_α
n00539_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx00546_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00547_var_α
.Lx00546_0:
                                                                                        jmp   n00547_var_α
n00539_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n00547_var_α
n00539_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n00547_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00542_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Lx00548_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00549_subscript_α
.Lx00548_0:
                        .quad            .Lx00548_0_s
.Lx00548_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00547_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00550_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00545_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00551_lit_integer_α
n00545_var_β:
                                                                                        jmp   n00539_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00552_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn1131:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1131]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n00547_var_α
                                                                                        jmp   n00539_disjunction_as
n00552_call_builtin_icon_β:
                                                                                        jmp   n00547_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00549_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00534_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00553_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn1134:             .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1134]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n00554_var_α
                                                                                        jmp   n00555_assign_α
n00550_call_builtin_icon_β:
                                                                                        jmp   n00554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00556_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx00557_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00558_binop_test_α
.Lx00557_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00553_deref_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00534_disjunction_af
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00544_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00555_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              dword ptr [rbp + 212], 8
                        mov              rax, qword ptr [rip + .Lx00559_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00560_call_builtin_icon_α
.Lx00559_0:
                        .quad            .Lx00559_0_s
.Lx00559_0_s:
                        .string          "-Queens:"
#-----------------------------------------------------------------------------------------------------------------------
n00561_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx00562_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00563_call_proc_staged_α
.Lx00562_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00558_binop_test_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 100
                                                                                        je    .Lx00564_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 100
                                                                                        je    .Lx00564_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 6
                                                                                        jne   .Lx00564_2
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx00564_2
.Lx00564_1:
                        mov              rax, qword ptr [rbp + 424]
                        mov              rcx, qword ptr [rbp + 440]
                        cmp              rax, rcx
                                                                                        jg    n00539_disjunction_af
                        mov              rcx, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rcx
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rcx
                                                                                        jmp   n00565_lit_string_α
.Lx00564_0:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              r8d, 6
                        lea              r9, [rbp + 400]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00564_1
                        cmp              eax, 1
                                                                                        je    n00539_disjunction_af
                                                                                        jmp   n00565_lit_string_α
.Lx00564_2:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00539_disjunction_af
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00560_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1143:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1143]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n00561_lit_integer_α
                                                                                        jmp   n00561_lit_integer_α
n00560_call_builtin_icon_β:
                                                                                        jmp   n00561_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00563_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        call             proc_q_dcα
                                                                                        jmp   .Lx00566_2
.Lx00566_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n00567_call_proc_staged_α
                                                                                        jmp   n00567_call_proc_staged_α
n00563_call_proc_staged_β:
                                                                                        jmp   n00567_call_proc_staged_α
.Lx00566_0:
                        .quad            .Lx00566_0_s
.Lx00566_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00565_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              dword ptr [rbp + 388], 37
                        mov              rax, qword ptr [rip + .Lx00568_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00552_call_builtin_icon_α
.Lx00568_0:
                        .quad            .Lx00568_0_s
.Lx00568_0_s:
                        .string          "-n needs a positive numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00567_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx00569_2
.Lx00569_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n00567_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00569_0:
                        .quad            .Lx00569_0_s
.Lx00569_0_s:
                        .string          "Term__"
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
