                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q_α
proc_q_α:
proc_q_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              dword ptr [rbp + 1488], 0
                                                                                        jmp   n1_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n30_lit_integer_α
.Lx112_0:
                                                                                        jmp   n30_lit_integer_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 1488]
                                                                                        jmp   n30_lit_integer_α
n0_disjunction_af:
                        add              dword ptr [rbp + 1488], 1
                        mov              eax, dword ptr [rbp + 1488]
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052368                                # q__INITFLAG__0
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n2_nulltest_var_α
n1_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 2032]                    # d
                        mov              rsi, qword ptr [rbp + 2040]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 3                      # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n4_assign_var_α
.Lx116_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2048]                    # var
                        mov              rsi, qword ptr [rbp + 2056]                    # var
                        mov              rdx, qword ptr [rbp + 2080]                    # val
                        mov              rcx, qword ptr [rbp + 2088]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n5_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n6_var_α
.Lx118_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1984], rax                    # result
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n7_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n7_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 5
                                                                                        je    .Lx121_1
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 3
                                                                                        jne   .Lx121_0
.Lx121_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n8_binop_α
.Lx121_0:
                        lea              rdi, [rbp + 1984]                              # self
                        lea              rsi, [rbp + 1968]                              # other
                        lea              rdx, [rbp + 1952]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n8_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 3
                                                                                        jne   .Lx122_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 1960]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1936], 3
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n9_lit_integer_α
.Lx122_0:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 2000], 3                      # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n10_coerce_numeric_α
.Lx123_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 5
                                                                                        je    .Lx125_1
                        cmp              eax, 3
                                                                                        jne   .Lx125_0
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 3
                                                                                        jne   .Lx125_0
.Lx125_1:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n11_binop_α
.Lx125_0:
                        lea              rdi, [rbp + 1936]                              # self
                        lea              rsi, [rbp + 2000]                              # other
                        lea              rdx, [rbp + 1920]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n11_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx126_0
                        mov              rax, qword ptr [rbp + 1928]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1904], 3
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n12_lit_integer_α
.Lx126_0:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 3                      # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx127_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn129:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]                         # fn
                        lea              rsi, [rbp + 1856]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    n15_lit_integer_α
                                                                                        jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [1879052320], rax                    # q__STATIC__up
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n16_var_α
.Lx131_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1792], rax                    # result
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 5
                                                                                        je    .Lx134_1
                        cmp              eax, 3
                                                                                        jne   .Lx134_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 3
                                                                                        jne   .Lx134_0
.Lx134_1:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n18_binop_α
.Lx134_0:
                        lea              rdi, [rbp + 1792]                              # self
                        lea              rsi, [rbp + 1776]                              # other
                        lea              rdx, [rbp + 1760]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 3
                                                                                        jne   .Lx135_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 1768]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1744], 3
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n19_lit_integer_α
.Lx135_0:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n25_var_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 3                      # result
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n20_coerce_numeric_α
.Lx136_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 5
                                                                                        je    .Lx138_1
                        cmp              eax, 3
                                                                                        jne   .Lx138_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx138_0
.Lx138_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n21_binop_α
.Lx138_0:
                        lea              rdi, [rbp + 1744]                              # self
                        lea              rsi, [rbp + 1808]                              # other
                        lea              rdx, [rbp + 1728]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n21_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 3
                                                                                        jne   .Lx139_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1712], 3
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n22_lit_integer_α
.Lx139_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n25_var_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 3                      # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n23_call_builtin_icon_α
.Lx140_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn142:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]                         # fn
                        lea              rsi, [rbp + 1664]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    n25_var_α
                                                                                        jmp   n24_assign_α
n23_call_builtin_icon_β:
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [1879052336], rax                    # q__STATIC__down
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1600], rax                    # result
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 1616], 3                      # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx145_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn147:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]                         # fn
                        lea              rsi, [rbp + 1552]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 104
                                                                                        je    n30_lit_integer_α
                                                                                        jmp   n28_assign_α
n27_call_builtin_icon_β:
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [1879052352], rax                    # q__STATIC__rows
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n29_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n29_conjunction_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n0_disjunction_as
n29_conjunction_β:
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n31_var_ref_α
.Lx150_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352                                # q__STATIC__rows
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n33_var_α
.Lx153_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 688], rax                     # result
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n34_to_α
#-----------------------------------------------------------------------------------------------------------------------
n34_to_α:
                        mov              rdi, qword ptr [rbp + 672]                     # v
                        mov              rsi, qword ptr [rbp + 680]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                        mov              rdi, qword ptr [rbp + 688]                     # v
                        mov              rsi, qword ptr [rbp + 696]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 688], 3
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 656], rax
.Lx156_0:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 696]
                        cmp              rax, rcx
                                                                                        jle   .Lx156_240
                        add              rsp, 2016
                                                                                        jmp   proc_q_ω
.Lx156_240:
                        mov              qword ptr [rbp + 640], 3
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n35_assign_α
n34_to_β:
                        inc              qword ptr [rbp + 656]
                                                                                        jmp   .Lx156_0
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n36_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n36_subscript_α:
                        mov              rdi, qword ptr [rbp + 608]                     # base
                        mov              rsi, qword ptr [rbp + 616]                     # base
                        mov              rdx, qword ptr [rbp + 624]                     # idx
                        mov              rcx, qword ptr [rbp + 632]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n37_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_deref_α:
                        mov              rdi, qword ptr [rbp + 704]                     # d
                        mov              rsi, qword ptr [rbp + 712]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n38_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 112
                                                                                        je    .Lx160_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 112
                                                                                        je    .Lx160_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx160_2
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx160_2
.Lx160_1:
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jne   n34_to_β
                        mov              rcx, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rcx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rcx
                                                                                        jmp   n39_var_ref_α
.Lx160_0:
                        mov              rdi, qword ptr [rbp + 592]                     # a
                        mov              rsi, qword ptr [rbp + 600]                     # a
                        mov              rdx, qword ptr [rbp + 720]                     # b
                        mov              rcx, qword ptr [rbp + 728]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 576]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx160_1
                        cmp              eax, 1
                                                                                        je    n34_to_β
                                                                                        jmp   n39_var_ref_α
.Lx160_2:
                        mov              rdi, qword ptr [rbp + 592]                     # lhs
                        mov              rsi, qword ptr [rbp + 600]                     # lhs
                        mov              rdx, qword ptr [rbp + 720]                     # rhs
                        mov              rcx, qword ptr [rbp + 728]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n34_to_β
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320                                # q__STATIC__up
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 848], rax                     # result
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n42_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 5
                                                                                        je    .Lx167_1
                        cmp              eax, 3
                                                                                        jne   .Lx167_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 3
                                                                                        jne   .Lx167_0
.Lx167_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n43_coerce_numeric_α
.Lx167_0:
                        lea              rdi, [rbp + 848]                               # self
                        lea              rsi, [rbp + 2096]                              # other
                        lea              rdx, [rbp + 832]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n43_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 5
                                                                                        je    .Lx169_1
                        cmp              eax, 3
                                                                                        jne   .Lx169_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 3
                                                                                        jne   .Lx169_0
.Lx169_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n44_binop_α
.Lx169_0:
                        lea              rdi, [rbp + 2096]                              # self
                        lea              rsi, [rbp + 848]                               # other
                        lea              rdx, [rbp + 816]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n44_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 3
                                                                                        jne   .Lx170_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 3
                                                                                        jne   .Lx170_0
                        mov              rax, qword ptr [rbp + 840]
                        mov              rcx, qword ptr [rbp + 824]
                        add              rax, rcx
                        mov              qword ptr [rbp + 800], 3
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n45_var_α
.Lx170_0:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n46_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 5
                                                                                        je    .Lx174_1
                        cmp              eax, 3
                                                                                        jne   .Lx174_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx174_0
.Lx174_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n47_coerce_numeric_α
.Lx174_0:
                        lea              rdi, [rbp + 800]                               # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 784]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n47_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx176_1
                        cmp              eax, 3
                                                                                        jne   .Lx176_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 3
                                                                                        jne   .Lx176_0
.Lx176_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n48_binop_α
.Lx176_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 800]                               # other
                        lea              rdx, [rbp + 768]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n48_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 3
                                                                                        jne   .Lx177_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 3
                                                                                        jne   .Lx177_0
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 776]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n49_subscript_α
.Lx177_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n49_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:
                        mov              rdi, qword ptr [rbp + 736]                     # base
                        mov              rsi, qword ptr [rbp + 744]                     # base
                        mov              rdx, qword ptr [rbp + 752]                     # idx
                        mov              rcx, qword ptr [rbp + 760]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n50_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:
                        mov              rdi, qword ptr [rbp + 896]                     # d
                        mov              rsi, qword ptr [rbp + 904]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n51_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 112
                                                                                        je    .Lx180_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 112
                                                                                        je    .Lx180_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx180_2
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx180_2
.Lx180_1:
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 920]
                        cmp              rax, rcx
                                                                                        jne   n34_to_β
                        mov              rcx, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rcx
                                                                                        jmp   n52_var_ref_α
.Lx180_0:
                        mov              rdi, qword ptr [rbp + 576]                     # a
                        mov              rsi, qword ptr [rbp + 584]                     # a
                        mov              rdx, qword ptr [rbp + 912]                     # b
                        mov              rcx, qword ptr [rbp + 920]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 560]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx180_1
                        cmp              eax, 1
                                                                                        je    n34_to_β
                                                                                        jmp   n52_var_ref_α
.Lx180_2:
                        mov              rdi, qword ptr [rbp + 576]                     # lhs
                        mov              rsi, qword ptr [rbp + 584]                     # lhs
                        mov              rdx, qword ptr [rbp + 912]                     # rhs
                        mov              rcx, qword ptr [rbp + 920]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n34_to_β
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336                                # q__STATIC__down
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
                                                                                        jmp   n55_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 5
                                                                                        je    .Lx188_1
                        cmp              eax, 3
                                                                                        jne   .Lx188_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx188_0
.Lx188_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n56_coerce_numeric_α
.Lx188_0:
                        lea              rdi, [rbp + 2096]                              # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1008]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n56_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx190_1
                        cmp              eax, 3
                                                                                        jne   .Lx190_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 3
                                                                                        jne   .Lx190_0
.Lx190_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n57_binop_α
.Lx190_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 2096]                              # other
                        lea              rdx, [rbp + 992]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n57_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx191_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 3
                                                                                        jne   .Lx191_0
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 1000]
                        add              rax, rcx
                        mov              qword ptr [rbp + 976], 3
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n58_lit_integer_α
.Lx191_0:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 3                      # result
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n59_coerce_numeric_α
.Lx192_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 5
                                                                                        je    .Lx194_1
                        cmp              eax, 3
                                                                                        jne   .Lx194_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 3
                                                                                        jne   .Lx194_0
.Lx194_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n60_binop_α
.Lx194_0:
                        lea              rdi, [rbp + 976]                               # self
                        lea              rsi, [rbp + 1056]                              # other
                        lea              rdx, [rbp + 960]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n60_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 3
                                                                                        jne   .Lx195_0
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n61_subscript_α
.Lx195_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:
                        mov              rdi, qword ptr [rbp + 928]                     # base
                        mov              rsi, qword ptr [rbp + 936]                     # base
                        mov              rdx, qword ptr [rbp + 944]                     # idx
                        mov              rcx, qword ptr [rbp + 952]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:
                        mov              rdi, qword ptr [rbp + 1072]                    # d
                        mov              rsi, qword ptr [rbp + 1080]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n63_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 112
                                                                                        je    .Lx198_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 112
                                                                                        je    .Lx198_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 3
                                                                                        jne   .Lx198_2
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 3
                                                                                        jne   .Lx198_2
.Lx198_1:
                        mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 1096]
                        cmp              rax, rcx
                                                                                        jne   n34_to_β
                        mov              rcx, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rcx
                                                                                        jmp   n64_var_ref_α
.Lx198_0:
                        mov              rdi, qword ptr [rbp + 560]                     # a
                        mov              rsi, qword ptr [rbp + 568]                     # a
                        mov              rdx, qword ptr [rbp + 1088]                    # b
                        mov              rcx, qword ptr [rbp + 1096]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 544]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx198_1
                        cmp              eax, 1
                                                                                        je    n34_to_β
                                                                                        jmp   n64_var_ref_α
.Lx198_2:
                        mov              rdi, qword ptr [rbp + 560]                     # lhs
                        mov              rsi, qword ptr [rbp + 568]                     # lhs
                        mov              rdx, qword ptr [rbp + 1088]                    # rhs
                        mov              rcx, qword ptr [rbp + 1096]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n34_to_β
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352                                # q__STATIC__rows
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
                        mov              rdi, qword ptr [rbp + 48]                      # base
                        mov              rsi, qword ptr [rbp + 56]                      # base
                        mov              rdx, qword ptr [rbp + 64]                      # idx
                        mov              rcx, qword ptr [rbp + 72]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052320                                # q__STATIC__up
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n68_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 240], rax                     # result
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n70_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 5
                                                                                        je    .Lx210_1
                        cmp              eax, 3
                                                                                        jne   .Lx210_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 3
                                                                                        jne   .Lx210_0
.Lx210_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n71_coerce_numeric_α
.Lx210_0:
                        lea              rdi, [rbp + 240]                               # self
                        lea              rsi, [rbp + 2096]                              # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n71_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 5
                                                                                        je    .Lx212_1
                        cmp              eax, 3
                                                                                        jne   .Lx212_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx212_0
.Lx212_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n72_binop_α
.Lx212_0:
                        lea              rdi, [rbp + 2096]                              # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n72_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx213_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx213_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 216]
                        add              rax, rcx
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n73_var_α
.Lx213_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n74_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 5
                                                                                        je    .Lx217_1
                        cmp              eax, 3
                                                                                        jne   .Lx217_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx217_0
.Lx217_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n75_coerce_numeric_α
.Lx217_0:
                        lea              rdi, [rbp + 192]                               # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 176]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx219_1
                        cmp              eax, 3
                                                                                        jne   .Lx219_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx219_0
.Lx219_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n76_binop_α
.Lx219_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 192]                               # other
                        lea              rdx, [rbp + 160]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n76_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 3
                                                                                        jne   .Lx220_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx220_0
                        mov              rax, qword ptr [rbp + 184]
                        mov              rcx, qword ptr [rbp + 168]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n77_subscript_α
.Lx220_0:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n77_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n77_subscript_α:
                        mov              rdi, qword ptr [rbp + 128]                     # base
                        mov              rsi, qword ptr [rbp + 136]                     # base
                        mov              rdx, qword ptr [rbp + 144]                     # idx
                        mov              rcx, qword ptr [rbp + 152]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052336                                # q__STATIC__down
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
                                                                                        jmp   n81_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 5
                                                                                        je    .Lx229_1
                        cmp              eax, 3
                                                                                        jne   .Lx229_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx229_0
.Lx229_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n82_coerce_numeric_α
.Lx229_0:
                        lea              rdi, [rbp + 2096]                              # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 416]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n82_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx231_1
                        cmp              eax, 3
                                                                                        jne   .Lx231_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 3
                                                                                        jne   .Lx231_0
.Lx231_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n83_binop_α
.Lx231_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 2096]                              # other
                        lea              rdx, [rbp + 400]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n83_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx232_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx232_0
                        mov              rax, qword ptr [rbp + 424]
                        mov              rcx, qword ptr [rbp + 408]
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n84_lit_integer_α
.Lx232_0:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n85_coerce_numeric_α
.Lx233_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 5
                                                                                        je    .Lx235_1
                        cmp              eax, 3
                                                                                        jne   .Lx235_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx235_0
.Lx235_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n86_binop_α
.Lx235_0:
                        lea              rdi, [rbp + 384]                               # self
                        lea              rsi, [rbp + 464]                               # other
                        lea              rdx, [rbp + 368]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n86_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 3
                                                                                        jne   .Lx236_0
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n87_subscript_α
.Lx236_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n87_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n87_subscript_α:
                        mov              rdi, qword ptr [rbp + 336]                     # base
                        mov              rsi, qword ptr [rbp + 344]                     # base
                        mov              rdx, qword ptr [rbp + 352]                     # idx
                        mov              rcx, qword ptr [rbp + 360]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n89_rev_assign_var_α
.Lx238_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 480]                     # d
                        mov              rsi, qword ptr [rbp + 488]                     # d
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        mov              rdi, qword ptr [rbp + 480]                     # var
                        mov              rsi, qword ptr [rbp + 488]                     # var
                        mov              rdx, qword ptr [rbp + 528]                     # val
                        mov              rcx, qword ptr [rbp + 536]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n34_to_β
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n90_rev_assign_var_α
n89_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 480]                     # var
                        mov              rsi, qword ptr [rbp + 488]                     # var
                        mov              rdx, qword ptr [rbp + 512]                     # val
                        mov              rcx, qword ptr [rbp + 520]                     # val
                        call             rt_assign_var@PLT
                                                                                        jmp   n34_to_β
#-----------------------------------------------------------------------------------------------------------------------
n90_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 288]                     # d
                        mov              rsi, qword ptr [rbp + 296]                     # d
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              rdi, qword ptr [rbp + 288]                     # var
                        mov              rsi, qword ptr [rbp + 296]                     # var
                        mov              rdx, qword ptr [rbp + 496]                     # val
                        mov              rcx, qword ptr [rbp + 504]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n89_rev_assign_var_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n91_rev_assign_var_α
n90_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 288]                     # var
                        mov              rsi, qword ptr [rbp + 296]                     # var
                        mov              rdx, qword ptr [rbp + 320]                     # val
                        mov              rcx, qword ptr [rbp + 328]                     # val
                        call             rt_assign_var@PLT
                                                                                        jmp   n89_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n91_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 80]                      # d
                        mov              rsi, qword ptr [rbp + 88]                      # d
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        mov              rdi, qword ptr [rbp + 80]                      # var
                        mov              rsi, qword ptr [rbp + 88]                      # var
                        mov              rdx, qword ptr [rbp + 304]                     # val
                        mov              rcx, qword ptr [rbp + 312]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n90_rev_assign_var_β
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n92_conjunction_α
n91_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 80]                      # var
                        mov              rsi, qword ptr [rbp + 88]                      # var
                        mov              rdx, qword ptr [rbp + 112]                     # val
                        mov              rcx, qword ptr [rbp + 120]                     # val
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
                        mov              rdx, 1879052304                                # solution
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
                        mov              rdi, qword ptr [rbp + 1392]                    # base
                        mov              rsi, qword ptr [rbp + 1400]                    # base
                        mov              rdx, qword ptr [rbp + 1408]                    # idx
                        mov              rcx, qword ptr [rbp + 1416]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n99_disjunction_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n98_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1424]                    # var
                        mov              rsi, qword ptr [rbp + 1432]                    # var
                        mov              rdx, qword ptr [rbp + 1456]                    # val
                        mov              rcx, qword ptr [rbp + 1464]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n99_disjunction_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n99_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_disjunction_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0
                                                                                        jmp   n106_var_α
n99_disjunction_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        jne   .Lx254_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n100_conjunction_α
.Lx254_0:
                        cmp              eax, 1
                                                                                        jne   .Lx254_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n100_conjunction_α
.Lx254_1:
                                                                                        jmp   n100_conjunction_α
n99_disjunction_β:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        je    n110_unmark_α
                                                                                        jmp   n110_unmark_α
n99_disjunction_af:
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1
                                                                                        je    n101_var_α
                                                                                        jmp   n110_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n100_conjunction_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n110_unmark_α
n100_conjunction_β:
                                                                                        jmp   n110_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n102_lit_integer_α
n101_var_β:
                                                                                        jmp   n110_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n103_coerce_numeric_α
.Lx258_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n103_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx260_1
                        cmp              eax, 3
                                                                                        jne   .Lx260_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 3
                                                                                        jne   .Lx260_0
.Lx260_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n104_binop_α
.Lx260_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 1376]                              # other
                        lea              rdx, [rbp + 1344]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n104_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 3
                                                                                        jne   .Lx261_0
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1328], 3
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n105_call_proc_staged_α
.Lx261_0:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n110_unmark_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n105_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_proc_staged_α:
                        lea              rsi, [rbp + 1328]
                        call             proc_q_dcα
                                                                                        jmp   .Lx263_2
.Lx263_2:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n110_unmark_α
                                                                                        jmp   n99_disjunction_as
n105_call_proc_staged_β:
                                                                                        jmp   n110_unmark_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n107_var_α
n106_var_β:
                                                                                        jmp   n99_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1264], rax                    # result
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n108_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx267_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 112
                                                                                        je    .Lx267_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx267_2
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 3
                                                                                        jne   .Lx267_2
.Lx267_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx
                                                                                        jne   n99_disjunction_af
                        mov              rcx, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rcx
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rcx
                                                                                        jmp   n109_call_proc_staged_α
.Lx267_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 1264]                    # b
                        mov              rcx, qword ptr [rbp + 1272]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 1232]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx267_1
                        cmp              eax, 1
                                                                                        je    n99_disjunction_af
                                                                                        jmp   n109_call_proc_staged_α
.Lx267_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 1264]                    # rhs
                        mov              rcx, qword ptr [rbp + 1272]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n99_disjunction_af
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        call             proc_show_dcα
                                                                                        jmp   .Lx269_2
.Lx269_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n110_unmark_α
                                                                                        jmp   n99_disjunction_as
n109_call_proc_staged_β:
                                                                                        jmp   n110_unmark_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n110_unmark_α:
                        mov              rsp, qword ptr [rbp + 1104]
                                                                                        jmp   n91_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
proc_q_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q_β:
                                                                                        jmp   proc_q_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_q_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_q_dcα:
                        pop              r11
                        sub              rsp, 2176
                        mov              qword ptr [rsp + 2152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2128], r11
                        lea              rax, [rip + .Lx272_2]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rax, [rip + .Lx272_3]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 2096                                      # suffix_off
                        mov              edx, 2128                                      # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_q_α_body
.Lx272_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx272_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_show_α
proc_show_α:
proc_show_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n273_disjunction_α:
                        mov              qword ptr [rbp + 816], 0
                        mov              qword ptr [rbp + 824], 0
                        mov              dword ptr [rbp + 832], 0
                                                                                        jmp   n274_var_ref_α
n273_disjunction_as:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 0
                                                                                        jne   .Lx329_0
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n293_lit_string_α
.Lx329_0:
                                                                                        jmp   n293_lit_string_α
n273_disjunction_β:
                        mov              eax, dword ptr [rbp + 832]
                                                                                        jmp   n293_lit_string_α
n273_disjunction_af:
                        add              dword ptr [rbp + 832], 1
                        mov              eax, dword ptr [rbp + 832]
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052432                                # show__INITFLAG__0
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n275_nulltest_var_α
n274_var_ref_β:
                                                                                        jmp   n273_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n275_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 104
                                                                                        je    n273_disjunction_af
                        mov              rdi, qword ptr [rbp + 1168]                    # d
                        mov              rsi, qword ptr [rbp + 1176]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n273_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n273_disjunction_af
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n276_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n277_assign_var_α
.Lx333_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # var
                        mov              rsi, qword ptr [rbp + 1192]                    # var
                        mov              rdx, qword ptr [rbp + 1216]                    # val
                        mov              rcx, qword ptr [rbp + 1224]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n273_disjunction_af
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n279_assign_α
.Lx335_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052384], rax                    # show__STATIC__count
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n280_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 4
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n281_var_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "|   "
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1120], rax                    # result
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n282_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn340:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]                         # fn
                        lea              rsi, [rbp + 1056]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n286_lit_string_α
                                                                                        jmp   n283_lit_string_α
n282_call_builtin_icon_β:
                                                                                        jmp   n286_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n284_binop_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n284_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # a
                        mov              rsi, qword ptr [rbp + 1048]                    # a
                        mov              rdx, qword ptr [rbp + 1136]                    # b
                        mov              rcx, qword ptr [rbp + 1144]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n285_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052400], rax                    # show__STATIC__line
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n286_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 4
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n287_var_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "----"
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 976], rax                     # result
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n288_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn347:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn347]                         # fn
                        lea              rsi, [rbp + 912]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n293_lit_string_α
                                                                                        jmp   n289_lit_string_α
n288_call_builtin_icon_β:
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n290_binop_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n290_binop_α:
                        mov              rdi, qword ptr [rbp + 896]                     # a
                        mov              rsi, qword ptr [rbp + 904]                     # a
                        mov              rdx, qword ptr [rbp + 992]                     # b
                        mov              rcx, qword ptr [rbp + 1000]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n291_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n291_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052416], rax                    # show__STATIC__border
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n292_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n292_conjunction_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n273_disjunction_as
n292_conjunction_β:
                                                                                        jmp   n293_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 10
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n294_var_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "solution: "
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [1879052384]                    # show__STATIC__count
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 784], rax                     # result
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n296_coerce_numeric_α
.Lx354_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n296_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 5
                                                                                        je    .Lx356_1
                        cmp              eax, 3
                                                                                        jne   .Lx356_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 3
                                                                                        jne   .Lx356_0
.Lx356_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n297_binop_α
.Lx356_0:
                        lea              rdi, [rbp + 784]                               # self
                        lea              rsi, [rbp + 800]                               # other
                        lea              rdx, [rbp + 768]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n297_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n297_binop_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 3
                                                                                        jne   .Lx357_0
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n298_assign_α
.Lx357_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n300_lit_string_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n298_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n298_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052384], rax                    # show__STATIC__count
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n299_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn360:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]                         # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n300_lit_string_α
                                                                                        jmp   n300_lit_string_α
n299_call_builtin_icon_β:
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 2
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n301_var_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [1879052416]                    # show__STATIC__border
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 640], rax                     # result
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n302_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn364:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]                         # fn
                        lea              rsi, [rbp + 576]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n303_var_ref_α
                                                                                        jmp   n303_var_ref_α
n302_call_builtin_icon_β:
                                                                                        jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052400                                # show__STATIC__line
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n304_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n305_var_α
.Lx367_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:
                        mov              rax, qword ptr [1879052304]                    # solution
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n306_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n306_iterate_α:
                        mov              qword ptr [rbp + 176], 0
.Lx370_0:
                        mov              rdi, qword ptr [rbp + 192]                     # obj
                        mov              rsi, qword ptr [rbp + 200]                     # obj
                        mov              rdx, qword ptr [rbp + 176]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx370_240
                        add              rsp, 1152
                                                                                        jmp   n327_call_builtin_icon_α
.Lx370_240:
                                                                                        jmp   n307_lit_integer_α
n306_iterate_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx370_0
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n308_coerce_numeric_α
.Lx371_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n308_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 5
                                                                                        je    .Lx373_1
                        cmp              eax, 3
                                                                                        jne   .Lx373_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx373_0
.Lx373_1:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n309_binop_α
.Lx373_0:
                        lea              rdi, [rbp + 160]                               # self
                        lea              rsi, [rbp + 208]                               # other
                        lea              rdx, [rbp + 144]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n309_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n309_binop_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx374_0
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n310_coerce_numeric_α
.Lx374_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx374_240
                        add              rsp, 1152
                                                                                        jmp   n327_call_builtin_icon_α
.Lx374_240:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n310_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n310_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 5
                                                                                        je    .Lx376_1
                        cmp              eax, 3
                                                                                        jne   .Lx376_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx376_0
.Lx376_1:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n311_binop_α
.Lx376_0:
                        lea              rdi, [rbp + 128]                               # self
                        lea              rsi, [rbp + 112]                               # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n311_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n311_binop_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx377_0
                        mov              rax, 4
                        mov              rcx, qword ptr [rbp + 104]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n312_lit_integer_α
.Lx377_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx377_240
                        add              rsp, 1152
                                                                                        jmp   n327_call_builtin_icon_α
.Lx377_240:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n312_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n313_coerce_numeric_α
.Lx378_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n313_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 5
                                                                                        je    .Lx380_1
                        cmp              eax, 3
                                                                                        jne   .Lx380_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx380_0
.Lx380_1:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n314_binop_α
.Lx380_0:
                        lea              rdi, [rbp + 80]                                # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 64]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n314_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n314_binop_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx381_0
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n315_subscript_α
.Lx381_0:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx381_240
                        add              rsp, 1152
                                                                                        jmp   n327_call_builtin_icon_α
.Lx381_240:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n315_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n315_subscript_α:
                        mov              rdi, qword ptr [rbp + 32]                      # base
                        mov              rsi, qword ptr [rbp + 40]                      # base
                        mov              rdx, qword ptr [rbp + 48]                      # idx
                        mov              rcx, qword ptr [rbp + 56]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n306_iterate_β
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n317_rev_assign_var_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "Q"
#-----------------------------------------------------------------------------------------------------------------------
n317_rev_assign_var_α:
                        mov              rdi, qword ptr [rbp + 240]                     # d
                        mov              rsi, qword ptr [rbp + 248]                     # d
                        call             rt_deref@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              rdi, qword ptr [rbp + 240]                     # var
                        mov              rsi, qword ptr [rbp + 248]                     # var
                        mov              rdx, qword ptr [rbp + 288]                     # val
                        mov              rcx, qword ptr [rbp + 296]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n306_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n318_bound_α
n317_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 240]                     # var
                        mov              rsi, qword ptr [rbp + 248]                     # var
                        mov              rdx, qword ptr [rbp + 272]                     # val
                        mov              rcx, qword ptr [rbp + 280]                     # val
                        call             rt_assign_var@PLT
                                                                                        jmp   n306_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n318_bound_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n319_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
                        mov              dword ptr [rbp + 532], 2
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n320_var_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:
                        mov              rax, qword ptr [1879052400]                    # show__STATIC__line
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 544], rax                     # result
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n321_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn390:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn390]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n322_lit_string_α
                                                                                        jmp   n322_lit_string_α
n321_call_builtin_icon_β:
                                                                                        jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 2
                        mov              rax, qword ptr [rip + .Lx391_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n323_var_α
.Lx391_0:
                        .quad            .Lx391_0_s
.Lx391_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n323_var_α:
                        mov              rax, qword ptr [1879052416]                    # show__STATIC__border
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 448], rax                     # result
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n324_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn394:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n326_unmark_α
                                                                                        jmp   n325_conjunction_α
n324_call_builtin_icon_β:
                                                                                        jmp   n326_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n325_conjunction_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n326_unmark_α
n325_conjunction_β:
                                                                                        jmp   n326_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n326_unmark_α:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   n317_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn399:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    proc_show_ω
                                                                                        jmp   proc_show_ω
n327_call_builtin_icon_β:
                                                                                        jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_show_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_show_β:
                                                                                        jmp   proc_show_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_show_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_show_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_show_dcα:
                        pop              r11
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1248], r11
                        lea              rax, [rip + .Lx400_2]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rax, [rip + .Lx400_3]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1232                                      # suffix_off
                        mov              edx, 1248                                      # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_show_α_body
.Lx400_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1280
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx400_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1280
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1232
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_show_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "n"
.Lgvan1:                .string          "solution"
.Lgvan2:                .string          "q__STATIC__up"
.Lgvan3:                .string          "q__STATIC__down"
.Lgvan4:                .string          "q__STATIC__rows"
.Lgvan5:                .string          "q__INITFLAG__0"
.Lgvan6:                .string          "show__STATIC__count"
.Lgvan7:                .string          "show__STATIC__line"
.Lgvan8:                .string          "show__STATIC__border"
.Lgvan9:                .string          "show__INITFLAG__0"
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
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n401_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n418_var_ref_α
n401_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx424_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n402_assign_α
.Lx424_0:
                        cmp              eax, 1
                                                                                        jne   .Lx424_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n402_assign_α
.Lx424_1:
                                                                                        jmp   n402_assign_α
n401_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        je    n401_disjunction_af
                                                                                        jmp   n401_disjunction_af
n401_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1
                                                                                        je    n417_lit_integer_α
                                                                                        jmp   n403_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n402_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [1879052288], rax                    # n
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n403_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n403_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n404_var_α
n403_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx427_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n409_var_α
.Lx427_0:
                                                                                        jmp   n409_var_α
n403_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n409_var_α
n403_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                                                                                        jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 384], rax                     # result
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n405_lit_integer_α
n404_var_β:
                                                                                        jmp   n403_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n406_binop_test_α
.Lx429_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n406_binop_test_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 112
                                                                                        je    .Lx430_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 112
                                                                                        je    .Lx430_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 3
                                                                                        jne   .Lx430_2
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx430_2
.Lx430_1:
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, qword ptr [rbp + 408]
                        cmp              rax, rcx
                                                                                        jg    n403_disjunction_af
                        mov              rcx, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rcx
                        mov              rcx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rcx
                                                                                        jmp   n407_lit_string_α
.Lx430_0:
                        mov              rdi, qword ptr [rbp + 384]                     # a
                        mov              rsi, qword ptr [rbp + 392]                     # a
                        mov              rdx, qword ptr [rbp + 400]                     # b
                        mov              rcx, qword ptr [rbp + 408]                     # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 368]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx430_1
                        cmp              eax, 1
                                                                                        je    n403_disjunction_af
                                                                                        jmp   n407_lit_string_α
.Lx430_2:
                        mov              rdi, qword ptr [rbp + 384]                     # lhs
                        mov              rsi, qword ptr [rbp + 392]                     # lhs
                        mov              rdx, qword ptr [rbp + 400]                     # rhs
                        mov              rcx, qword ptr [rbp + 408]                     # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n403_disjunction_af
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n407_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 37
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n408_call_builtin_icon_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "-n needs a positive numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn433:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn433]                         # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n409_var_α
                                                                                        jmp   n403_disjunction_as
n408_call_builtin_icon_β:
                                                                                        jmp   n409_var_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 256], rax                     # result
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n410_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn436:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn436]                         # fn
                        lea              rsi, [rbp + 224]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n412_var_α
                                                                                        jmp   n411_assign_α
n410_call_builtin_icon_β:
                                                                                        jmp   n412_var_α
#-----------------------------------------------------------------------------------------------------------------------
n411_assign_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [1879052304], rax                    # solution
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n412_var_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 160], rax                     # result
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n413_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 8
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n414_call_builtin_icon_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "-Queens:"
#-----------------------------------------------------------------------------------------------------------------------
n414_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn441:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n415_lit_integer_α
                                                                                        jmp   n415_lit_integer_α
n414_call_builtin_icon_β:
                                                                                        jmp   n415_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:
                        mov              qword ptr [rbp + 80], 3                        # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n416_call_proc_staged_α
.Lx442_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n416_call_proc_staged_α:
                        lea              rsi, [rbp + 80]
                        call             proc_q_dcα
                                                                                        jmp   .Lx444_2
.Lx444_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx444_240
                        add              rsp, 496
                                                                                        jmp   main_ω
.Lx444_240:
                        add              rsp, 496
                                                                                        jmp   main_ω
n416_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n401_disjunction_as
n417_lit_integer_β:
                                                                                        jmp   n401_disjunction_af
.Lx445_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n419_lit_integer_α
n418_var_ref_β:
                                                                                        jmp   n401_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n420_subscript_α
.Lx448_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n420_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        mov              rdx, qword ptr [rbp + 512]                     # idx
                        mov              rcx, qword ptr [rbp + 520]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n401_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n421_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n421_deref_α:
                        mov              rdi, qword ptr [rbp + 528]                     # d
                        mov              rsi, qword ptr [rbp + 536]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n401_disjunction_af
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n422_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn452:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]                         # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n401_disjunction_af
                                                                                        jmp   n401_disjunction_as
n422_call_builtin_icon_β:
                                                                                        jmp   n401_disjunction_af
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
