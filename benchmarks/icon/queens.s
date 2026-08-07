                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q_α
proc_q_α:
                        sub              rsp, 2160
                        mov              qword ptr [rsp + 2136], rcx
                        mov              qword ptr [rsp + 2144], rdx
                        mov              qword ptr [rsp + 2152], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2128
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jne   .Lx00001_0
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n30_lit_integer_α
.Lx00001_0:
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
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                                # q__INITFLAG__0
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
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n4_assign_var_α
.Lx00002_0:
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
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n6_var_α
.Lx00003_0:
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
                                                                                        je    .Lx00004_1
                        cmp              eax, 3
                                                                                        jne   .Lx00004_0
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 3
                                                                                        jne   .Lx00004_0
.Lx00004_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n8_binop_α
.Lx00004_0:
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
                                                                                        jne   .Lx00005_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 1960]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1936], 3
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n9_lit_integer_α
.Lx00005_0:
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
                        mov              rax, qword ptr [rip + .Lx00006_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n10_coerce_numeric_α
.Lx00006_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 5
                                                                                        je    .Lx00007_1
                        cmp              eax, 3
                                                                                        jne   .Lx00007_0
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 3
                                                                                        jne   .Lx00007_0
.Lx00007_1:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n11_binop_α
.Lx00007_0:
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
                                                                                        jne   .Lx00008_0
                        mov              rax, qword ptr [rbp + 1928]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1904], 3
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n12_lit_integer_α
.Lx00008_0:
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
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx00009_0:
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
                        mov              qword ptr [1879052368], rax                    # q__STATIC__up
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00010_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n16_var_α
.Lx00010_0:
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
                                                                                        je    .Lx00011_1
                        cmp              eax, 3
                                                                                        jne   .Lx00011_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 3
                                                                                        jne   .Lx00011_0
.Lx00011_1:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n18_binop_α
.Lx00011_0:
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
                                                                                        jne   .Lx00012_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 1768]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1744], 3
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n19_lit_integer_α
.Lx00012_0:
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
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n20_coerce_numeric_α
.Lx00013_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              eax, 5
                                                                                        je    .Lx00014_1
                        cmp              eax, 3
                                                                                        jne   .Lx00014_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx00014_0
.Lx00014_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n21_binop_α
.Lx00014_0:
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
                                                                                        jne   .Lx00015_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1712], 3
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n22_lit_integer_α
.Lx00015_0:
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
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n23_call_builtin_icon_α
.Lx00016_0:
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
                        mov              qword ptr [1879052384], rax                    # q__STATIC__down
                        mov              qword ptr [1879052392], rdx
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
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx00017_0:
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
                        mov              qword ptr [1879052400], rax                    # q__STATIC__rows
                        mov              qword ptr [1879052408], rdx
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
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n31_var_ref_α
.Lx00018_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                                # q__STATIC__rows
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n33_var_α
.Lx00019_0:
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
.Lx00020_0:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 696]
                        cmp              rax, rcx
                                                                                        jle   .Lx00020_240
                        add              rsp, 2016
                                                                                        jmp   proc_q_ω
.Lx00020_240:
                        mov              qword ptr [rbp + 640], 3
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n35_assign_α
n34_to_β:
                        inc              qword ptr [rbp + 656]
                                                                                        jmp   .Lx00020_0
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
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
                                                                                        je    .Lx00021_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 112
                                                                                        je    .Lx00021_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx00021_2
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx00021_2
.Lx00021_1:
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jne   n34_to_β
                        mov              rcx, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rcx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rcx
                                                                                        jmp   n39_var_ref_α
.Lx00021_0:
                        mov              rdi, qword ptr [rbp + 592]                     # a
                        mov              rsi, qword ptr [rbp + 600]                     # a
                        mov              rdx, qword ptr [rbp + 720]                     # b
                        mov              rcx, qword ptr [rbp + 728]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 576]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00021_1
                        cmp              eax, 1
                                                                                        je    n34_to_β
                                                                                        jmp   n39_var_ref_α
.Lx00021_2:
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
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                                # q__STATIC__up
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n42_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 5
                                                                                        je    .Lx00022_1
                        cmp              eax, 3
                                                                                        jne   .Lx00022_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00022_0
.Lx00022_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n43_coerce_numeric_α
.Lx00022_0:
                        lea              rdi, [rbp + 848]                               # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 832]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n43_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx00023_1
                        cmp              eax, 3
                                                                                        jne   .Lx00023_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 3
                                                                                        jne   .Lx00023_0
.Lx00023_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n44_binop_α
.Lx00023_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 848]                               # other
                        lea              rdx, [rbp + 816]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n44_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 3
                                                                                        jne   .Lx00024_0
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 3
                                                                                        jne   .Lx00024_0
                        mov              rax, qword ptr [rbp + 840]
                        mov              rcx, qword ptr [rbp + 824]
                        add              rax, rcx
                        mov              qword ptr [rbp + 800], 3
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n45_var_α
.Lx00024_0:
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
                                                                                        je    .Lx00025_1
                        cmp              eax, 3
                                                                                        jne   .Lx00025_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx00025_0
.Lx00025_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n47_coerce_numeric_α
.Lx00025_0:
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
                                                                                        je    .Lx00026_1
                        cmp              eax, 3
                                                                                        jne   .Lx00026_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 3
                                                                                        jne   .Lx00026_0
.Lx00026_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n48_binop_α
.Lx00026_0:
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
                                                                                        jne   .Lx00027_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 3
                                                                                        jne   .Lx00027_0
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 776]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n49_subscript_α
.Lx00027_0:
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
                                                                                        je    .Lx00028_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 112
                                                                                        je    .Lx00028_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx00028_2
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 3
                                                                                        jne   .Lx00028_2
.Lx00028_1:
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 920]
                        cmp              rax, rcx
                                                                                        jne   n34_to_β
                        mov              rcx, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rcx
                                                                                        jmp   n52_var_ref_α
.Lx00028_0:
                        mov              rdi, qword ptr [rbp + 576]                     # a
                        mov              rsi, qword ptr [rbp + 584]                     # a
                        mov              rdx, qword ptr [rbp + 912]                     # b
                        mov              rcx, qword ptr [rbp + 920]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 560]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00028_1
                        cmp              eax, 1
                                                                                        je    n34_to_β
                                                                                        jmp   n52_var_ref_α
.Lx00028_2:
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
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                                # q__STATIC__down
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 40]
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
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx00029_1
                        cmp              eax, 3
                                                                                        jne   .Lx00029_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx00029_0
.Lx00029_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n56_coerce_numeric_α
.Lx00029_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1008]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n56_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx00030_1
                        cmp              eax, 3
                                                                                        jne   .Lx00030_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00030_0
.Lx00030_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n57_binop_α
.Lx00030_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 992]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n57_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx00031_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 3
                                                                                        jne   .Lx00031_0
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rcx, qword ptr [rbp + 1000]
                        add              rax, rcx
                        mov              qword ptr [rbp + 976], 3
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n58_lit_integer_α
.Lx00031_0:
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
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n59_coerce_numeric_α
.Lx00032_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 5
                                                                                        je    .Lx00033_1
                        cmp              eax, 3
                                                                                        jne   .Lx00033_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 3
                                                                                        jne   .Lx00033_0
.Lx00033_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n60_binop_α
.Lx00033_0:
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
                                                                                        jne   .Lx00034_0
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n61_subscript_α
.Lx00034_0:
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
                                                                                        je    .Lx00035_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 112
                                                                                        je    .Lx00035_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 3
                                                                                        jne   .Lx00035_2
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 3
                                                                                        jne   .Lx00035_2
.Lx00035_1:
                        mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 1096]
                        cmp              rax, rcx
                                                                                        jne   n34_to_β
                        mov              rcx, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rcx
                                                                                        jmp   n64_var_ref_α
.Lx00035_0:
                        mov              rdi, qword ptr [rbp + 560]                     # a
                        mov              rsi, qword ptr [rbp + 568]                     # a
                        mov              rdx, qword ptr [rbp + 1088]                    # b
                        mov              rcx, qword ptr [rbp + 1096]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 544]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00035_1
                        cmp              eax, 1
                                                                                        je    n34_to_β
                                                                                        jmp   n64_var_ref_α
.Lx00035_2:
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
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                                # q__STATIC__rows
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 40]
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
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                                # q__STATIC__up
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n70_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 5
                                                                                        je    .Lx00036_1
                        cmp              eax, 3
                                                                                        jne   .Lx00036_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00036_0
.Lx00036_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n71_coerce_numeric_α
.Lx00036_0:
                        lea              rdi, [rbp + 240]                               # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n71_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx00037_1
                        cmp              eax, 3
                                                                                        jne   .Lx00037_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx00037_0
.Lx00037_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n72_binop_α
.Lx00037_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n72_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx00038_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx00038_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 216]
                        add              rax, rcx
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n73_var_α
.Lx00038_0:
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
                                                                                        je    .Lx00039_1
                        cmp              eax, 3
                                                                                        jne   .Lx00039_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx00039_0
.Lx00039_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n75_coerce_numeric_α
.Lx00039_0:
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
                                                                                        je    .Lx00040_1
                        cmp              eax, 3
                                                                                        jne   .Lx00040_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx00040_0
.Lx00040_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n76_binop_α
.Lx00040_0:
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
                                                                                        jne   .Lx00041_0
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 3
                                                                                        jne   .Lx00041_0
                        mov              rax, qword ptr [rbp + 184]
                        mov              rcx, qword ptr [rbp + 168]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n77_subscript_α
.Lx00041_0:
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
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                                # q__STATIC__down
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 40]
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
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx00042_1
                        cmp              eax, 3
                                                                                        jne   .Lx00042_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx00042_0
.Lx00042_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n82_coerce_numeric_α
.Lx00042_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 416]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n82_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx00043_1
                        cmp              eax, 3
                                                                                        jne   .Lx00043_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00043_0
.Lx00043_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n83_binop_α
.Lx00043_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 400]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n83_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx00044_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx00044_0
                        mov              rax, qword ptr [rbp + 424]
                        mov              rcx, qword ptr [rbp + 408]
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n84_lit_integer_α
.Lx00044_0:
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
                        mov              rax, qword ptr [rip + .Lx00045_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n85_coerce_numeric_α
.Lx00045_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 5
                                                                                        je    .Lx00046_1
                        cmp              eax, 3
                                                                                        jne   .Lx00046_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 3
                                                                                        jne   .Lx00046_0
.Lx00046_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n86_binop_α
.Lx00046_0:
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
                                                                                        jne   .Lx00047_0
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n87_subscript_α
.Lx00047_0:
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
                        mov              rax, qword ptr [rip + .Lx00048_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n89_rev_assign_var_α
.Lx00048_0:
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
                        mov              rax, 4294967336
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
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 40]
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
                                                                                        jmp   n00049_var_α
n99_disjunction_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        jne   .Lx00050_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00051_conjunction_α
.Lx00050_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00050_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00051_conjunction_α
.Lx00050_1:
                                                                                        jmp   n00051_conjunction_α
n99_disjunction_β:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        je    n00052_unmark_α
                                                                                        jmp   n00052_unmark_α
n99_disjunction_af:
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1
                                                                                        je    n00053_var_α
                                                                                        jmp   n00052_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_conjunction_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00052_unmark_α
n00051_conjunction_β:
                                                                                        jmp   n00052_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00054_lit_integer_α
n00053_var_β:
                                                                                        jmp   n00052_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00055_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00056_coerce_numeric_α
.Lx00055_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00056_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx00057_1
                        cmp              eax, 3
                                                                                        jne   .Lx00057_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 3
                                                                                        jne   .Lx00057_0
.Lx00057_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00058_binop_α
.Lx00057_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 1376]                              # other
                        lea              rdx, [rbp + 1344]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00058_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_binop_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 3
                                                                                        jne   .Lx00059_0
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1328], 3
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00060_call_proc_staged_α
.Lx00059_0:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00052_unmark_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n00060_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_proc_staged_α:
                        lea              rsi, [rbp + 1328]
                        call             proc_q_dcα
                                                                                        jmp   .Lx00061_2
.Lx00061_2:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n00052_unmark_α
                                                                                        jmp   n99_disjunction_as
n00060_call_proc_staged_β:
                                                                                        jmp   n00052_unmark_α
.Lx00061_0:
                        .quad            .Lx00061_0_s
.Lx00061_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00062_var_α
n00049_var_β:
                                                                                        jmp   n99_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1264], rax                    # result
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n00063_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx00064_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 112
                                                                                        je    .Lx00064_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx00064_2
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 3
                                                                                        jne   .Lx00064_2
.Lx00064_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx
                                                                                        jne   n99_disjunction_af
                        mov              rcx, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rcx
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rcx
                                                                                        jmp   n00065_call_proc_staged_α
.Lx00064_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 1264]                    # b
                        mov              rcx, qword ptr [rbp + 1272]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 1232]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00064_1
                        cmp              eax, 1
                                                                                        je    n99_disjunction_af
                                                                                        jmp   n00065_call_proc_staged_α
.Lx00064_2:
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
                                                                                        jmp   n00065_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_call_proc_staged_α:
                        call             proc_show_dcα
                                                                                        jmp   .Lx00066_2
.Lx00066_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n00052_unmark_α
                                                                                        jmp   n99_disjunction_as
n00065_call_proc_staged_β:
                                                                                        jmp   n00052_unmark_α
.Lx00066_0:
                        .quad            .Lx00066_0_s
.Lx00066_0_s:
                        .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
n00052_unmark_α:
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2136]
                        mov              rbp, qword ptr [rbp + 2152]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_q_ω:
                        lea              rsp, [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2144]
                        mov              rbp, qword ptr [rbp + 2152]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_q_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00067_2]
                        lea              rdx, [rip + .Lx00067_3]
                                                                                        jmp   proc_q_α
.Lx00067_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00067_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_show_α
proc_show_α:
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1256], rcx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1248
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
n00069_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                                # show__INITFLAG__0
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00072_nulltest_var_α
n00069_var_ref_β:
                                                                                        jmp   n00068_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00072_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 104
                                                                                        je    n00068_disjunction_af
                        mov              rdi, qword ptr [rbp + 1168]                    # d
                        mov              rsi, qword ptr [rbp + 1176]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00068_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00068_disjunction_af
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n00073_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00074_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n00075_assign_var_α
.Lx00074_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # var
                        mov              rsi, qword ptr [rbp + 1192]                    # var
                        mov              rdx, qword ptr [rbp + 1216]                    # val
                        mov              rcx, qword ptr [rbp + 1224]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00068_disjunction_af
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n00076_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00078_assign_α
.Lx00077_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00078_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052432], rax                    # show__STATIC__count
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n00079_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 4
                        mov              rax, qword ptr [rip + .Lx00080_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00081_var_α
.Lx00080_0:
                        .quad            .Lx00080_0_s
.Lx00080_0_s:
                        .string          "|   "
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1120], rax                    # result
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00082_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_builtin_icon_α:
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
                                                                                        je    n00083_lit_string_α
                                                                                        jmp   n00084_lit_string_α
n00082_call_builtin_icon_β:
                                                                                        jmp   n00083_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00085_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00086_binop_α
.Lx00085_0:
                        .quad            .Lx00085_0_s
.Lx00085_0_s:
                        .string          "|"
#-----------------------------------------------------------------------------------------------------------------------
n00086_binop_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # a
                        mov              rsi, qword ptr [rbp + 1048]                    # a
                        mov              rdx, qword ptr [rbp + 1136]                    # b
                        mov              rcx, qword ptr [rbp + 1144]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00087_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_assign_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [1879052448], rax                    # show__STATIC__line
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n00083_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 4
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00089_var_α
.Lx00088_0:
                        .quad            .Lx00088_0_s
.Lx00088_0_s:
                        .string          "----"
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 976], rax                     # result
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00090_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_call_builtin_icon_α:
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
                                                                                        je    n00071_lit_string_α
                                                                                        jmp   n00091_lit_string_α
n00090_call_builtin_icon_β:
                                                                                        jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Lx00092_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00093_binop_α
.Lx00092_0:
                        .quad            .Lx00092_0_s
.Lx00092_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00093_binop_α:
                        mov              rdi, qword ptr [rbp + 896]                     # a
                        mov              rsi, qword ptr [rbp + 904]                     # a
                        mov              rdx, qword ptr [rbp + 992]                     # b
                        mov              rcx, qword ptr [rbp + 1000]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00094_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052464], rax                    # show__STATIC__border
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00095_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_conjunction_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00068_disjunction_as
n00095_conjunction_β:
                                                                                        jmp   n00071_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 10
                        mov              rax, qword ptr [rip + .Lx00096_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00097_var_α
.Lx00096_0:
                        .quad            .Lx00096_0_s
.Lx00096_0_s:
                        .string          "solution: "
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:
                        mov              rax, qword ptr [1879052432]                    # show__STATIC__count
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 784], rax                     # result
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00098_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00099_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00100_coerce_numeric_α
.Lx00099_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00100_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 5
                                                                                        je    .Lx00101_1
                        cmp              eax, 3
                                                                                        jne   .Lx00101_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 3
                                                                                        jne   .Lx00101_0
.Lx00101_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00102_binop_α
.Lx00101_0:
                        lea              rdi, [rbp + 784]                               # self
                        lea              rsi, [rbp + 800]                               # other
                        lea              rdx, [rbp + 768]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00102_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_binop_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 3
                                                                                        jne   .Lx00103_0
                        mov              rax, qword ptr [rbp + 776]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00104_assign_α
.Lx00103_0:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00105_lit_string_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00104_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_assign_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [1879052432], rax                    # show__STATIC__count
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_builtin_icon_α:
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
                                                                                        je    n00105_lit_string_α
                                                                                        jmp   n00105_lit_string_α
n00106_call_builtin_icon_β:
                                                                                        jmp   n00105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 2
                        mov              rax, qword ptr [rip + .Lx00107_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00108_var_α
.Lx00107_0:
                        .quad            .Lx00107_0_s
.Lx00107_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:
                        mov              rax, qword ptr [1879052464]                    # show__STATIC__border
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 640], rax                     # result
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00109_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_builtin_icon_α:
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
                                                                                        je    n00110_var_ref_α
                                                                                        jmp   n00110_var_ref_α
n00109_call_builtin_icon_β:
                                                                                        jmp   n00110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                                # show__STATIC__line
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00112_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00113_var_α
.Lx00112_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_α:
                        mov              rax, qword ptr [1879052304]                    # solution
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00114_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_iterate_α:
                        mov              qword ptr [rbp + 176], 0
.Lx00115_0:
                        mov              rdi, qword ptr [rbp + 192]                     # obj
                        mov              rsi, qword ptr [rbp + 200]                     # obj
                        mov              rdx, qword ptr [rbp + 176]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx00115_240
                        add              rsp, 1152
                                                                                        jmp   n00116_call_builtin_icon_α
.Lx00115_240:
                                                                                        jmp   n00117_lit_integer_α
n00114_iterate_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx00115_0
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_integer_α:
                        mov              qword ptr [rbp + 208], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00118_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00119_coerce_numeric_α
.Lx00118_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00119_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 5
                                                                                        je    .Lx00120_1
                        cmp              eax, 3
                                                                                        jne   .Lx00120_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx00120_0
.Lx00120_1:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n00121_binop_α
.Lx00120_0:
                        lea              rdi, [rbp + 160]                               # self
                        lea              rsi, [rbp + 208]                               # other
                        lea              rdx, [rbp + 144]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00121_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_binop_α:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 3
                                                                                        jne   .Lx00122_0
                        mov              rax, qword ptr [rbp + 152]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00123_coerce_numeric_α
.Lx00122_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00122_240
                        add              rsp, 1152
                                                                                        jmp   n00116_call_builtin_icon_α
.Lx00122_240:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00123_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 5
                                                                                        je    .Lx00124_1
                        cmp              eax, 3
                                                                                        jne   .Lx00124_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              eax, 3
                                                                                        jne   .Lx00124_0
.Lx00124_1:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n00125_binop_α
.Lx00124_0:
                        lea              rdi, [rbp + 128]                               # self
                        lea              rsi, [rbp + 112]                               # other
                        lea              rdx, [rbp + 96]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00125_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_binop_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx00126_0
                        mov              rax, 4
                        mov              rcx, qword ptr [rbp + 104]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00127_lit_integer_α
.Lx00126_0:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00126_240
                        add              rsp, 1152
                                                                                        jmp   n00116_call_builtin_icon_α
.Lx00126_240:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00128_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00129_coerce_numeric_α
.Lx00128_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00129_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 5
                                                                                        je    .Lx00130_1
                        cmp              eax, 3
                                                                                        jne   .Lx00130_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx00130_0
.Lx00130_1:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00131_binop_α
.Lx00130_0:
                        lea              rdi, [rbp + 80]                                # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 64]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00131_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00131_binop_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx00132_0
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00133_subscript_α
.Lx00132_0:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00132_240
                        add              rsp, 1152
                                                                                        jmp   n00116_call_builtin_icon_α
.Lx00132_240:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00133_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_subscript_α:
                        mov              rdi, qword ptr [rbp + 32]                      # base
                        mov              rsi, qword ptr [rbp + 40]                      # base
                        mov              rdx, qword ptr [rbp + 48]                      # idx
                        mov              rcx, qword ptr [rbp + 56]                      # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00114_iterate_β
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00134_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00134_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
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
                                                                                        je    n00114_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00137_bound_α
n00136_rev_assign_var_β:
                        mov              rdi, qword ptr [rbp + 240]                     # var
                        mov              rsi, qword ptr [rbp + 248]                     # var
                        mov              rdx, qword ptr [rbp + 272]                     # val
                        mov              rcx, qword ptr [rbp + 280]                     # val
                        call             rt_assign_var@PLT
                                                                                        jmp   n00114_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00137_bound_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n00138_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00138_lit_string_α:
                        mov              qword ptr [rbp + 528], 2                       # result
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
                        mov              rax, qword ptr [1879052448]                    # show__STATIC__line
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 544], rax                     # result
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
                                                                                        je    n00142_lit_string_α
                                                                                        jmp   n00142_lit_string_α
n00141_call_builtin_icon_β:
                                                                                        jmp   n00142_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
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
                        mov              rax, qword ptr [1879052464]                    # show__STATIC__border
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 448], rax                     # result
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
                                                                                        je    n00146_unmark_α
                                                                                        jmp   n00147_conjunction_α
n00145_call_builtin_icon_β:
                                                                                        jmp   n00146_unmark_α
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
n00146_unmark_α:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   n00136_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n00116_call_builtin_icon_α:
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
                                                                                        jmp   proc_show_γ
n00116_call_builtin_icon_β:
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              rbp, qword ptr [rbp + 1272]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_show_ω:
                        lea              rsp, [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1264]
                        mov              rbp, qword ptr [rbp + 1272]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_show_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00148_2]
                        lea              rdx, [rip + .Lx00148_3]
                                                                                        jmp   proc_show_α
.Lx00148_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00148_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rcx
                        mov              qword ptr [rsp + 2768], rdx
                        mov              qword ptr [rsp + 2776], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2752
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00149_var_ref_α:
                        sub              rsp, 2400
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
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00150_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 104
                                                                                        je    n00151_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]                    # d
                        mov              rsi, qword ptr [rbp + 2504]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
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
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00153_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00154_call_builtin_icon_α
.Lx00153_0:
                        .quad            .Lx00153_0_s
.Lx00153_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00154_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn512:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn512]                         # fn
                        lea              rsi, [rbp + 2560]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        je    n00151_call_builtin_icon_α
                                                                                        jmp   n00155_assign_var_α
n00154_call_builtin_icon_β:
                                                                                        jmp   n00151_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]                    # var
                        mov              rsi, qword ptr [rbp + 2520]                    # var
                        mov              rdx, qword ptr [rbp + 2544]                    # val
                        mov              rcx, qword ptr [rbp + 2552]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00151_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00151_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn515:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]                         # fn
                        lea              rsi, [rbp + 2480]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 104
                                                                                        je    n00156_make_list_α
                                                                                        jmp   n00157_assign_α
n00151_call_builtin_icon_β:
                                                                                        jmp   n00156_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00157_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00156_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00158_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
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
                        lea              rdi, [rip + .Lrkfn523]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00161_240
                        add              rsp, 2400
                                                                                        jmp   n00162_var_α
.Lx00161_240:
                                                                                        jmp   n00163_assign_α
n00160_call_builtin_icon_β:
                        add              rsp, 2400
                                                                                        jmp   n00162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00165_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00165_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # lo
                        mov              rsi, qword ptr [rbp + 2440]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00166_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00167_lit_string_α
n00166_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00168_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00169_scan_α
.Lx00168_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00168_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00169_scan_α
.Lx00168_1:
                                                                                        jmp   n00169_scan_α
n00166_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00170_disjunction_β
                                                                                        jmp   n00171_scan_α
n00166_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00172_var_α
                                                                                        jmp   n00171_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00159_var_α
n00169_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00166_disjunction_β
                                                                                        jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_conjunction_α:
                                                                                        jmp   n00166_disjunction_as
n00173_conjunction_β:
                                                                                        jmp   n00171_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00174_var_α
n00172_var_β:
                                                                                        jmp   n00171_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00174_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00175_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn539:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]                         # fn
                        lea              rsi, [rbp + 2352]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n00171_scan_α
                                                                                        jmp   n00166_disjunction_as
n00175_call_builtin_icon_β:
                                                                                        jmp   n00171_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00167_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00176_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00177_scan_match_α
n00167_lit_string_β:
                                                                                        jmp   n00166_disjunction_af
.Lx00176_0:
                        .quad            .Lx00176_0_s
.Lx00176_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00177_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00178_239
                        add              rsp, 16
                                                                                        jmp   n00166_disjunction_af
.Lx00178_239:
                        mov              rdi, qword ptr [rip + .Lx00178_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00178_240
                        add              rsp, 16
                                                                                        jmp   n00166_disjunction_af
.Lx00178_240:
                        mov              qword ptr [rbp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00179_scan_tab_α
.Lx00178_0:
                        .quad            .Lx00178_0_s
.Lx00178_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00179_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00180_0
                        add              rax, r15
                        add              rax, 1
.Lx00180_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00180_239
                        add              rsp, 16
                                                                                        jmp   n00166_disjunction_af
.Lx00180_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00180_240
                        add              rsp, 16
                                                                                        jmp   n00166_disjunction_af
.Lx00180_240:
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
                                                                                        jmp   n00181_lit_integer_α
n00179_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00166_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00182_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00183_scan_pos_α
.Lx00182_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00183_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00184_0
                        add              rax, r15
                        add              rax, 1
.Lx00184_0:
                        cmp              rax, 1
                                                                                        jl    n00185_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00185_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00185_var_α
                        mov              qword ptr [rbp + 2224], 3
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00179_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00186_conjunction_α
n00185_var_β:
                                                                                        jmp   n00179_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00186_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00187_disjunction_α
n00186_conjunction_β:
                                                                                        jmp   n00166_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00187_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00188_lit_string_α
n00187_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00189_0
                                                                                        jmp   n00190_lit_integer_α
.Lx00189_0:
                                                                                        jmp   n00190_lit_integer_α
n00187_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00190_lit_integer_α
n00187_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00190_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00191_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00192_scan_move_α
.Lx00191_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00192_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00193_239
                        add              rsp, 16
                                                                                        jmp   n00171_scan_α
.Lx00193_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00193_240
                        add              rsp, 16
                                                                                        jmp   n00171_scan_α
.Lx00193_240:
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
                                                                                        jmp   n00194_assign_α
n00192_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00171_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00170_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00170_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00195_var_α
n00170_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00196_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00190_lit_integer_α
.Lx00196_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00196_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00190_lit_integer_α
.Lx00196_1:
                                                                                        jmp   n00190_lit_integer_α
n00170_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00197_disjunction_β
                                                                                        jmp   n00190_lit_integer_α
n00170_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00198_lit_string_α
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00199_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00200_var_α
n00198_lit_string_β:
                                                                                        jmp   n00190_lit_integer_α
.Lx00199_0:
                        .quad            .Lx00199_0_s
.Lx00199_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00201_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_call_builtin_icon_α:
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
                        lea              rdi, [rip + .Lrkfn562]                         # fn
                        lea              rsi, [rbp + 1952]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n00190_lit_integer_α
                                                                                        jmp   n00170_disjunction_as
n00201_call_builtin_icon_β:
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00202_var_α
n00195_var_β:
                                                                                        jmp   n00170_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00203_call_builtin_gen_α
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
.Lx00204_60:
                        .section         .rodata
.Lbynamegenfn204:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn204]                  # fn
                        lea              rsi, [rbp + 1840]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 1872]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n00170_disjunction_af
                                                                                        jmp   n00205_lit_integer_α
n00203_call_builtin_gen_β:
                                                                                        jmp   .Lx00204_60
#-----------------------------------------------------------------------------------------------------------------------
n00205_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00206_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00207_coerce_numeric_α
.Lx00206_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00207_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 5
                                                                                        je    .Lx00208_1
                        cmp              eax, 3
                                                                                        jne   .Lx00208_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx00208_0
.Lx00208_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00209_binop_α
.Lx00208_0:
                        lea              rdi, [rbp + 1824]                              # self
                        lea              rsi, [rbp + 1920]                              # other
                        lea              rdx, [rbp + 1808]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00209_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx00210_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 3
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00211_assign_α
.Lx00210_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00170_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00211_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00211_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00212_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00213_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00213_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00214_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        mov              rdx, qword ptr [rbp + 512]                     # idx
                        mov              rcx, qword ptr [rbp + 520]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00190_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00197_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00215_lit_charset_α
n00197_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00216_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00217_assign_var_α
.Lx00216_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00216_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00217_assign_var_α
.Lx00216_1:
                                                                                        jmp   n00217_assign_var_α
n00197_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00190_lit_integer_α
                                                                                        jmp   n00190_lit_integer_α
n00197_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00218_lit_integer_α
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]                     # var
                        mov              rsi, qword ptr [rbp + 536]                     # var
                        mov              rdx, qword ptr [rbp + 560]                     # val
                        mov              rcx, qword ptr [rbp + 568]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00190_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00170_disjunction_as
n00217_assign_var_β:
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00218_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00219_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00197_disjunction_as
n00218_lit_integer_β:
                                                                                        jmp   n00190_lit_integer_α
.Lx00219_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00215_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00220_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00221_var_ref_α
n00215_lit_charset_β:
                                                                                        jmp   n00197_disjunction_af
.Lx00220_0:
                        .quad            .Lx00220_0_s
.Lx00220_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00221_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00222_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_var_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00223_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # base
                        mov              rsi, qword ptr [rbp + 1720]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00197_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00224_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # d
                        mov              rsi, qword ptr [rbp + 1752]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00197_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00225_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00225_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00226_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_builtin_icon_α:
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
.Lbynamefn221:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn221]                     # fn
                        lea              rsi, [rbp + 1632]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n00197_disjunction_af
                                                                                        jmp   n00227_disjunction_α
n00226_call_builtin_icon_β:
                                                                                        jmp   n00197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00227_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00228_lit_string_α
n00227_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00229_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00230_assign_α
.Lx00229_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00229_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00230_assign_α
.Lx00229_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00229_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00230_assign_α
.Lx00229_2:
                                                                                        jmp   n00230_assign_α
n00227_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00227_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00227_disjunction_af
                                                                                        jmp   n00227_disjunction_af
n00227_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00231_var_α
                        cmp              eax, 2
                                                                                        je    n00232_lit_string_α
                                                                                        jmp   n00233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00230_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00233_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00233_var_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00234_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00235_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00236_call_builtin_α
.Lx00235_0:
                        .quad            .Lx00235_0_s
.Lx00235_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn598:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn598]                         # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n00237_lit_string_α
                                                                                        jmp   n00238_var_α
n00236_call_builtin_β:
                                                                                        jmp   n00237_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00239_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00239_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00240_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00237_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00241_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00242_call_builtin_α
.Lx00241_0:
                        .quad            .Lx00241_0_s
.Lx00241_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00242_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn604:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn604]                         # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00243_lit_string_α
                                                                                        jmp   n00244_disjunction_α
n00242_call_builtin_β:
                                                                                        jmp   n00243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00244_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00245_var_α
n00244_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00246_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00247_assign_α
.Lx00246_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00246_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00247_assign_α
.Lx00246_1:
                                                                                        jmp   n00247_assign_α
n00244_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00244_disjunction_af
                                                                                        jmp   n00244_disjunction_af
n00244_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00248_lit_string_α
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00247_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00240_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00249_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00250_var_α
n00248_lit_string_β:
                                                                                        jmp   n00244_disjunction_af
.Lx00249_0:
                        .quad            .Lx00249_0_s
.Lx00249_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00250_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00251_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00251_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00252_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00253_call_builtin_icon_α
.Lx00252_0:
                        .quad            .Lx00252_0_s
.Lx00252_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00253_call_builtin_icon_α:
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
.Lrkfn613:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n00244_disjunction_af
                                                                                        jmp   n00244_disjunction_as
n00253_call_builtin_icon_β:
                                                                                        jmp   n00244_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00245_var_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00254_call_builtin_icon_α
n00245_var_β:
                                                                                        jmp   n00244_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn617:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n00244_disjunction_af
                                                                                        jmp   n00244_disjunction_as
n00254_call_builtin_icon_β:
                                                                                        jmp   n00244_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00243_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00255_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00256_call_builtin_α
.Lx00255_0:
                        .quad            .Lx00255_0_s
.Lx00255_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00256_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn620:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn620]                         # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n00190_lit_integer_α
                                                                                        jmp   n00257_disjunction_α
n00256_call_builtin_β:
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00257_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00258_var_α
n00257_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00259_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00260_assign_α
.Lx00259_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00259_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00260_assign_α
.Lx00259_1:
                                                                                        jmp   n00260_assign_α
n00257_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00257_disjunction_af
                                                                                        jmp   n00257_disjunction_af
n00257_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00261_lit_string_α
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00260_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00240_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00262_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_conjunction_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00197_disjunction_as
n00262_conjunction_β:
                                                                                        jmp   n00190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00263_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00264_var_α
n00261_lit_string_β:
                                                                                        jmp   n00257_disjunction_af
.Lx00263_0:
                        .quad            .Lx00263_0_s
.Lx00263_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00264_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00266_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00267_call_builtin_icon_α
.Lx00266_0:
                        .quad            .Lx00266_0_s
.Lx00266_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00267_call_builtin_icon_α:
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
.Lrkfn632:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]                         # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n00257_disjunction_af
                                                                                        jmp   n00257_disjunction_as
n00267_call_builtin_icon_β:
                                                                                        jmp   n00257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00258_var_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00268_call_builtin_icon_α
n00258_var_β:
                                                                                        jmp   n00257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00268_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn636:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn636]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n00257_disjunction_af
                                                                                        jmp   n00257_disjunction_as
n00268_call_builtin_icon_β:
                                                                                        jmp   n00257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00269_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00270_var_α
n00232_lit_string_β:
                                                                                        jmp   n00227_disjunction_af
.Lx00269_0:
                        .quad            .Lx00269_0_s
.Lx00269_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00270_var_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00271_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00271_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn641:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]                         # fn
                        lea              rsi, [rbp + 1536]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n00227_disjunction_af
                                                                                        jmp   n00227_disjunction_as
n00271_call_builtin_icon_β:
                                                                                        jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00272_call_builtin_icon_α
n00231_var_β:
                                                                                        jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00272_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn645:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]                         # fn
                        lea              rsi, [rbp + 1472]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n00227_disjunction_af
                                                                                        jmp   n00227_disjunction_as
n00272_call_builtin_icon_β:
                                                                                        jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00228_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00273_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00274_lit_integer_α
n00228_lit_string_β:
                                                                                        jmp   n00227_disjunction_af
.Lx00273_0:
                        .quad            .Lx00273_0_s
.Lx00273_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00274_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00275_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00276_scan_tab_α
.Lx00275_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00276_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00277_0
                        add              rax, r15
                        add              rax, 1
.Lx00277_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00277_239
                        add              rsp, 16
                                                                                        jmp   n00227_disjunction_af
.Lx00277_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00277_240
                        add              rsp, 16
                                                                                        jmp   n00227_disjunction_af
.Lx00277_240:
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
                                                                                        jmp   n00278_binop_test_α
n00276_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00278_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # lhs
                        mov              rsi, qword ptr [rbp + 1400]                    # lhs
                        mov              rdx, qword ptr [rbp + 1408]                    # rhs
                        mov              rcx, qword ptr [rbp + 1416]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00227_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]                    # d
                        mov              rsi, qword ptr [rbp + 1416]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00227_disjunction_as
n00278_binop_test_β:
                                                                                        jmp   n00227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00171_scan_α:
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00159_var_α
n00171_scan_β:
                                                                                        jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00188_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00279_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00280_scan_match_α
n00188_lit_string_β:
                                                                                        jmp   n00187_disjunction_af
.Lx00279_0:
                        .quad            .Lx00279_0_s
.Lx00279_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00280_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00281_239
                        add              rsp, 16
                                                                                        jmp   n00187_disjunction_af
.Lx00281_239:
                        mov              rdi, qword ptr [rip + .Lx00281_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00281_240
                        add              rsp, 16
                                                                                        jmp   n00187_disjunction_af
.Lx00281_240:
                        mov              qword ptr [rbp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00282_scan_tab_α
.Lx00281_0:
                        .quad            .Lx00281_0_s
.Lx00281_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00282_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00283_0
                        add              rax, r15
                        add              rax, 1
.Lx00283_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00283_239
                        add              rsp, 16
                                                                                        jmp   n00187_disjunction_af
.Lx00283_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00283_240
                        add              rsp, 16
                                                                                        jmp   n00187_disjunction_af
.Lx00283_240:
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
                                                                                        jmp   n00284_lit_integer_α
n00282_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00187_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00285_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00286_scan_pos_α
.Lx00285_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00286_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00287_0
                        add              rax, r15
                        add              rax, 1
.Lx00287_0:
                        cmp              rax, 1
                                                                                        jl    n00282_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00282_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00282_scan_tab_β
                        mov              qword ptr [rbp + 2080], 3
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00288_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00288_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00162_var_α
n00288_conjunction_β:
                                                                                        jmp   n00187_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00162_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00289_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00290_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn667:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn667]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n00291_var_α
                                                                                        jmp   n00292_call_builtin_icon_α
n00290_call_builtin_icon_β:
                                                                                        jmp   n00291_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn669:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn669]                         # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n00291_var_α
                                                                                        jmp   n00162_var_α
n00292_call_builtin_icon_β:
                                                                                        jmp   n00291_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00291_var_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00293_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00293_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2768]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00294_2]
                        lea              rdx, [rip + .Lx00294_3]
                                                                                        jmp   proc_options_α
.Lx00294_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00294_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 448
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_α:
                        sub              rsp, 368
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00296_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00296_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052352], rax                    # Name__
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00297_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00297_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00298_2
.Lx00298_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n00299_call_proc_staged_α
                                                                                        jmp   n00299_call_proc_staged_α
n00297_call_proc_staged_β:
                                                                                        jmp   n00299_call_proc_staged_α
.Lx00298_0:
                        .quad            .Lx00298_0_s
.Lx00298_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00299_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00300_2
.Lx00300_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n00301_call_proc_staged_α
                                                                                        jmp   n00301_call_proc_staged_α
n00299_call_proc_staged_β:
                                                                                        jmp   n00301_call_proc_staged_α
.Lx00300_0:
                        .quad            .Lx00300_0_s
.Lx00300_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00301_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00302_2
.Lx00302_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00303_disjunction_α
                                                                                        jmp   n00303_disjunction_α
n00301_call_proc_staged_β:
                                                                                        jmp   n00303_disjunction_α
.Lx00302_0:
                        .quad            .Lx00302_0_s
.Lx00302_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00303_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00304_lit_string_α
n00303_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00305_0
                                                                                        jmp   n00306_var_α
.Lx00305_0:
                                                                                        jmp   n00306_var_α
n00303_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00306_var_α
n00303_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_α:
                        mov              rdi, qword ptr [rip + .Lx00307_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00308_var_α
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00309_assign_α
.Lx00307_0:
                        .quad            .Lx00307_0_s
.Lx00307_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00309_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052320], rax                    # Save__
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00308_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_var_α:
                        mov              rdi, qword ptr [rip + .Lx00310_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00311_lit_integer_α
                        mov              qword ptr [rbp + 80], rax                      # result
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00312_assign_α
.Lx00310_0:
                        .quad            .Lx00310_0_s
.Lx00310_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00312_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052336], rax                    # Saves__
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00311_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00311_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00313_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00314_assign_α
.Lx00313_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00314_assign_α:
                        mov              rsi, qword ptr [rbp + 64]                      # val
                        mov              rdx, qword ptr [rbp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx00315_0]                # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00316_assign_α
.Lx00315_0:
                        .quad            .Lx00315_0_s
.Lx00315_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00316_assign_α:
                        mov              rsi, qword ptr [rbp + 48]                      # val
                        mov              rdx, qword ptr [rbp + 56]                      # val
                        mov              rdi, qword ptr [rip + .Lx00317_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00318_return_α
.Lx00317_0:
                        .quad            .Lx00317_0_s
.Lx00317_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00318_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 368
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00319_conjunction_α:
                                                                                        jmp   n00303_disjunction_as
n00319_conjunction_β:
                                                                                        jmp   n00306_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00320_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00321_call_builtin_icon_α
n00304_lit_string_β:
                                                                                        jmp   n00303_disjunction_af
.Lx00320_0:
                        .quad            .Lx00320_0_s
.Lx00320_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn716:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn716]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00303_disjunction_af
                                                                                        jmp   n00322_lit_string_α
n00321_call_builtin_icon_β:
                                                                                        jmp   n00303_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00322_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00323_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00324_call_builtin_icon_α
.Lx00323_0:
                        .quad            .Lx00323_0_s
.Lx00323_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00324_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn719:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn719]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00325_return_α
                                                                                        jmp   n00325_return_α
n00324_call_builtin_icon_β:
                                                                                        jmp   n00325_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00325_return_α:
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 464]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00326_2]
                        lea              rdx, [rip + .Lx00326_3]
                                                                                        jmp   proc_Init___α
.Lx00326_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00326_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 496
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00327_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00328_lit_string_α
n00327_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00329_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00330_var_α
.Lx00329_0:
                                                                                        jmp   n00330_var_α
n00327_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00330_var_α
n00327_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00330_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00331_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00332_call_builtin_icon_α
n00328_lit_string_β:
                                                                                        jmp   n00333_var_α
.Lx00331_0:
                        .quad            .Lx00331_0_s
.Lx00331_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00332_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn743:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn743]                         # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n00333_var_α
                                                                                        jmp   n00327_disjunction_af
n00332_call_builtin_icon_β:
                                                                                        jmp   n00333_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00334_var_α
n00333_var_β:
                                                                                        jmp   n00327_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00334_var_α:
                        mov              rax, qword ptr [1879052320]                    # Save__
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 352], rax                     # result
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00335_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00335_assign_α:
                        mov              rsi, qword ptr [rbp + 352]                     # val
                        mov              rdx, qword ptr [rbp + 360]                     # val
                        mov              rdi, qword ptr [rip + .Lx00336_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00337_var_α
.Lx00336_0:
                        .quad            .Lx00336_0_s
.Lx00336_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00337_var_α:
                        mov              rax, qword ptr [1879052336]                    # Saves__
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 320], rax                     # result
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00338_assign_α:
                        mov              rsi, qword ptr [rbp + 320]                     # val
                        mov              rdx, qword ptr [rbp + 328]                     # val
                        mov              rdi, qword ptr [rip + .Lx00339_0]                # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00340_conjunction_α
.Lx00339_0:
                        .quad            .Lx00339_0_s
.Lx00339_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00340_conjunction_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00327_disjunction_as
n00340_conjunction_β:
                                                                                        jmp   n00330_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00330_var_α:
                        mov              rax, qword ptr [1879052352]                    # Name__
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00341_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00342_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00343_call_proc_staged_α
.Lx00342_0:
                        .quad            .Lx00342_0_s
.Lx00342_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00343_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00344_2
.Lx00344_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00345_call_proc_staged_α
                                                                                        jmp   n00346_call_builtin_icon_α
n00343_call_proc_staged_β:
                                                                                        jmp   n00345_call_proc_staged_α
.Lx00344_0:
                        .quad            .Lx00344_0_s
.Lx00344_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00346_call_builtin_icon_α:
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
                        lea              rdi, [rip + .Lrkfn755]                         # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n00345_call_proc_staged_α
                                                                                        jmp   n00345_call_proc_staged_α
n00346_call_builtin_icon_β:
                                                                                        jmp   n00345_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00345_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00347_2
.Lx00347_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00348_call_proc_staged_α
                                                                                        jmp   n00348_call_proc_staged_α
n00345_call_proc_staged_β:
                                                                                        jmp   n00348_call_proc_staged_α
.Lx00347_0:
                        .quad            .Lx00347_0_s
.Lx00347_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00348_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00349_2
.Lx00349_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n00350_call_proc_staged_α
                                                                                        jmp   n00350_call_proc_staged_α
n00348_call_proc_staged_β:
                                                                                        jmp   n00350_call_proc_staged_α
.Lx00349_0:
                        .quad            .Lx00349_0_s
.Lx00349_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00350_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00351_2
.Lx00351_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00352_return_α
                                                                                        jmp   n00352_return_α
n00350_call_proc_staged_β:
                                                                                        jmp   n00352_return_α
.Lx00351_0:
                        .quad            .Lx00351_0_s
.Lx00351_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00352_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 256
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 512]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00353_2]
                        lea              rdx, [rip + .Lx00353_3]
                                                                                        jmp   proc_Term___α
.Lx00353_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00353_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 928
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00354_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00355_var_ref_α
n00354_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00356_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00357_make_list_α
.Lx00356_0:
                                                                                        jmp   n00357_make_list_α
n00354_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00357_make_list_α
n00354_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00357_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00358_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00358_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00359_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00360_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00361_1:
                        mov              rdi, qword ptr [rip + .Lx00361_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00361_240
                        add              rsp, 2064
                                                                                        jmp   n00362_lit_string_α
.Lx00361_240:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00363_call_builtin_icon_α
n00360_keyword_icon_gen_β:
                                                                                        jmp   .Lx00361_1
.Lx00361_0:
                        .quad            .Lx00361_0_s
.Lx00361_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00363_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn810:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn810]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00360_keyword_icon_gen_β
                                                                                        jmp   n00360_keyword_icon_gen_β
n00363_call_builtin_icon_β:
                                                                                        jmp   n00360_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00362_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00364_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00365_call_builtin_icon_α
.Lx00364_0:
                        .quad            .Lx00364_0_s
.Lx00364_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00365_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn813:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn813]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00366_lit_integer_α
                                                                                        jmp   n00366_lit_integer_α
n00365_call_builtin_icon_β:
                                                                                        jmp   n00366_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00366_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00367_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00368_var_α
.Lx00367_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00368_var_α:
                        mov              rax, qword ptr [1879052496]                    # Collections____STATIC__labels
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00369_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00369_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00370_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00371_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00372_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00373_assign_α
n00370_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00371_0
#-----------------------------------------------------------------------------------------------------------------------
n00373_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00374_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00375_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                                # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00376_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00377_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00377_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00378_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00379_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00379_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00378_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00380_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00381_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00382_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00378_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00383_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00383_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00378_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00384_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00385_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00386_call_builtin_icon_α
.Lx00385_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00386_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn836:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn836]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00378_unmark_α
                                                                                        jmp   n00387_call_builtin_icon_α
n00386_call_builtin_icon_β:
                                                                                        jmp   n00378_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn838:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn838]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00378_unmark_α
                                                                                        jmp   n00378_unmark_α
n00387_call_builtin_icon_β:
                                                                                        jmp   n00378_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00378_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00370_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00372_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00355_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                                # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00388_nulltest_var_α
n00355_var_ref_β:
                                                                                        jmp   n00354_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00388_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 104
                                                                                        je    n00354_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]                     # d
                        mov              rsi, qword ptr [rbp + 824]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00354_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00354_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00389_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00390_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00391_assign_var_α
.Lx00390_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00391_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]                     # var
                        mov              rsi, qword ptr [rbp + 840]                     # var
                        mov              rdx, qword ptr [rbp + 864]                     # val
                        mov              rcx, qword ptr [rbp + 872]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00354_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00393_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00394_lit_string_α
.Lx00393_0:
                        .quad            .Lx00393_0_s
.Lx00393_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00394_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00395_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00396_lit_string_α
.Lx00395_0:
                        .quad            .Lx00395_0_s
.Lx00395_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00396_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00397_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00398_lit_string_α
.Lx00397_0:
                        .quad            .Lx00397_0_s
.Lx00397_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00398_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00399_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00400_make_list_α
.Lx00399_0:
                        .quad            .Lx00399_0_s
.Lx00399_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00400_make_list_α:
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
                                                                                        jmp   n00401_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052496], rax                    # Collections____STATIC__labels
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00354_disjunction_as
n00401_assign_β:
                                                                                        jmp   n00357_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 944]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00402_2]
                        lea              rdx, [rip + .Lx00402_3]
                                                                                        jmp   proc_Collections___α
.Lx00402_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00402_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00403_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00404_var_ref_α
n00403_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00405_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00406_make_list_α
.Lx00405_0:
                                                                                        jmp   n00406_make_list_α
n00403_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00406_make_list_α
n00403_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00406_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00407_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00407_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00408_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00408_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00409_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00409_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00410_1:
                        mov              rdi, qword ptr [rip + .Lx00410_0]                # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00410_240
                        add              rsp, 1376
                                                                                        jmp   n00411_lit_string_α
.Lx00410_240:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00412_call_builtin_icon_α
n00409_keyword_icon_gen_β:
                                                                                        jmp   .Lx00410_1
.Lx00410_0:
                        .quad            .Lx00410_0_s
.Lx00410_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00412_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn900:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn900]                         # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00409_keyword_icon_gen_β
                                                                                        jmp   n00409_keyword_icon_gen_β
n00412_call_builtin_icon_β:
                                                                                        jmp   n00409_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00411_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00413_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00414_call_builtin_icon_α
.Lx00413_0:
                        .quad            .Lx00413_0_s
.Lx00413_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00414_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn903:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn903]                         # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00415_lit_integer_α
                                                                                        jmp   n00415_lit_integer_α
n00414_call_builtin_icon_β:
                                                                                        jmp   n00415_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00416_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00417_var_α
.Lx00416_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00417_var_α:
                        mov              rax, qword ptr [1879052528]                    # Regions____STATIC__labels
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00418_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00418_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00419_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00419_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00420_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00421_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00422_assign_α
n00419_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00420_0
#-----------------------------------------------------------------------------------------------------------------------
n00422_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00423_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00424_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052528                                # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00425_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00426_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00426_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00427_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00428_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00428_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00427_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00429_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00429_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00431_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00431_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00427_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00432_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00432_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00427_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00433_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00433_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00434_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00435_call_builtin_icon_α
.Lx00434_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00435_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn926:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn926]                         # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00427_unmark_α
                                                                                        jmp   n00436_call_builtin_icon_α
n00435_call_builtin_icon_β:
                                                                                        jmp   n00427_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn928:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn928]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00427_unmark_α
                                                                                        jmp   n00427_unmark_α
n00436_call_builtin_icon_β:
                                                                                        jmp   n00427_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00427_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00419_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00421_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00404_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052544                                # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00437_nulltest_var_α
n00404_var_ref_β:
                                                                                        jmp   n00403_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00437_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00403_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00403_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00403_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00438_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00439_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00440_assign_var_α
.Lx00439_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00440_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00403_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00441_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00442_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00443_lit_string_α
.Lx00442_0:
                        .quad            .Lx00442_0_s
.Lx00442_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00443_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00444_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00445_lit_string_α
.Lx00444_0:
                        .quad            .Lx00444_0_s
.Lx00444_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00445_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00446_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00447_make_list_α
.Lx00446_0:
                        .quad            .Lx00446_0_s
.Lx00446_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00447_make_list_α:
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
                                                                                        jmp   n00448_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00448_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052528], rax                    # Regions____STATIC__labels
                        mov              qword ptr [1879052536], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00403_disjunction_as
n00448_assign_β:
                                                                                        jmp   n00406_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00449_2]
                        lea              rdx, [rip + .Lx00449_3]
                                                                                        jmp   proc_Regions___α
.Lx00449_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00449_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00450_keyword_icon_α:
                        sub              rsp, 192
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
                        mov              rdi, qword ptr [rip + .Lx00451_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00452_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00453_call_builtin_icon_α
n00450_keyword_icon_β:
                                                                                        jmp   n00452_keyword_icon_α
.Lx00451_0:
                        .quad            .Lx00451_0_s
.Lx00451_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00453_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn953:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn953]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n00452_keyword_icon_α
                                                                                        jmp   n00452_keyword_icon_α
n00453_call_builtin_icon_β:
                                                                                        jmp   n00452_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00454_0]                # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00455_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00456_call_builtin_icon_α
n00452_keyword_icon_β:
                                                                                        jmp   n00455_keyword_icon_gen_α
.Lx00454_0:
                        .quad            .Lx00454_0_s
.Lx00454_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00456_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn956:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn956]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n00455_keyword_icon_gen_α
                                                                                        jmp   n00455_keyword_icon_gen_α
n00456_call_builtin_icon_β:
                                                                                        jmp   n00455_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00455_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00457_1:
                        mov              rdi, qword ptr [rip + .Lx00457_0]                # sval
                        mov              rsi, qword ptr [rbp + 80]                      # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00457_240
                        add              rsp, 192
                                                                                        jmp   n00458_return_α
.Lx00457_240:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00459_call_builtin_icon_α
n00455_keyword_icon_gen_β:
                                                                                        jmp   .Lx00457_1
.Lx00457_0:
                        .quad            .Lx00457_0_s
.Lx00457_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00459_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn959:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn959]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00455_keyword_icon_gen_β
                                                                                        jmp   n00455_keyword_icon_gen_β
n00459_call_builtin_icon_β:
                                                                                        jmp   n00455_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00458_return_α:
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00460_2]
                        lea              rdx, [rip + .Lx00460_3]
                                                                                        jmp   proc_Signature___α
.Lx00460_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00460_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00461_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00462_var_ref_α
n00461_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00463_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00464_make_list_α
.Lx00463_0:
                                                                                        jmp   n00464_make_list_α
n00461_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00464_make_list_α
n00461_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00464_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00464_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00465_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00466_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00467_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00468_1:
                        mov              rdi, qword ptr [rip + .Lx00468_0]               # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00468_240
                        add              rsp, 1376
                                                                                        jmp   n00469_lit_string_α
.Lx00468_240:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00470_call_builtin_icon_α
n00467_keyword_icon_gen_β:
                                                                                        jmp   .Lx00468_1
.Lx00468_0:
                        .quad            .Lx00468_0_s
.Lx00468_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00470_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1007:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1007]                        # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00467_keyword_icon_gen_β
                                                                                        jmp   n00467_keyword_icon_gen_β
n00470_call_builtin_icon_β:
                                                                                        jmp   n00467_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00469_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00471_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00472_call_builtin_icon_α
.Lx00471_0:
                        .quad            .Lx00471_0_s
.Lx00471_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00472_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1010:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1010]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00473_lit_integer_α
                                                                                        jmp   n00473_lit_integer_α
n00472_call_builtin_icon_β:
                                                                                        jmp   n00473_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00474_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00475_var_α
.Lx00474_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00475_var_α:
                        mov              rax, qword ptr [1879052560]                    # Storage____STATIC__labels
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00476_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00476_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00477_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00478_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00479_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00480_assign_α
n00477_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00478_0
#-----------------------------------------------------------------------------------------------------------------------
n00480_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n00481_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00482_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00482_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                                # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00483_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00484_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00485_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00486_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00486_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00485_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00487_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00488_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00488_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00489_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00485_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00490_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00485_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00491_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00491_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00492_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00493_call_builtin_icon_α
.Lx00492_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00493_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1033:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1033]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00485_unmark_α
                                                                                        jmp   n00494_call_builtin_icon_α
n00493_call_builtin_icon_β:
                                                                                        jmp   n00485_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1035:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1035]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00485_unmark_α
                                                                                        jmp   n00485_unmark_α
n00494_call_builtin_icon_β:
                                                                                        jmp   n00485_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00485_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00477_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00479_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00462_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                                # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00495_nulltest_var_α
n00462_var_ref_β:
                                                                                        jmp   n00461_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00495_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00461_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00461_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00461_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00496_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00496_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00497_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00498_assign_var_α
.Lx00497_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00498_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00461_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00499_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00499_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00500_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00501_lit_string_α
.Lx00500_0:
                        .quad            .Lx00500_0_s
.Lx00500_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00501_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00502_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00503_lit_string_α
.Lx00502_0:
                        .quad            .Lx00502_0_s
.Lx00502_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00503_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00504_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00505_make_list_α
.Lx00504_0:
                        .quad            .Lx00504_0_s
.Lx00504_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00505_make_list_α:
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
                                                                                        jmp   n00506_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00506_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052560], rax                    # Storage____STATIC__labels
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00461_disjunction_as
n00506_assign_β:
                                                                                        jmp   n00464_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00507_2]
                        lea              rdx, [rip + .Lx00507_3]
                                                                                        jmp   proc_Storage___α
.Lx00507_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00507_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00508_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00509_var_ref_α
n00508_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00510_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00511_keyword_icon_α
.Lx00510_0:
                                                                                        jmp   n00511_keyword_icon_α
n00508_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00511_keyword_icon_α
n00508_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00511_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00511_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00512_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00512_240
                        add              rsp, 192
                                                                                        jmp   proc_Time___ω
.Lx00512_240:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00513_var_α
n00511_keyword_icon_β:
                        add              rsp, 192
                                                                                        jmp   proc_Time___ω
.Lx00512_0:
                        .quad            .Lx00512_0_s
.Lx00512_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00513_var_α:
                        mov              rax, qword ptr [1879052592]                    # Time____STATIC__lasttime
                        mov              rdx, qword ptr [1879052600]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00514_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00514_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx00515_1
                        cmp              eax, 3
                                                                                        jne   .Lx00515_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx00515_0
.Lx00515_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00516_coerce_numeric_α
.Lx00515_0:
                        lea              rdi, [rbp + 64]                                # self
                        lea              rsi, [rbp + 96]                                # other
                        lea              rdx, [rbp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00516_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00516_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx00517_1
                        cmp              eax, 3
                                                                                        jne   .Lx00517_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx00517_0
.Lx00517_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00518_binop_α
.Lx00517_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 64]                                # other
                        lea              rdx, [rbp + 32]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00518_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00518_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx00519_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00519_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00520_return_α
.Lx00519_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx00519_240
                        add              rsp, 192
                                                                                        jmp   proc_Time___ω
.Lx00519_240:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00520_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        add              rsp, 192
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00509_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                                # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00521_nulltest_var_α
n00509_var_ref_β:
                                                                                        jmp   n00508_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00521_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 104
                                                                                        je    n00508_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00508_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00508_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00522_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00523_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00524_assign_var_α
.Lx00523_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00524_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00508_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00525_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00525_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00526_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00511_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00527_assign_α
n00525_keyword_icon_β:
                                                                                        jmp   n00511_keyword_icon_α
.Lx00526_0:
                        .quad            .Lx00526_0_s
.Lx00526_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00527_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052592], rax                    # Time____STATIC__lasttime
                        mov              qword ptr [1879052600], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00508_disjunction_as
n00527_assign_β:
                                                                                        jmp   n00511_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00528_2]
                        lea              rdx, [rip + .Lx00528_3]
                                                                                        jmp   proc_Time___α
.Lx00528_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00528_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 736
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00529_call_proc_staged_α:
                        sub              rsp, 560
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
                        mov              edi, 3
                        call             rt_proc_call_open_det0@PLT
                        test             rax, rax
                                                                                        je    .Lx00530_1
                        lea              rcx, [rip + .Lx00530_3]
                        lea              rdx, [rip + .Lx00530_4]
                                                                                        jmp   rax
.Lx00530_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00530_2
.Lx00530_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00530_2
.Lx00530_1:
                        call             rt_faildescr@PLT
.Lx00530_2:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n00531_var_α
                                                                                        jmp   n00531_var_α
n00529_call_proc_staged_β:
                                                                                        jmp   n00531_var_α
.Lx00530_0:
                        .quad            .Lx00530_0_s
.Lx00530_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00531_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00532_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00532_lit_string_α:
                        mov              qword ptr [rbp + 656], 2                       # result
                        mov              dword ptr [rbp + 660], 2
                        mov              rax, qword ptr [rip + .Lx00533_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00534_call_proc_staged_α
.Lx00533_0:
                        .quad            .Lx00533_0_s
.Lx00533_0_s:
                        .string          "n+"
#-----------------------------------------------------------------------------------------------------------------------
n00534_call_proc_staged_α:
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 656]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00535_2
.Lx00535_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n00536_disjunction_α
                                                                                        jmp   n00537_assign_α
n00534_call_proc_staged_β:
                                                                                        jmp   n00536_disjunction_α
.Lx00535_0:
                        .quad            .Lx00535_0_s
.Lx00535_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00537_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00536_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00536_disjunction_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   n00538_var_ref_α
n00536_disjunction_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx00539_0
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00540_assign_α
.Lx00539_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00539_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00540_assign_α
.Lx00539_1:
                                                                                        jmp   n00540_assign_α
n00536_disjunction_β:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        je    n00536_disjunction_af
                                                                                        jmp   n00536_disjunction_af
n00536_disjunction_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 1
                                                                                        je    n00541_lit_integer_α
                                                                                        jmp   n00542_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00540_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [1879052288], rax                    # n
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00542_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00542_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n00543_var_α
n00542_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx00544_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00545_var_α
.Lx00544_0:
                                                                                        jmp   n00545_var_α
n00542_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n00545_var_α
n00542_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n00545_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00543_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 416], rax                     # result
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00546_lit_integer_α
n00543_var_β:
                                                                                        jmp   n00542_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00546_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00547_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00548_binop_test_α
.Lx00547_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00548_binop_test_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 112
                                                                                        je    .Lx00549_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 112
                                                                                        je    .Lx00549_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx00549_2
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx00549_2
.Lx00549_1:
                        mov              rax, qword ptr [rbp + 424]
                        mov              rcx, qword ptr [rbp + 440]
                        cmp              rax, rcx
                                                                                        jg    n00542_disjunction_af
                        mov              rcx, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rcx
                        mov              rcx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rcx
                                                                                        jmp   n00550_lit_string_α
.Lx00549_0:
                        mov              rdi, qword ptr [rbp + 416]                     # a
                        mov              rsi, qword ptr [rbp + 424]                     # a
                        mov              rdx, qword ptr [rbp + 432]                     # b
                        mov              rcx, qword ptr [rbp + 440]                     # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 400]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00549_1
                        cmp              eax, 1
                                                                                        je    n00542_disjunction_af
                                                                                        jmp   n00550_lit_string_α
.Lx00549_2:
                        mov              rdi, qword ptr [rbp + 416]                     # lhs
                        mov              rsi, qword ptr [rbp + 424]                     # lhs
                        mov              rdx, qword ptr [rbp + 432]                     # rhs
                        mov              rcx, qword ptr [rbp + 440]                     # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00542_disjunction_af
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00550_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00550_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 37
                        mov              rax, qword ptr [rip + .Lx00551_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00552_call_builtin_icon_α
.Lx00551_0:
                        .quad            .Lx00551_0_s
.Lx00551_0_s:
                        .string          "-n needs a positive numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00552_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn1128:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1128]                        # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n00545_var_α
                                                                                        jmp   n00542_disjunction_as
n00552_call_builtin_icon_β:
                                                                                        jmp   n00545_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00545_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 288], rax                     # result
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00553_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00553_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn1131:             .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1131]                        # fn
                        lea              rsi, [rbp + 256]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        je    n00554_var_α
                                                                                        jmp   n00555_assign_α
n00553_call_builtin_icon_β:
                                                                                        jmp   n00554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00555_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [1879052304], rax                    # solution
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00554_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_var_α:
                        mov              rax, qword ptr [1879052288]                    # n
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00556_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 8
                        mov              rax, qword ptr [rip + .Lx00557_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00558_call_builtin_icon_α
.Lx00557_0:
                        .quad            .Lx00557_0_s
.Lx00557_0_s:
                        .string          "-Queens:"
#-----------------------------------------------------------------------------------------------------------------------
n00558_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1136:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1136]                        # fn
                        lea              rsi, [rbp + 144]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n00559_lit_integer_α
                                                                                        jmp   n00559_lit_integer_α
n00558_call_builtin_icon_β:
                                                                                        jmp   n00559_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00559_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00560_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00561_call_proc_staged_α
.Lx00560_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00561_call_proc_staged_α:
                        lea              rsi, [rbp + 112]
                        call             proc_q_dcα
                                                                                        jmp   .Lx00562_2
.Lx00562_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n00563_call_proc_staged_α
                                                                                        jmp   n00563_call_proc_staged_α
n00561_call_proc_staged_β:
                                                                                        jmp   n00563_call_proc_staged_α
.Lx00562_0:
                        .quad            .Lx00562_0_s
.Lx00562_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00563_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx00564_2
.Lx00564_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx00564_240
                        add              rsp, 560
                                                                                        jmp   main_ω
.Lx00564_240:
                        add              rsp, 560
                                                                                        jmp   main_γ
n00563_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00564_0:
                        .quad            .Lx00564_0_s
.Lx00564_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00541_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00565_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00536_disjunction_as
n00541_lit_integer_β:
                                                                                        jmp   n00536_disjunction_af
.Lx00565_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n00538_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00566_lit_string_α
n00538_var_ref_β:
                                                                                        jmp   n00536_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00566_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Lx00567_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00568_subscript_α
.Lx00567_0:
                        .quad            .Lx00567_0_s
.Lx00567_0_s:
                        .string          "n"
#-----------------------------------------------------------------------------------------------------------------------
n00568_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        mov              rdx, qword ptr [rbp + 512]                     # idx
                        mov              rcx, qword ptr [rbp + 520]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00536_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00569_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00569_deref_α:
                        mov              rdi, qword ptr [rbp + 528]                     # d
                        mov              rsi, qword ptr [rbp + 536]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00536_disjunction_af
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00570_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00570_unop_test_α:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 104
                                                                                        je    n00536_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00536_disjunction_af
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00536_disjunction_as
n00570_unop_test_β:
                                                                                        jmp   n00536_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 768]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, qword ptr [rbp + 760]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 768]
                        mov              rcx, qword ptr [rbp + 752]
                        mov              rbp, qword ptr [rbp + 760]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
