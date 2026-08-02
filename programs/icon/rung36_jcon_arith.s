                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_numtest_α
proc_numtest_α:
proc_numtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 2336], 0
                        mov              qword ptr [rbp + 2344], 0
                        mov              dword ptr [rbp + 2352], 0
                                                                                        jmp   n98_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 2352]
                        cmp              eax, 0
                                                                                        jne   .Lx105_0
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n1_var_α
.Lx105_0:
                                                                                        jmp   n1_var_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 2352]
                                                                                        jmp   n1_var_α
n0_disjunction_af:
                        add              dword ptr [rbp + 2352], 1
                        mov              eax, dword ptr [rbp + 2352]
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n2_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n2_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx109_1
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx109_0
.Lx109_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n3_unop_α
.Lx109_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 2304]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n3_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n3_unop_α:
                        mov              rdi, qword ptr [rbp + 2304]                    # a
                        mov              rsi, qword ptr [rbp + 2312]                    # a
                        call             rt_num_pos@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n4_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_proc_staged_α:
                        lea              rsi, [rbp + 2288]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx112_2
.Lx112_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 104
                                                                                        je    n5_var_α
                                                                                        jmp   n5_var_α
n4_call_proc_staged_β:
                                                                                        jmp   n5_var_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n6_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        lea              rsi, [rbp + 2224]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx116_2
.Lx116_2:
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 104
                                                                                        je    n7_var_α
                                                                                        jmp   n7_var_α
n6_call_proc_staged_β:
                                                                                        jmp   n7_var_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn120:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]                         # fn
                        lea              rsi, [rbp + 2128]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 104
                                                                                        je    n10_var_α
                                                                                        jmp   n9_call_proc_staged_α
n8_call_builtin_icon_β:
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_proc_staged_α:
                        lea              rsi, [rbp + 2112]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx122_2
.Lx122_2:
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 104
                                                                                        je    n10_var_α
                                                                                        jmp   n10_var_α
n9_call_proc_staged_β:
                                                                                        jmp   n10_var_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n11_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx126_1
                        cmp              eax, 3
                                                                                        jne   .Lx126_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx126_0
.Lx126_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n12_unop_α
.Lx126_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 2032]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n12_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n12_unop_α:
                        mov              rdi, qword ptr [rbp + 2032]                    # a
                        mov              rsi, qword ptr [rbp + 2040]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α:
                        lea              rsi, [rbp + 2016]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx129_2
.Lx129_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 104
                                                                                        je    n14_var_α
                                                                                        jmp   n14_var_α
n13_call_proc_staged_β:
                                                                                        jmp   n14_var_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n16_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx135_1
                        cmp              eax, 3
                                                                                        jne   .Lx135_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx135_0
.Lx135_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n17_coerce_numeric_α
.Lx135_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 1920]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n17_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n17_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx137_1
                        cmp              eax, 3
                                                                                        jne   .Lx137_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx137_0
.Lx137_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n18_binop_α
.Lx137_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1904]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n18_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx138_0
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 3
                                                                                        jne   .Lx138_0
                        mov              rax, qword ptr [rbp + 1928]
                        mov              rcx, qword ptr [rbp + 1912]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1888], 3
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n19_call_proc_staged_α
.Lx138_0:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1904]
                        mov              rcx, qword ptr [rbp + 1912]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n20_var_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n19_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_proc_staged_α:
                        lea              rsi, [rbp + 1888]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx140_2
.Lx140_2:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 104
                                                                                        je    n20_var_α
                                                                                        jmp   n20_var_α
n19_call_proc_staged_β:
                                                                                        jmp   n20_var_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n22_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx146_1
                        cmp              eax, 3
                                                                                        jne   .Lx146_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx146_0
.Lx146_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n23_coerce_numeric_α
.Lx146_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 1792]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n23_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx148_1
                        cmp              eax, 3
                                                                                        jne   .Lx148_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx148_0
.Lx148_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n24_binop_α
.Lx148_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1776]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n24_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 3
                                                                                        jne   .Lx149_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 3
                                                                                        jne   .Lx149_0
                        mov              rax, qword ptr [rbp + 1800]
                        mov              rcx, qword ptr [rbp + 1784]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1760], 3
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n25_call_proc_staged_α
.Lx149_0:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n26_var_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n25_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α:
                        lea              rsi, [rbp + 1760]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx151_2
.Lx151_2:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 104
                                                                                        je    n26_var_α
                                                                                        jmp   n26_var_α
n25_call_proc_staged_β:
                                                                                        jmp   n26_var_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n28_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx157_1
                        cmp              eax, 3
                                                                                        jne   .Lx157_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx157_0
.Lx157_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n29_coerce_numeric_α
.Lx157_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 1664]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n29_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n29_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx159_1
                        cmp              eax, 3
                                                                                        jne   .Lx159_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx159_0
.Lx159_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n30_binop_α
.Lx159_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1648]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 3
                                                                                        jne   .Lx160_0
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 3
                                                                                        jne   .Lx160_0
                        mov              rax, qword ptr [rbp + 1672]
                        mov              rcx, qword ptr [rbp + 1656]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1632], 3
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n31_call_proc_staged_α
.Lx160_0:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n32_disjunction_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α:
                        lea              rsi, [rbp + 1632]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx162_2
.Lx162_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n32_disjunction_α
                                                                                        jmp   n32_disjunction_α
n31_call_proc_staged_β:
                                                                                        jmp   n32_disjunction_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n32_disjunction_α:
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], 0
                        mov              dword ptr [rbp + 1328], 0
                                                                                        jmp   n35_var_α
n32_disjunction_as:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        jne   .Lx164_0
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n44_disjunction_α
.Lx164_0:
                        cmp              eax, 1
                                                                                        jne   .Lx164_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n44_disjunction_α
.Lx164_1:
                                                                                        jmp   n44_disjunction_α
n32_disjunction_β:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        je    n44_disjunction_α
                                                                                        jmp   n44_disjunction_α
n32_disjunction_af:
                        add              dword ptr [rbp + 1328], 1
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 1
                                                                                        je    n33_var_α
                                                                                        jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1568], rax                    # result
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n34_call_proc_staged_α
n33_var_β:
                                                                                        jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α:
                        lea              rsi, [rbp + 1568]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx167_2
.Lx167_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n44_disjunction_α
                                                                                        jmp   n32_disjunction_as
n34_call_proc_staged_β:
                                                                                        jmp   n44_disjunction_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n36_lit_integer_α
n35_var_β:
                                                                                        jmp   n32_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n37_binop_test_α
.Lx170_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_test_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx171_0
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 112
                                                                                        je    .Lx171_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx171_2
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 3
                                                                                        jne   .Lx171_2
.Lx171_1:
                        mov              rax, qword ptr [rbp + 40]
                        mov              rcx, qword ptr [rbp + 1512]
                        cmp              rax, rcx
                                                                                        je    n32_disjunction_af
                        mov              rcx, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rcx
                        mov              rcx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rcx
                                                                                        jmp   n38_var_α
.Lx171_0:
                        mov              rdi, qword ptr [rbp + 32]                      # a
                        mov              rsi, qword ptr [rbp + 40]                      # a
                        mov              rdx, qword ptr [rbp + 1504]                    # b
                        mov              rcx, qword ptr [rbp + 1512]                    # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 1472]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx171_1
                        cmp              eax, 1
                                                                                        je    n32_disjunction_af
                                                                                        jmp   n38_var_α
.Lx171_2:
                        mov              rdi, qword ptr [rbp + 32]                      # lhs
                        mov              rsi, qword ptr [rbp + 40]                      # lhs
                        mov              rdx, qword ptr [rbp + 1504]                    # rhs
                        mov              rcx, qword ptr [rbp + 1512]                    # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n32_disjunction_af
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n40_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n40_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx177_1
                        cmp              eax, 3
                                                                                        jne   .Lx177_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx177_0
.Lx177_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n41_coerce_numeric_α
.Lx177_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 1424]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n41_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx179_1
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx179_0
.Lx179_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n42_binop_α
.Lx179_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1408]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n42_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n44_disjunction_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n43_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α:
                        lea              rsi, [rbp + 1392]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx182_2
.Lx182_2:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        je    n44_disjunction_α
                                                                                        jmp   n32_disjunction_as
n43_call_proc_staged_β:
                                                                                        jmp   n44_disjunction_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              dword ptr [rbp + 1056], 0
                                                                                        jmp   n47_var_α
n44_disjunction_as:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        jne   .Lx184_0
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n56_var_α
.Lx184_0:
                        cmp              eax, 1
                                                                                        jne   .Lx184_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n56_var_α
.Lx184_1:
                                                                                        jmp   n56_var_α
n44_disjunction_β:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        je    n56_var_α
                                                                                        jmp   n56_var_α
n44_disjunction_af:
                        add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 1
                                                                                        je    n45_var_α
                                                                                        jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1296], rax                    # result
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n46_call_proc_staged_α
n45_var_β:
                                                                                        jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_proc_staged_α:
                        lea              rsi, [rbp + 1296]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx187_2
.Lx187_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n56_var_α
                                                                                        jmp   n44_disjunction_as
n46_call_proc_staged_β:
                                                                                        jmp   n56_var_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n48_lit_integer_α
n47_var_β:
                                                                                        jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n49_binop_test_α
.Lx190_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_test_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx191_0
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 112
                                                                                        je    .Lx191_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx191_2
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 3
                                                                                        jne   .Lx191_2
.Lx191_1:
                        mov              rax, qword ptr [rbp + 40]
                        mov              rcx, qword ptr [rbp + 1240]
                        cmp              rax, rcx
                                                                                        je    n44_disjunction_af
                        mov              rcx, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rcx
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rcx
                                                                                        jmp   n50_var_α
.Lx191_0:
                        mov              rdi, qword ptr [rbp + 32]                      # a
                        mov              rsi, qword ptr [rbp + 40]                      # a
                        mov              rdx, qword ptr [rbp + 1232]                    # b
                        mov              rcx, qword ptr [rbp + 1240]                    # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 1200]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx191_1
                        cmp              eax, 1
                                                                                        je    n44_disjunction_af
                                                                                        jmp   n50_var_α
.Lx191_2:
                        mov              rdi, qword ptr [rbp + 32]                      # lhs
                        mov              rsi, qword ptr [rbp + 40]                      # lhs
                        mov              rdx, qword ptr [rbp + 1232]                    # rhs
                        mov              rcx, qword ptr [rbp + 1240]                    # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n44_disjunction_af
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n52_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n52_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx197_1
                        cmp              eax, 3
                                                                                        jne   .Lx197_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx197_0
.Lx197_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n53_coerce_numeric_α
.Lx197_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 1152]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n53_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n53_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx199_1
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx199_0
.Lx199_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n54_binop_α
.Lx199_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1136]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n54_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_mod@PLT
                        cmp              eax, 104
                                                                                        je    n56_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n55_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx202_2
.Lx202_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n56_var_α
                                                                                        jmp   n44_disjunction_as
n55_call_proc_staged_β:
                                                                                        jmp   n56_var_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n57_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx206_1
                        cmp              eax, 3
                                                                                        jne   .Lx206_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx206_0
.Lx206_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n58_unop_α
.Lx206_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 1008]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n58_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n58_unop_α:
                        mov              rdi, qword ptr [rbp + 1008]                    # a
                        mov              rsi, qword ptr [rbp + 1016]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n59_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_proc_staged_α:
                        lea              rsi, [rbp + 992]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx209_2
.Lx209_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n60_disjunction_α
                                                                                        jmp   n60_disjunction_α
n59_call_proc_staged_β:
                                                                                        jmp   n60_disjunction_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n60_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n95_var_α
n60_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx211_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n61_call_proc_staged_α
.Lx211_0:
                        cmp              eax, 1
                                                                                        jne   .Lx211_1
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n61_call_proc_staged_α
.Lx211_1:
                                                                                        jmp   n61_call_proc_staged_α
n60_disjunction_β:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        je    n60_disjunction_af
                                                                                        jmp   n60_disjunction_af
n60_disjunction_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 1
                                                                                        je    n94_var_α
                                                                                        jmp   n62_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        lea              rsi, [rbp + 848]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx213_2
.Lx213_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n60_disjunction_β
                                                                                        jmp   n62_disjunction_α
n61_call_proc_staged_β:
                                                                                        jmp   n60_disjunction_β
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n62_disjunction_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0
                                                                                        jmp   n91_var_α
n62_disjunction_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        jne   .Lx215_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n63_call_proc_staged_α
.Lx215_0:
                        cmp              eax, 1
                                                                                        jne   .Lx215_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n63_call_proc_staged_α
.Lx215_1:
                                                                                        jmp   n63_call_proc_staged_α
n62_disjunction_β:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_af
n62_disjunction_af:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1
                                                                                        je    n90_var_α
                                                                                        jmp   n64_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α:
                        lea              rsi, [rbp + 704]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx217_2
.Lx217_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n62_disjunction_β
                                                                                        jmp   n64_disjunction_α
n63_call_proc_staged_β:
                                                                                        jmp   n62_disjunction_β
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n64_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n87_var_α
n64_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx219_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n65_call_proc_staged_α
.Lx219_0:
                        cmp              eax, 1
                                                                                        jne   .Lx219_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n65_call_proc_staged_α
.Lx219_1:
                                                                                        jmp   n65_call_proc_staged_α
n64_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n64_disjunction_af
                                                                                        jmp   n64_disjunction_af
n64_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n86_var_α
                                                                                        jmp   n66_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx221_2
.Lx221_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n64_disjunction_β
                                                                                        jmp   n66_disjunction_α
n65_call_proc_staged_β:
                                                                                        jmp   n64_disjunction_β
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n66_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n83_var_α
n66_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx223_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n67_call_proc_staged_α
.Lx223_0:
                        cmp              eax, 1
                                                                                        jne   .Lx223_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n67_call_proc_staged_α
.Lx223_1:
                                                                                        jmp   n67_call_proc_staged_α
n66_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        je    n66_disjunction_af
                                                                                        jmp   n66_disjunction_af
n66_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1
                                                                                        je    n82_var_α
                                                                                        jmp   n68_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α:
                        lea              rsi, [rbp + 416]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx225_2
.Lx225_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n66_disjunction_β
                                                                                        jmp   n68_disjunction_α
n67_call_proc_staged_β:
                                                                                        jmp   n66_disjunction_β
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n68_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n79_var_α
n68_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx227_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n69_call_proc_staged_α
.Lx227_0:
                        cmp              eax, 1
                                                                                        jne   .Lx227_1
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n69_call_proc_staged_α
.Lx227_1:
                                                                                        jmp   n69_call_proc_staged_α
n68_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        je    n68_disjunction_af
                                                                                        jmp   n68_disjunction_af
n68_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 1
                                                                                        je    n78_var_α
                                                                                        jmp   n70_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_proc_staged_α:
                        lea              rsi, [rbp + 272]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx229_2
.Lx229_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n68_disjunction_β
                                                                                        jmp   n70_disjunction_α
n69_call_proc_staged_β:
                                                                                        jmp   n68_disjunction_β
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n70_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n75_var_α
n70_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx231_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n71_call_proc_staged_α
.Lx231_0:
                        cmp              eax, 1
                                                                                        jne   .Lx231_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n71_call_proc_staged_α
.Lx231_1:
                                                                                        jmp   n71_call_proc_staged_α
n70_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        je    n70_disjunction_af
                                                                                        jmp   n70_disjunction_af
n70_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 1
                                                                                        je    n74_var_α
                                                                                        jmp   n72_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx233_2
.Lx233_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n70_disjunction_β
                                                                                        jmp   n72_call_builtin_icon_α
n71_call_proc_staged_β:
                                                                                        jmp   n70_disjunction_β
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn235:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n73_return_α
                                                                                        jmp   n73_return_α
n72_call_builtin_icon_β:
                                                                                        jmp   n73_return_α
#-----------------------------------------------------------------------------------------------------------------------
n73_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 2288
                                                                                        jmp   proc_numtest_γ
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 208], rax                     # result
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n70_disjunction_as
n74_var_β:
                                                                                        jmp   n70_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n76_var_α
n75_var_β:
                                                                                        jmp   n70_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n77_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx242_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx242_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx242_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx242_2
.Lx242_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jle   n70_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rcx
                                                                                        jmp   n70_disjunction_as
.Lx242_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 160]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx242_1
                        cmp              eax, 1
                                                                                        je    n70_disjunction_af
                                                                                        jmp   n70_disjunction_as
.Lx242_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n70_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n70_disjunction_as
n77_binop_test_β:
                                                                                        jmp   n70_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 352], rax                     # result
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n68_disjunction_as
n78_var_β:
                                                                                        jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n80_var_α
n79_var_β:
                                                                                        jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n81_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx248_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx248_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx248_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx248_2
.Lx248_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jl    n68_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rcx
                                                                                        jmp   n68_disjunction_as
.Lx248_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 8                                         # op
                        lea              r9, [rbp + 304]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx248_1
                        cmp              eax, 1
                                                                                        je    n68_disjunction_af
                                                                                        jmp   n68_disjunction_as
.Lx248_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 8                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n68_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n68_disjunction_as
n81_binop_test_β:
                                                                                        jmp   n68_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 496], rax                     # result
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n66_disjunction_as
n82_var_β:
                                                                                        jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n84_var_α
n83_var_β:
                                                                                        jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n85_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx254_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx254_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx254_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx254_2
.Lx254_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        je    n66_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 448], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 456], rcx
                                                                                        jmp   n66_disjunction_as
.Lx254_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 10                                        # op
                        lea              r9, [rbp + 448]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx254_1
                        cmp              eax, 1
                                                                                        je    n66_disjunction_af
                                                                                        jmp   n66_disjunction_as
.Lx254_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 10                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n66_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n66_disjunction_as
n85_binop_test_β:
                                                                                        jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 640], rax                     # result
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n64_disjunction_as
n86_var_β:
                                                                                        jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n88_var_α
n87_var_β:
                                                                                        jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n89_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx260_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx260_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx260_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx260_2
.Lx260_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jne   n64_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rcx
                                                                                        jmp   n64_disjunction_as
.Lx260_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 592]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx260_1
                        cmp              eax, 1
                                                                                        je    n64_disjunction_af
                                                                                        jmp   n64_disjunction_as
.Lx260_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n64_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n64_disjunction_as
n89_binop_test_β:
                                                                                        jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 784], rax                     # result
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n62_disjunction_as
n90_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n92_var_α
n91_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n93_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx266_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx266_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx266_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx266_2
.Lx266_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jg    n62_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rcx
                                                                                        jmp   n62_disjunction_as
.Lx266_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 736]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx266_1
                        cmp              eax, 1
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_as
.Lx266_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n62_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n62_disjunction_as
n93_binop_test_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [1879052288]                    # numtest__STATIC__f
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 928], rax                     # result
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n60_disjunction_as
n94_var_β:
                                                                                        jmp   n60_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n96_var_α
n95_var_β:
                                                                                        jmp   n60_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n97_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx272_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx272_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx272_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx272_2
.Lx272_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jge   n60_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 880], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 888], rcx
                                                                                        jmp   n60_disjunction_as
.Lx272_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 880]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx272_1
                        cmp              eax, 1
                                                                                        je    n60_disjunction_af
                                                                                        jmp   n60_disjunction_as
.Lx272_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n60_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n60_disjunction_as
n97_binop_test_β:
                                                                                        jmp   n60_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304                                # numtest__INITFLAG__0
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n99_nulltest_var_α
n98_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 2400]                    # d
                        mov              rsi, qword ptr [rbp + 2408]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n100_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 2448], 3                      # result
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n101_assign_var_α
.Lx276_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2416]                    # var
                        mov              rsi, qword ptr [rbp + 2424]                    # var
                        mov              rdx, qword ptr [rbp + 2448]                    # val
                        mov              rcx, qword ptr [rbp + 2456]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 2384], 2                      # result
                        mov              dword ptr [rbp + 2388], 3
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n103_assign_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        mov              qword ptr [1879052288], rax                    # numtest__STATIC__f
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n0_disjunction_as
n103_assign_β:
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_β:
                                                                                        jmp   proc_numtest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_dcα:
                        pop              r11
                        sub              rsp, 2528
                        mov              qword ptr [rsp + 2504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2480], r11
                        lea              rax, [rip + .Lx280_2]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rax, [rip + .Lx280_3]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 2464                                      # suffix_off
                        mov              edx, 2480                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_numtest_α_body
.Lx280_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx280_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bitcombo_α
proc_bitcombo_α:
proc_bitcombo_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n297_var_α
n281_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx301_0
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n282_call_proc_staged_α
.Lx301_0:
                        cmp              eax, 1
                                                                                        jne   .Lx301_1
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n282_call_proc_staged_α
.Lx301_1:
                        cmp              eax, 2
                                                                                        jne   .Lx301_2
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n282_call_proc_staged_α
.Lx301_2:
                        cmp              eax, 3
                                                                                        jne   .Lx301_3
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n282_call_proc_staged_α
.Lx301_3:
                        cmp              eax, 4
                                                                                        jne   .Lx301_4
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n282_call_proc_staged_α
.Lx301_4:
                        cmp              eax, 5
                                                                                        jne   .Lx301_5
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n282_call_proc_staged_α
.Lx301_5:
                        cmp              eax, 6
                                                                                        jne   .Lx301_6
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n282_call_proc_staged_α
.Lx301_6:
                                                                                        jmp   n282_call_proc_staged_α
n281_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        je    n281_disjunction_af
                        cmp              eax, 1
                                                                                        je    n281_disjunction_af
                        cmp              eax, 2
                                                                                        je    n281_disjunction_af
                        cmp              eax, 3
                                                                                        je    n281_disjunction_af
                        cmp              eax, 4
                                                                                        je    n281_disjunction_af
                        cmp              eax, 5
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_af
n281_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 1
                                                                                        je    n296_var_α
                        cmp              eax, 2
                                                                                        je    n294_var_α
                        cmp              eax, 3
                                                                                        je    n292_var_α
                        cmp              eax, 4
                                                                                        je    n289_var_α
                        cmp              eax, 5
                                                                                        je    n286_var_α
                        cmp              eax, 6
                                                                                        je    n283_var_α
                                                                                        jmp   n298_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx303_2
.Lx303_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n281_disjunction_β
                                                                                        jmp   n281_disjunction_β
n282_call_proc_staged_β:
                                                                                        jmp   n281_disjunction_β
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n284_var_α
n283_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n285_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn309:              .string          "ixor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n285_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n287_var_α
n286_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n288_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn315:              .string          "ior"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn315]                         # fn
                        lea              rsi, [rbp + 432]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n288_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n290_var_α
n289_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n291_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn321:              .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n291_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n293_call_builtin_icon_α
n292_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn325:              .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]                         # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n293_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n295_call_builtin_icon_α
n294_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n295_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn329:              .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n295_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n281_disjunction_as
n296_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n281_disjunction_as
n297_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn335:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n299_return_α
                                                                                        jmp   n299_return_α
n298_call_builtin_icon_β:
                                                                                        jmp   n299_return_α
#-----------------------------------------------------------------------------------------------------------------------
n299_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_bitcombo_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_bitcombo_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_bitcombo_β:
                                                                                        jmp   proc_bitcombo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_bitcombo_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_bitcombo_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_bitcombo_dcα:
                        pop              r11
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 624], r11
                        lea              rax, [rip + .Lx337_2]
                        mov              qword ptr [rbp + 632], rax
                        lea              rax, [rip + .Lx337_3]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 608                                       # suffix_off
                        mov              edx, 624                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_bitcombo_α_body
.Lx337_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -656
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx337_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -656
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wr5_α
proc_wr5_α:
proc_wr5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n338_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n339_var_α
n338_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx363_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n346_var_α
.Lx363_0:
                                                                                        jmp   n346_var_α
n338_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                                                                                        jmp   n346_var_α
n338_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n340_call_builtin_icon_α
n339_var_β:
                                                                                        jmp   n338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n340_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn367:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n338_disjunction_af
                                                                                        jmp   n341_lit_string_α
n340_call_builtin_icon_β:
                                                                                        jmp   n338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 4
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n342_binop_test_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n342_binop_test_α:
                        mov              rdi, qword ptr [rbp + 544]                     # lhs
                        mov              rsi, qword ptr [rbp + 552]                     # lhs
                        mov              rdx, qword ptr [rbp + 608]                     # rhs
                        mov              rcx, qword ptr [rbp + 616]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n338_disjunction_af
                        mov              rdi, qword ptr [rbp + 608]                     # d
                        mov              rsi, qword ptr [rbp + 616]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n343_var_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n344_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n344_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        call             proc_r1_dcα
                                                                                        jmp   .Lx373_2
.Lx373_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n346_var_α
                                                                                        jmp   n345_assign_α
n344_call_proc_staged_β:
                                                                                        jmp   n346_var_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "r1"
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n338_disjunction_as
n345_assign_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n347_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n347_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn378:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n349_disjunction_α
                                                                                        jmp   n348_assign_α
n347_call_builtin_icon_β:
                                                                                        jmp   n349_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n349_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n349_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n350_var_α
n349_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx381_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n358_var_α
.Lx381_0:
                                                                                        jmp   n358_var_α
n349_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n358_var_α
n349_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n351_unop_α
n350_var_β:
                                                                                        jmp   n349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n351_unop_α:
                        mov              rdi, qword ptr [rbp + 624]                     # lo
                        mov              rsi, qword ptr [rbp + 632]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n352_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n353_binop_test_α
.Lx385_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_test_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 112
                                                                                        je    .Lx386_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 112
                                                                                        je    .Lx386_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 3
                                                                                        jne   .Lx386_2
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 3
                                                                                        jne   .Lx386_2
.Lx386_1:
                        mov              rax, qword ptr [rbp + 296]
                        mov              rcx, qword ptr [rbp + 328]
                        cmp              rax, rcx
                                                                                        jge   n349_disjunction_af
                        mov              rcx, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n354_var_α
.Lx386_0:
                        mov              rdi, qword ptr [rbp + 288]                     # a
                        mov              rsi, qword ptr [rbp + 296]                     # a
                        mov              rdx, qword ptr [rbp + 320]                     # b
                        mov              rcx, qword ptr [rbp + 328]                     # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 272]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx386_1
                        cmp              eax, 1
                                                                                        je    n349_disjunction_af
                                                                                        jmp   n354_var_α
.Lx386_2:
                        mov              rdi, qword ptr [rbp + 288]                     # lhs
                        mov              rsi, qword ptr [rbp + 296]                     # lhs
                        mov              rdx, qword ptr [rbp + 320]                     # rhs
                        mov              rcx, qword ptr [rbp + 328]                     # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n349_disjunction_af
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n354_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n355_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n356_call_builtin_icon_α
.Lx389_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n356_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn391:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn391]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n358_var_α
                                                                                        jmp   n357_assign_α
n356_call_builtin_icon_β:
                                                                                        jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n357_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n349_disjunction_as
n357_assign_β:
                                                                                        jmp   n358_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n359_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n360_call_builtin_icon_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn397:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn397]                         # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n361_return_α
                                                                                        jmp   n361_return_α
n360_call_builtin_icon_β:
                                                                                        jmp   n361_return_α
#-----------------------------------------------------------------------------------------------------------------------
n361_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 512
                                                                                        jmp   proc_wr5_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_β:
                                                                                        jmp   proc_wr5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_dcα:
                        pop              r11
                        sub              rsp, 704
                        mov              qword ptr [rsp + 680], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 656], r11
                        lea              rax, [rip + .Lx399_2]
                        mov              qword ptr [rbp + 664], rax
                        lea              rax, [rip + .Lx399_3]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 624                                       # suffix_off
                        mov              edx, 656                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wr5_α_body
.Lx399_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -688
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx399_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -688
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_r1_α
proc_r1_α:
proc_r1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n400_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n413_var_α
n400_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx429_0
                                                                                        jmp   proc_r1_ω
.Lx429_0:
                        cmp              eax, 1
                                                                                        jne   .Lx429_1
                                                                                        jmp   proc_r1_ω
.Lx429_1:
                                                                                        jmp   proc_r1_ω
n400_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    proc_r1_ω
                                                                                        jmp   proc_r1_ω
n400_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n401_var_α
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n402_lit_integer_α
n401_var_β:
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n403_coerce_numeric_α
.Lx432_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n403_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx434_1
                        cmp              eax, 3
                                                                                        jne   .Lx434_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx434_0
.Lx434_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n404_binop_α
.Lx434_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 480]                               # other
                        lea              rdx, [rbp + 448]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n404_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx435_0
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, 10
                        imul             rax, rcx
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n405_lit_real_α
.Lx435_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n405_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_real_α:
                        mov              qword ptr [rbp + 496], 5                       # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n406_coerce_numeric_α
.Lx436_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n406_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 5
                                                                                        je    .Lx438_1
                        cmp              eax, 3
                                                                                        jne   .Lx438_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 3
                                                                                        jne   .Lx438_0
.Lx438_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n407_binop_α
.Lx438_0:
                        lea              rdi, [rbp + 432]                               # self
                        lea              rsi, [rbp + 496]                               # other
                        lea              rdx, [rbp + 416]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n407_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n407_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n408_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn441:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn441]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                                                                                        jmp   n409_lit_real_α
n408_call_builtin_icon_β:
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_real_α:
                        mov              qword ptr [rbp + 512], 5                       # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n410_coerce_numeric_α
.Lx442_0:
                        .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n410_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 5
                                                                                        je    .Lx444_1
                        cmp              eax, 3
                                                                                        jne   .Lx444_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx444_0
.Lx444_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n411_binop_α
.Lx444_0:
                        lea              rdi, [rbp + 352]                               # self
                        lea              rsi, [rbp + 512]                               # other
                        lea              rdx, [rbp + 336]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n411_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n411_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n412_return_α
#-----------------------------------------------------------------------------------------------------------------------
n412_return_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_r1_γ
#-----------------------------------------------------------------------------------------------------------------------
n413_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n414_lit_integer_α
n413_var_β:
                                                                                        jmp   n400_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n415_binop_test_α
.Lx449_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n415_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx450_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 112
                                                                                        je    .Lx450_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx450_2
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx450_2
.Lx450_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jl    n400_disjunction_af
                        mov              rcx, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n416_var_α
.Lx450_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 304]                     # b
                        mov              rcx, qword ptr [rbp + 312]                     # b
                        mov              r8d, 8                                         # op
                        lea              r9, [rbp + 272]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx450_1
                        cmp              eax, 1
                                                                                        je    n400_disjunction_af
                                                                                        jmp   n416_var_α
.Lx450_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 304]                     # rhs
                        mov              rcx, qword ptr [rbp + 312]                     # rhs
                        mov              r8d, 8                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n400_disjunction_af
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n416_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n417_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n418_coerce_numeric_α
.Lx453_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n418_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx455_1
                        cmp              eax, 3
                                                                                        jne   .Lx455_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx455_0
.Lx455_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n419_binop_α
.Lx455_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 224]                               # other
                        lea              rdx, [rbp + 192]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n419_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n419_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 3
                                                                                        jne   .Lx456_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 10
                        imul             rax, rcx
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n420_lit_real_α
.Lx456_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n420_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_real_α:
                        mov              qword ptr [rbp + 240], 5                       # result
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n421_coerce_numeric_α
.Lx457_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n421_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 5
                                                                                        je    .Lx459_1
                        cmp              eax, 3
                                                                                        jne   .Lx459_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 3
                                                                                        jne   .Lx459_0
.Lx459_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n422_binop_α
.Lx459_0:
                        lea              rdi, [rbp + 176]                               # self
                        lea              rsi, [rbp + 240]                               # other
                        lea              rdx, [rbp + 160]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n422_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n422_binop_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n423_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn462:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn462]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                                                                                        jmp   n424_lit_real_α
n423_call_builtin_icon_β:
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_real_α:
                        mov              qword ptr [rbp + 256], 5                       # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n425_coerce_numeric_α
.Lx463_0:
                        .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n425_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx465_1
                        cmp              eax, 3
                                                                                        jne   .Lx465_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 3
                                                                                        jne   .Lx465_0
.Lx465_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n426_binop_α
.Lx465_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 256]                               # other
                        lea              rdx, [rbp + 80]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n426_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n426_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n427_return_α
#-----------------------------------------------------------------------------------------------------------------------
n427_return_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_r1_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_r1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_r1_β:
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_r1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_r1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_r1_dcα:
                        pop              r11
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 544], r11
                        lea              rax, [rip + .Lx468_2]
                        mov              qword ptr [rbp + 552], rax
                        lea              rax, [rip + .Lx468_3]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 528                                       # suffix_off
                        mov              edx, 544                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_r1_α_body
.Lx468_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -576
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx468_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -576
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_shifttest_α
proc_shifttest_α:
proc_shifttest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n469_disjunction_α:
                        mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                                                                                        jmp   n494_lit_integer_α
n469_disjunction_as:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        jne   .Lx496_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_assign_α
.Lx496_0:
                        cmp              eax, 1
                                                                                        jne   .Lx496_1
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_assign_α
.Lx496_1:
                        cmp              eax, 2
                                                                                        jne   .Lx496_2
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_assign_α
.Lx496_2:
                        cmp              eax, 3
                                                                                        jne   .Lx496_3
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_assign_α
.Lx496_3:
                        cmp              eax, 4
                                                                                        jne   .Lx496_4
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n470_assign_α
.Lx496_4:
                                                                                        jmp   n470_assign_α
n469_disjunction_β:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0
                                                                                        je    n469_disjunction_af
                        cmp              eax, 1
                                                                                        je    n469_disjunction_af
                        cmp              eax, 2
                                                                                        je    n492_to_by_β
                        cmp              eax, 3
                                                                                        je    n469_disjunction_af
                                                                                        jmp   n469_disjunction_af
n469_disjunction_af:
                        add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 1
                                                                                        je    n493_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n489_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n488_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n487_lit_integer_α
                                                                                        jmp   proc_shifttest_ω
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n471_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n471_bound_α:
                        mov              qword ptr [rbp + 192], rsp
                                                                                        jmp   n472_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:
                        mov              qword ptr [rbp + 688], 3                       # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n473_var_α
.Lx500_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n474_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn504:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]                         # fn
                        lea              rsi, [rbp + 640]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n476_lit_integer_α
                                                                                        jmp   n475_call_proc_staged_α
n474_call_builtin_icon_β:
                                                                                        jmp   n476_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n475_call_proc_staged_α:
                        lea              rsi, [rbp + 624]
                        call             proc_wr25_dcα
                                                                                        jmp   .Lx506_2
.Lx506_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n476_lit_integer_α
                                                                                        jmp   n476_lit_integer_α
n475_call_proc_staged_β:
                                                                                        jmp   n476_lit_integer_α
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n477_var_α
.Lx507_0:
                        .quad            1703
#-----------------------------------------------------------------------------------------------------------------------
n477_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n478_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n478_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn511:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn511]                         # fn
                        lea              rsi, [rbp + 496]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n480_lit_integer_α
                                                                                        jmp   n479_call_proc_staged_α
n478_call_builtin_icon_β:
                                                                                        jmp   n480_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_proc_staged_α:
                        lea              rsi, [rbp + 480]
                        call             proc_wr25_dcα
                                                                                        jmp   .Lx513_2
.Lx513_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n480_lit_integer_α
                                                                                        jmp   n480_lit_integer_α
n479_call_proc_staged_β:
                                                                                        jmp   n480_lit_integer_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n481_var_α
.Lx514_0:
                        .quad            18446744073709551365
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n482_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn518:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]                         # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n484_call_builtin_icon_α
                                                                                        jmp   n483_call_proc_staged_α
n482_call_builtin_icon_β:
                                                                                        jmp   n484_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        call             proc_wr25_dcα
                                                                                        jmp   .Lx520_2
.Lx520_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n484_call_builtin_icon_α
                                                                                        jmp   n484_call_builtin_icon_α
n483_call_proc_staged_β:
                                                                                        jmp   n484_call_builtin_icon_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn522:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn522]                         # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n486_unmark_α
                                                                                        jmp   n485_conjunction_α
n484_call_builtin_icon_β:
                                                                                        jmp   n486_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n485_conjunction_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n486_unmark_α
n485_conjunction_β:
                                                                                        jmp   n486_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n486_unmark_α:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n469_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_integer_α:
                        mov              qword ptr [rbp + 176], 3                       # result
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n469_disjunction_as
n487_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx526_0:
                        .quad            18446744073709551552
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_integer_α:
                        mov              qword ptr [rbp + 160], 3                       # result
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n469_disjunction_as
n488_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx527_0:
                        .quad            18446744073709551553
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n490_lit_integer_α
n489_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx528_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n491_lit_integer_α
.Lx529_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:
                        mov              qword ptr [rbp + 144], 3                       # result
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n492_to_by_α
.Lx530_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n492_to_by_α:
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]                     # v
                        mov              rsi, qword ptr [rbp + 136]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]                     # v
                        mov              rsi, qword ptr [rbp + 152]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx532_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 152]
                        cmp              rdx, 0
                                                                                        jl    .Lx532_1
                        cmp              rax, rcx
                                                                                        jg    n469_disjunction_af
                                                                                        jmp   .Lx532_2
.Lx532_1:
                        cmp              rax, rcx
                                                                                        jl    n469_disjunction_af
.Lx532_2:
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n469_disjunction_as
n492_to_by_β:
                        mov              rdx, qword ptr [rbp + 152]
                        mov              rax, qword ptr [rbp + 96]
                        add              rax, rdx
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   .Lx532_0
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n469_disjunction_as
n493_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx533_0:
                        .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_integer_α:
                        mov              qword ptr [rbp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n469_disjunction_as
n494_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx534_0:
                        .quad            64
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_β:
                                                                                        jmp   proc_shifttest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_dcα:
                        pop              r11
                        sub              rsp, 800
                        mov              qword ptr [rsp + 776], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 752], r11
                        lea              rax, [rip + .Lx535_2]
                        mov              qword ptr [rbp + 760], rax
                        lea              rax, [rip + .Lx535_3]
                        mov              qword ptr [rbp + 768], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 720                                       # suffix_off
                        mov              edx, 752                                       # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_shifttest_α_body
.Lx535_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx535_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wr25_α
proc_wr25_α:
proc_wr25_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n536_var_α:
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n537_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n538_call_builtin_icon_α
.Lx542_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n538_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn544:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]                         # fn
                        lea              rsi, [rsp + 96]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx543_240
                        add              rsp, 32
                                                                                        jmp   proc_wr25_ω
.Lx543_240:
                                                                                        jmp   n539_call_builtin_icon_α
n538_call_builtin_icon_β:
                        add              rsp, 32
                                                                                        jmp   proc_wr25_ω
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn546:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn546]                         # fn
                        lea              rsi, [rsp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx545_240
                        add              rsp, 32
                                                                                        jmp   proc_wr25_ω
.Lx545_240:
                        add              rsp, 32
                                                                                        jmp   proc_wr25_ω
n539_call_builtin_icon_β:
                        add              rsp, 32
                                                                                        jmp   proc_wr25_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wr25_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_wr25_β:
                                                                                        jmp   proc_wr25_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wr25_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wr25_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wr25_dcα:
                        pop              r11
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 192], r11
                        lea              rax, [rip + .Lx547_2]
                        mov              qword ptr [rsp + 200], rax
                        lea              rax, [rip + .Lx547_3]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 176                                       # suffix_off
                        mov              edx, 192                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wr25_α_body
.Lx547_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -224
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx547_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -224
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pow_α
proc_pow_α:
proc_pow_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n548_disjunction_α:
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              dword ptr [rbp + 1248], 0
                                                                                        jmp   n601_var_α
n548_disjunction_as:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 0
                                                                                        jne   .Lx609_0
                                                                                        jmp   n549_var_α
.Lx609_0:
                                                                                        jmp   n549_var_α
n548_disjunction_β:
                        mov              eax, dword ptr [rbp + 1248]
                                                                                        jmp   n549_var_α
n548_disjunction_af:
                        add              dword ptr [rbp + 1248], 1
                        mov              eax, dword ptr [rbp + 1248]
                                                                                        jmp   n549_var_α
#-----------------------------------------------------------------------------------------------------------------------
n549_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n550_var_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n551_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n551_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx615_1
                        cmp              eax, 3
                                                                                        jne   .Lx615_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx615_0
.Lx615_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n552_coerce_numeric_α
.Lx615_0:
                        lea              rdi, [rbp + 16]                                # self
                        lea              rsi, [rbp + 32]                                # other
                        lea              rdx, [rbp + 1184]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n552_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n552_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 5
                                                                                        je    .Lx617_1
                        cmp              eax, 3
                                                                                        jne   .Lx617_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx617_0
.Lx617_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n553_binop_α
.Lx617_0:
                        lea              rdi, [rbp + 32]                                # self
                        lea              rsi, [rbp + 16]                                # other
                        lea              rdx, [rbp + 1168]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n553_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n553_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_pow@PLT
                        cmp              eax, 104
                                                                                        je    n555_disjunction_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n554_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n554_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n555_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n555_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n556_var_α
n555_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx621_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n588_var_α
.Lx621_0:
                                                                                        jmp   n588_var_α
n555_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n560_disjunction_β
n555_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n557_call_builtin_icon_α
n556_var_β:
                                                                                        jmp   n555_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn625:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn625]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n555_disjunction_af
                                                                                        jmp   n558_lit_string_α
n557_call_builtin_icon_β:
                                                                                        jmp   n555_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 4
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n559_binop_test_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n559_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1056]                    # lhs
                        mov              rsi, qword ptr [rbp + 1064]                    # lhs
                        mov              rdx, qword ptr [rbp + 1120]                    # rhs
                        mov              rcx, qword ptr [rbp + 1128]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n555_disjunction_af
                        mov              rdi, qword ptr [rbp + 1120]                    # d
                        mov              rsi, qword ptr [rbp + 1128]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n560_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n560_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n573_var_α
n560_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx629_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n555_disjunction_as
.Lx629_0:
                        cmp              eax, 1
                                                                                        jne   .Lx629_1
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n555_disjunction_as
.Lx629_1:
                                                                                        jmp   n555_disjunction_as
n560_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n588_var_α
                                                                                        jmp   n588_var_α
n560_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n561_var_α
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n561_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n562_lit_integer_α
n561_var_β:
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n562_lit_integer_α:
                        mov              qword ptr [rbp + 992], 3                       # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n563_coerce_numeric_α
.Lx632_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n563_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 5
                                                                                        je    .Lx634_1
                        cmp              eax, 3
                                                                                        jne   .Lx634_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 3
                                                                                        jne   .Lx634_0
.Lx634_1:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n564_binop_α
.Lx634_0:
                        lea              rdi, [rbp + 1376]                              # self
                        lea              rsi, [rbp + 992]                               # other
                        lea              rdx, [rbp + 960]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n564_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n564_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 3
                                                                                        jne   .Lx635_0
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n565_lit_real_α
.Lx635_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n588_var_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n565_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_real_α:
                        mov              qword ptr [rbp + 1008], 5                      # result
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n566_coerce_numeric_α
.Lx636_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n566_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 5
                                                                                        je    .Lx638_1
                        cmp              eax, 3
                                                                                        jne   .Lx638_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 3
                                                                                        jne   .Lx638_0
.Lx638_1:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n567_binop_α
.Lx638_0:
                        lea              rdi, [rbp + 944]                               # self
                        lea              rsi, [rbp + 1008]                              # other
                        lea              rdx, [rbp + 928]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n567_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n567_binop_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n588_var_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n568_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n568_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn641:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn641]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n588_var_α
                                                                                        jmp   n569_lit_real_α
n568_call_builtin_icon_β:
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n569_lit_real_α:
                        mov              qword ptr [rbp + 1024], 5                      # result
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n570_coerce_numeric_α
.Lx642_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n570_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 5
                                                                                        je    .Lx644_1
                        cmp              eax, 3
                                                                                        jne   .Lx644_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 3
                                                                                        jne   .Lx644_0
.Lx644_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n571_binop_α
.Lx644_0:
                        lea              rdi, [rbp + 864]                               # self
                        lea              rsi, [rbp + 1024]                              # other
                        lea              rdx, [rbp + 848]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n571_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n571_binop_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n588_var_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n572_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n572_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n560_disjunction_as
n572_assign_β:
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n574_lit_integer_α
n573_var_β:
                                                                                        jmp   n560_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n575_binop_test_α
.Lx649_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n575_binop_test_α:
                        mov              rdi, qword ptr [rbp + 784]                     # lhs
                        mov              rsi, qword ptr [rbp + 792]                     # lhs
                        mov              rdx, qword ptr [rbp + 800]                     # rhs
                        mov              rcx, qword ptr [rbp + 808]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n560_disjunction_af
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n576_var_α
#-----------------------------------------------------------------------------------------------------------------------
n576_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n577_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n578_coerce_numeric_α
.Lx653_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n578_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 5
                                                                                        je    .Lx655_1
                        cmp              eax, 3
                                                                                        jne   .Lx655_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx655_0
.Lx655_1:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n579_binop_α
.Lx655_0:
                        lea              rdi, [rbp + 1376]                              # self
                        lea              rsi, [rbp + 720]                               # other
                        lea              rdx, [rbp + 688]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n579_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n579_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 3
                                                                                        jne   .Lx656_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n580_lit_real_α
.Lx656_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n588_var_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n580_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_real_α:
                        mov              qword ptr [rbp + 736], 5                       # result
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n581_coerce_numeric_α
.Lx657_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n581_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 5
                                                                                        je    .Lx659_1
                        cmp              eax, 3
                                                                                        jne   .Lx659_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 3
                                                                                        jne   .Lx659_0
.Lx659_1:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n582_binop_α
.Lx659_0:
                        lea              rdi, [rbp + 672]                               # self
                        lea              rsi, [rbp + 736]                               # other
                        lea              rdx, [rbp + 656]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n582_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n582_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n588_var_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n583_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n583_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn662:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn662]                         # fn
                        lea              rsi, [rbp + 608]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 104
                                                                                        je    n588_var_α
                                                                                        jmp   n584_lit_real_α
n583_call_builtin_icon_β:
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_real_α:
                        mov              qword ptr [rbp + 752], 5                       # result
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n585_coerce_numeric_α
.Lx663_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n585_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 5
                                                                                        je    .Lx665_1
                        cmp              eax, 3
                                                                                        jne   .Lx665_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 3
                                                                                        jne   .Lx665_0
.Lx665_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n586_binop_α
.Lx665_0:
                        lea              rdi, [rbp + 592]                               # self
                        lea              rsi, [rbp + 752]                               # other
                        lea              rdx, [rbp + 576]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n586_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n586_binop_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n588_var_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n587_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n587_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n560_disjunction_as
n587_assign_β:
                                                                                        jmp   n588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n589_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n590_call_builtin_icon_α
.Lx670_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn672:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn672]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n600_return_α
                                                                                        jmp   n591_lit_string_α
n590_call_builtin_icon_β:
                                                                                        jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n592_var_α
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n592_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n593_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n594_call_builtin_icon_α
.Lx676_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn678:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn678]                         # fn
                        lea              rsi, [rbp + 288]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n600_return_α
                                                                                        jmp   n595_lit_string_α
n594_call_builtin_icon_β:
                                                                                        jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n596_var_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n596_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n597_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n598_call_builtin_icon_α
.Lx682_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n598_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn684:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn684]                         # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n600_return_α
                                                                                        jmp   n599_call_builtin_icon_α
n598_call_builtin_icon_β:
                                                                                        jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n599_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn686:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn686]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 5                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n600_return_α
                                                                                        jmp   n600_return_α
n599_call_builtin_icon_β:
                                                                                        jmp   n600_return_α
#-----------------------------------------------------------------------------------------------------------------------
n600_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 1136
                                                                                        jmp   proc_pow_γ
#-----------------------------------------------------------------------------------------------------------------------
n601_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n602_lit_integer_α
n601_var_β:
                                                                                        jmp   n548_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n602_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n603_binop_test_α
.Lx690_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n603_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 112
                                                                                        je    .Lx691_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 112
                                                                                        je    .Lx691_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx691_2
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 3
                                                                                        jne   .Lx691_2
.Lx691_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1368]
                        cmp              rax, rcx
                                                                                        jne   n548_disjunction_af
                        mov              rcx, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rcx
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rcx
                                                                                        jmp   n604_var_α
.Lx691_0:
                        mov              rdi, qword ptr [rbp + 16]                      # a
                        mov              rsi, qword ptr [rbp + 24]                      # a
                        mov              rdx, qword ptr [rbp + 1360]                    # b
                        mov              rcx, qword ptr [rbp + 1368]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 1328]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx691_1
                        cmp              eax, 1
                                                                                        je    n548_disjunction_af
                                                                                        jmp   n604_var_α
.Lx691_2:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 1360]                    # rhs
                        mov              rcx, qword ptr [rbp + 1368]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n548_disjunction_af
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n604_var_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n605_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 3                      # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n606_binop_test_α
.Lx694_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n606_binop_test_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx695_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 112
                                                                                        je    .Lx695_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx695_2
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 3
                                                                                        jne   .Lx695_2
.Lx695_1:
                        mov              rax, qword ptr [rbp + 40]
                        mov              rcx, qword ptr [rbp + 1320]
                        cmp              rax, rcx
                                                                                        jg    n548_disjunction_af
                        mov              rcx, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rcx
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rcx
                                                                                        jmp   n607_conjunction_α
.Lx695_0:
                        mov              rdi, qword ptr [rbp + 32]                      # a
                        mov              rsi, qword ptr [rbp + 40]                      # a
                        mov              rdx, qword ptr [rbp + 1312]                    # b
                        mov              rcx, qword ptr [rbp + 1320]                    # b
                        mov              r8d, 6                                         # op
                        lea              r9, [rbp + 1280]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx695_1
                        cmp              eax, 1
                                                                                        je    n548_disjunction_af
                                                                                        jmp   n607_conjunction_α
.Lx695_2:
                        mov              rdi, qword ptr [rbp + 32]                      # lhs
                        mov              rsi, qword ptr [rbp + 40]                      # lhs
                        mov              rdx, qword ptr [rbp + 1312]                    # rhs
                        mov              rcx, qword ptr [rbp + 1320]                    # rhs
                        mov              r8d, 6                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n548_disjunction_af
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n607_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n607_conjunction_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   proc_pow_ω
n607_conjunction_β:
                                                                                        jmp   n548_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_β:
                                                                                        jmp   proc_pow_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_dcα:
                        pop              r11
                        sub              rsp, 1456
                        mov              qword ptr [rsp + 1432], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1408], r11
                        lea              rax, [rip + .Lx697_2]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rax, [rip + .Lx697_3]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1376                                      # suffix_off
                        mov              edx, 1408                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pow_α_body
.Lx697_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1440
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx697_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1440
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "numtest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_numtest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_numtest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "bitcombo"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_bitcombo_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_bitcombo_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "wr5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_wr5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_wr5_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "r1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_r1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_r1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "shifttest"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_shifttest_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_shifttest_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "wr25"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_wr25_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 176
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_wr25_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pow"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pow_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1392
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pow_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "numtest__STATIC__f"
.Lgvan1:                .string          "numtest__INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
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
n698_lit_integer_α:
                        sub              rsp, 2816
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
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rbp + 3552], 3                      # result
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n699_lit_integer_α
.Lx802_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n700_call_proc_staged_α
.Lx803_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n700_call_proc_staged_α:
                        lea              rsi, [rbp + 3552]
                        lea              rdx, [rbp + 3568]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx805_2
.Lx805_2:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 104
                                                                                        je    n701_lit_integer_α
                                                                                        jmp   n701_lit_integer_α
n700_call_proc_staged_β:
                                                                                        jmp   n701_lit_integer_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_integer_α:
                        mov              qword ptr [rbp + 3456], 3                      # result
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n702_lit_integer_α
.Lx806_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 3                      # result
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n703_call_proc_staged_α
.Lx807_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n703_call_proc_staged_α:
                        lea              rsi, [rbp + 3456]
                        lea              rdx, [rbp + 3472]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx809_2
.Lx809_2:
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n704_lit_integer_α
                                                                                        jmp   n704_lit_integer_α
n703_call_proc_staged_β:
                                                                                        jmp   n704_lit_integer_α
.Lx809_0:
                        .quad            .Lx809_0_s
.Lx809_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_integer_α:
                        mov              qword ptr [rbp + 3360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n705_lit_integer_α
.Lx810_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n706_call_proc_staged_α
.Lx811_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        lea              rsi, [rbp + 3360]
                        lea              rdx, [rbp + 3376]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx813_2
.Lx813_2:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n707_lit_integer_α
                                                                                        jmp   n707_lit_integer_α
n706_call_proc_staged_β:
                                                                                        jmp   n707_lit_integer_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_integer_α:
                        mov              qword ptr [rbp + 3264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n708_lit_integer_α
.Lx814_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:
                        mov              qword ptr [rbp + 3280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx815_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n709_call_proc_staged_α
.Lx815_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n709_call_proc_staged_α:
                        lea              rsi, [rbp + 3264]
                        lea              rdx, [rbp + 3280]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx817_2
.Lx817_2:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 104
                                                                                        je    n710_lit_integer_α
                                                                                        jmp   n710_lit_integer_α
n709_call_proc_staged_β:
                                                                                        jmp   n710_lit_integer_α
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_integer_α:
                        mov              qword ptr [rbp + 3168], 3                      # result
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n711_lit_integer_α
.Lx818_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:
                        mov              qword ptr [rbp + 3184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n712_call_proc_staged_α
.Lx819_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n712_call_proc_staged_α:
                        lea              rsi, [rbp + 3168]
                        lea              rdx, [rbp + 3184]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx821_2
.Lx821_2:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 104
                                                                                        je    n713_lit_integer_α
                                                                                        jmp   n713_lit_integer_α
n712_call_proc_staged_β:
                                                                                        jmp   n713_lit_integer_α
.Lx821_0:
                        .quad            .Lx821_0_s
.Lx821_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:
                        mov              qword ptr [rbp + 3072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n714_lit_integer_α
.Lx822_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:
                        mov              qword ptr [rbp + 3088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n715_call_proc_staged_α
.Lx823_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n715_call_proc_staged_α:
                        lea              rsi, [rbp + 3072]
                        lea              rdx, [rbp + 3088]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx825_2
.Lx825_2:
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 104
                                                                                        je    n716_lit_integer_α
                                                                                        jmp   n716_lit_integer_α
n715_call_proc_staged_β:
                                                                                        jmp   n716_lit_integer_α
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:
                        mov              qword ptr [rbp + 2976], 3                      # result
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n717_lit_integer_α
.Lx826_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_integer_α:
                        mov              qword ptr [rbp + 2992], 3                      # result
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n718_call_proc_staged_α
.Lx827_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n718_call_proc_staged_α:
                        lea              rsi, [rbp + 2976]
                        lea              rdx, [rbp + 2992]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx829_2
.Lx829_2:
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 104
                                                                                        je    n719_lit_integer_α
                                                                                        jmp   n719_lit_integer_α
n718_call_proc_staged_β:
                                                                                        jmp   n719_lit_integer_α
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_integer_α:
                        mov              qword ptr [rbp + 2880], 3                      # result
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n720_lit_integer_α
.Lx830_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 3                      # result
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n721_call_proc_staged_α
.Lx831_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n721_call_proc_staged_α:
                        lea              rsi, [rbp + 2880]
                        lea              rdx, [rbp + 2896]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx833_2
.Lx833_2:
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 104
                                                                                        je    n722_lit_real_α
                                                                                        jmp   n722_lit_real_α
n721_call_proc_staged_β:
                                                                                        jmp   n722_lit_real_α
.Lx833_0:
                        .quad            .Lx833_0_s
.Lx833_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_real_α:
                        mov              qword ptr [rbp + 2784], 5                      # result
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n723_lit_integer_α
.Lx834_0:
                        .quad            4618666597849812173
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 3                      # result
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n724_call_proc_staged_α
.Lx835_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        lea              rsi, [rbp + 2784]
                        lea              rdx, [rbp + 2800]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx837_2
.Lx837_2:
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 104
                                                                                        je    n725_lit_integer_α
                                                                                        jmp   n725_lit_integer_α
n724_call_proc_staged_β:
                                                                                        jmp   n725_lit_integer_α
.Lx837_0:
                        .quad            .Lx837_0_s
.Lx837_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:
                        mov              qword ptr [rbp + 2688], 3                      # result
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n726_lit_real_α
.Lx838_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_real_α:
                        mov              qword ptr [rbp + 2704], 5                      # result
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n727_call_proc_staged_α
.Lx839_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n727_call_proc_staged_α:
                        lea              rsi, [rbp + 2688]
                        lea              rdx, [rbp + 2704]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx841_2
.Lx841_2:
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 104
                                                                                        je    n728_lit_real_α
                                                                                        jmp   n728_lit_real_α
n727_call_proc_staged_β:
                                                                                        jmp   n728_lit_real_α
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_real_α:
                        mov              qword ptr [rbp + 2592], 5                      # result
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n729_lit_real_α
.Lx842_0:
                        .quad            4617765877924338074
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_real_α:
                        mov              qword ptr [rbp + 2608], 5                      # result
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n730_call_proc_staged_α
.Lx843_0:
                        .quad            4608083138725491507
#-----------------------------------------------------------------------------------------------------------------------
n730_call_proc_staged_α:
                        lea              rsi, [rbp + 2592]
                        lea              rdx, [rbp + 2608]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx845_2
.Lx845_2:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 104
                                                                                        je    n731_lit_string_α
                                                                                        jmp   n731_lit_string_α
n730_call_proc_staged_β:
                                                                                        jmp   n731_lit_string_α
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        mov              qword ptr [rbp + 2496], 2                      # result
                        mov              dword ptr [rbp + 2500], 3
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n732_lit_real_α
.Lx846_0:
                        .quad            .Lx846_0_s
.Lx846_0_s:
                        .string          " 1 "
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_real_α:
                        mov              qword ptr [rbp + 2512], 5                      # result
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n733_call_proc_staged_α
.Lx847_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n733_call_proc_staged_α:
                        lea              rsi, [rbp + 2496]
                        lea              rdx, [rbp + 2512]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx849_2
.Lx849_2:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n734_lit_string_α
                                                                                        jmp   n734_lit_string_α
n733_call_proc_staged_β:
                                                                                        jmp   n734_lit_string_α
.Lx849_0:
                        .quad            .Lx849_0_s
.Lx849_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:
                        mov              qword ptr [rbp + 2400], 2                      # result
                        mov              dword ptr [rbp + 2404], 4
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n735_lit_real_α
.Lx850_0:
                        .quad            .Lx850_0_s
.Lx850_0_s:
                        .string          " 3.4"
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_real_α:
                        mov              qword ptr [rbp + 2416], 5                      # result
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n736_call_proc_staged_α
.Lx851_0:
                        .quad            4610334938539176755
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        lea              rsi, [rbp + 2400]
                        lea              rdx, [rbp + 2416]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx853_2
.Lx853_2:
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n737_lit_string_α
                                                                                        jmp   n737_lit_string_α
n736_call_proc_staged_β:
                                                                                        jmp   n737_lit_string_α
.Lx853_0:
                        .quad            .Lx853_0_s
.Lx853_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:
                        mov              qword ptr [rbp + 2304], 2                      # result
                        mov              dword ptr [rbp + 2308], 3
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n738_lit_string_α
.Lx854_0:
                        .quad            .Lx854_0_s
.Lx854_0_s:
                        .string          " 5 "
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 3
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n739_call_proc_staged_α
.Lx855_0:
                        .quad            .Lx855_0_s
.Lx855_0_s:
                        .string          " 5 "
#-----------------------------------------------------------------------------------------------------------------------
n739_call_proc_staged_α:
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 2320]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx857_2
.Lx857_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 104
                                                                                        je    n740_lit_charset_α
                                                                                        jmp   n740_lit_charset_α
n739_call_proc_staged_β:
                                                                                        jmp   n740_lit_charset_α
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_charset_α:
                        mov              qword ptr [rbp + 2208], 2                      # result
                        mov              dword ptr [rbp + 2212], -1
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n741_lit_charset_α
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "04"
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_charset_α:
                        mov              qword ptr [rbp + 2224], 2                      # result
                        mov              dword ptr [rbp + 2228], -1
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n742_call_proc_staged_α
.Lx859_0:
                        .quad            .Lx859_0_s
.Lx859_0_s:
                        .string          "7"
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        lea              rsi, [rbp + 2208]
                        lea              rdx, [rbp + 2224]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx861_2
.Lx861_2:
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n743_lit_integer_α
                                                                                        jmp   n743_lit_integer_α
n742_call_proc_staged_β:
                                                                                        jmp   n743_lit_integer_α
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n744_lit_charset_α
.Lx862_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_charset_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], -1
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n745_call_proc_staged_α
.Lx863_0:
                        .quad            .Lx863_0_s
.Lx863_0_s:
                        .string          "12"
#-----------------------------------------------------------------------------------------------------------------------
n745_call_proc_staged_α:
                        lea              rsi, [rbp + 2112]
                        lea              rdx, [rbp + 2128]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx865_2
.Lx865_2:
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n746_lit_real_α
                                                                                        jmp   n746_lit_real_α
n745_call_proc_staged_β:
                                                                                        jmp   n746_lit_real_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_real_α:
                        mov              qword ptr [rbp + 2016], 5                      # result
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n747_lit_real_α
.Lx866_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_real_α:
                        mov              qword ptr [rbp + 2032], 5                      # result
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n748_call_proc_staged_α
.Lx867_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        lea              rsi, [rbp + 2016]
                        lea              rdx, [rbp + 2032]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx869_2
.Lx869_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    n749_lit_real_α
                                                                                        jmp   n749_lit_real_α
n748_call_proc_staged_β:
                                                                                        jmp   n749_lit_real_α
.Lx869_0:
                        .quad            .Lx869_0_s
.Lx869_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_real_α:
                        mov              qword ptr [rbp + 1920], 5                      # result
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n750_lit_real_α
.Lx870_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_real_α:
                        mov              qword ptr [rbp + 1936], 5                      # result
                        mov              rax, qword ptr [rip + .Lx871_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n751_call_proc_staged_α
.Lx871_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n751_call_proc_staged_α:
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1936]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx873_2
.Lx873_2:
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n752_lit_real_α
                                                                                        jmp   n752_lit_real_α
n751_call_proc_staged_β:
                                                                                        jmp   n752_lit_real_α
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_real_α:
                        mov              qword ptr [rbp + 1824], 5                      # result
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n753_lit_real_α
.Lx874_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_real_α:
                        mov              qword ptr [rbp + 1840], 5                      # result
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n754_call_proc_staged_α
.Lx875_0:
                        .quad            13830554455654793216
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        lea              rsi, [rbp + 1824]
                        lea              rdx, [rbp + 1840]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx877_2
.Lx877_2:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n755_lit_integer_α
                                                                                        jmp   n755_lit_integer_α
n754_call_proc_staged_β:
                                                                                        jmp   n755_lit_integer_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 3                      # result
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n756_lit_integer_α
.Lx878_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 3                      # result
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n757_call_proc_staged_α
.Lx879_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n757_call_proc_staged_α:
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1744]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx881_2
.Lx881_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n758_lit_real_α
                                                                                        jmp   n758_lit_real_α
n757_call_proc_staged_β:
                                                                                        jmp   n758_lit_real_α
.Lx881_0:
                        .quad            .Lx881_0_s
.Lx881_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_real_α:
                        mov              qword ptr [rbp + 1632], 5                      # result
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n759_lit_real_α
.Lx882_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_real_α:
                        mov              qword ptr [rbp + 1648], 5                      # result
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n760_call_proc_staged_α
.Lx883_0:
                        .quad            13835058055282163712
#-----------------------------------------------------------------------------------------------------------------------
n760_call_proc_staged_α:
                        lea              rsi, [rbp + 1632]
                        lea              rdx, [rbp + 1648]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx885_2
.Lx885_2:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n761_lit_integer_α
                                                                                        jmp   n761_lit_integer_α
n760_call_proc_staged_β:
                                                                                        jmp   n761_lit_integer_α
.Lx885_0:
                        .quad            .Lx885_0_s
.Lx885_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n762_lit_integer_α
.Lx886_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 3                      # result
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n763_call_proc_staged_α
.Lx887_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        lea              rsi, [rbp + 1536]
                        lea              rdx, [rbp + 1552]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx889_2
.Lx889_2:
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 104
                                                                                        je    n764_lit_real_α
                                                                                        jmp   n764_lit_real_α
n763_call_proc_staged_β:
                                                                                        jmp   n764_lit_real_α
.Lx889_0:
                        .quad            .Lx889_0_s
.Lx889_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_real_α:
                        mov              qword ptr [rbp + 1440], 5                      # result
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n765_lit_string_α
.Lx890_0:
                        .quad            13837309855095848960
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_string_α:
                        mov              qword ptr [rbp + 1456], 2                      # result
                        mov              dword ptr [rbp + 1460], 4
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n766_call_proc_staged_α
.Lx891_0:
                        .quad            .Lx891_0_s
.Lx891_0_s:
                        .string          " 2. "
#-----------------------------------------------------------------------------------------------------------------------
n766_call_proc_staged_α:
                        lea              rsi, [rbp + 1440]
                        lea              rdx, [rbp + 1456]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx893_2
.Lx893_2:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n767_lit_integer_α
                                                                                        jmp   n767_lit_integer_α
n766_call_proc_staged_β:
                                                                                        jmp   n767_lit_integer_α
.Lx893_0:
                        .quad            .Lx893_0_s
.Lx893_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n768_lit_integer_α
.Lx894_0:
                        .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 3                      # result
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n769_call_proc_staged_α
.Lx895_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n769_call_proc_staged_α:
                        lea              rsi, [rbp + 1344]
                        lea              rdx, [rbp + 1360]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx897_2
.Lx897_2:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n770_lit_real_α
                                                                                        jmp   n770_lit_real_α
n769_call_proc_staged_β:
                                                                                        jmp   n770_lit_real_α
.Lx897_0:
                        .quad            .Lx897_0_s
.Lx897_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_real_α:
                        mov              qword ptr [rbp + 1248], 5                      # result
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n771_lit_real_α
.Lx898_0:
                        .quad            13841813454723219456
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_real_α:
                        mov              qword ptr [rbp + 1264], 5                      # result
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n772_call_proc_staged_α
.Lx899_0:
                        .quad            13837309855095848960
#-----------------------------------------------------------------------------------------------------------------------
n772_call_proc_staged_α:
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1264]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx901_2
.Lx901_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n773_call_builtin_icon_α
                                                                                        jmp   n773_call_builtin_icon_α
n772_call_proc_staged_β:
                                                                                        jmp   n773_call_builtin_icon_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n773_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn903:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn903]                         # fn
                        lea              rsi, [rbp + 1168]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n774_disjunction_α
                                                                                        jmp   n774_disjunction_α
n773_call_builtin_icon_β:
                                                                                        jmp   n774_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n774_disjunction_α:
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0
                                                                                        jmp   n791_lit_integer_α
n774_disjunction_as:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        jne   .Lx905_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx905_0:
                        cmp              eax, 1
                                                                                        jne   .Lx905_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx905_1:
                        cmp              eax, 2
                                                                                        jne   .Lx905_2
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx905_2:
                        cmp              eax, 3
                                                                                        jne   .Lx905_3
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx905_3:
                                                                                        jmp   n775_assign_α
n774_disjunction_β:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        je    n774_disjunction_af
                        cmp              eax, 1
                                                                                        je    n774_disjunction_af
                        cmp              eax, 2
                                                                                        je    n774_disjunction_af
                                                                                        jmp   n774_disjunction_af
n774_disjunction_af:
                        add              dword ptr [rbp + 928], 1
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 1
                                                                                        je    n790_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n789_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n788_lit_integer_α
                                                                                        jmp   n792_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n775_assign_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n776_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n776_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n787_lit_integer_α
n776_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx908_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n777_assign_α
.Lx908_0:
                        cmp              eax, 1
                                                                                        jne   .Lx908_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n777_assign_α
.Lx908_1:
                        cmp              eax, 2
                                                                                        jne   .Lx908_2
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n777_assign_α
.Lx908_2:
                        cmp              eax, 3
                                                                                        jne   .Lx908_3
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n777_assign_α
.Lx908_3:
                                                                                        jmp   n777_assign_α
n776_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n776_disjunction_af
                        cmp              eax, 1
                                                                                        je    n776_disjunction_af
                        cmp              eax, 2
                                                                                        je    n776_disjunction_af
                                                                                        jmp   n776_disjunction_af
n776_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n786_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n785_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n784_lit_integer_α
                                                                                        jmp   n774_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n777_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n778_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n778_conjunction_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n779_bound_α
n778_conjunction_β:
                                                                                        jmp   n792_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n779_bound_α:
                        mov              qword ptr [rbp + 1008], rsp
                                                                                        jmp   n780_var_α
#-----------------------------------------------------------------------------------------------------------------------
n780_var_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n781_var_α
#-----------------------------------------------------------------------------------------------------------------------
n781_var_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n782_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n782_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        lea              rdx, [rbp + 1136]
                        call             proc_bitcombo_dcα
                                                                                        jmp   .Lx918_2
.Lx918_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n783_unmark_α
                                                                                        jmp   n783_unmark_α
n782_call_proc_staged_β:
                                                                                        jmp   n783_unmark_α
.Lx918_0:
                        .quad            .Lx918_0_s
.Lx918_0_s:
                        .string          "bitcombo"
#-----------------------------------------------------------------------------------------------------------------------
n783_unmark_α:
                        mov              rsp, qword ptr [rbp + 1008]
                                                                                        jmp   n776_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_integer_α:
                        mov              qword ptr [rbp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n776_disjunction_as
n784_lit_integer_β:
                                                                                        jmp   n776_disjunction_af
.Lx921_0:
                        .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n776_disjunction_as
n785_lit_integer_β:
                                                                                        jmp   n776_disjunction_af
.Lx922_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n776_disjunction_as
n786_lit_integer_β:
                                                                                        jmp   n776_disjunction_af
.Lx923_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n787_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx924_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n776_disjunction_as
n787_lit_integer_β:
                                                                                        jmp   n776_disjunction_af
.Lx924_0:
                        .quad            18446744073709551593
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_integer_α:
                        mov              qword ptr [rbp + 992], 3                       # result
                        mov              rax, qword ptr [rip + .Lx925_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n774_disjunction_as
n788_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx925_0:
                        .quad            191
#-----------------------------------------------------------------------------------------------------------------------
n789_lit_integer_α:
                        mov              qword ptr [rbp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx926_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n774_disjunction_as
n789_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx926_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n790_lit_integer_α:
                        mov              qword ptr [rbp + 960], 3                       # result
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n774_disjunction_as
n790_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx927_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_integer_α:
                        mov              qword ptr [rbp + 944], 3                       # result
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n774_disjunction_as
n791_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx928_0:
                        .quad            18446744073709551607
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn930:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn930]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n793_call_proc_staged_α
                                                                                        jmp   n793_call_proc_staged_α
n792_call_builtin_icon_β:
                                                                                        jmp   n793_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n793_call_proc_staged_α:
                        call             proc_shifttest_dcα
                                                                                        jmp   .Lx932_2
.Lx932_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n794_call_builtin_icon_α
                                                                                        jmp   n794_call_builtin_icon_α
n793_call_proc_staged_β:
                                                                                        jmp   n794_call_builtin_icon_α
.Lx932_0:
                        .quad            .Lx932_0_s
.Lx932_0_s:
                        .string          "shifttest"
#-----------------------------------------------------------------------------------------------------------------------
n794_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn934:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn934]                         # fn
                        lea              rsi, [rbp + 688]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n795_lit_integer_α
                                                                                        jmp   n795_lit_integer_α
n794_call_builtin_icon_β:
                                                                                        jmp   n795_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_integer_α:
                        mov              qword ptr [rbp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n796_lit_integer_α
.Lx935_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx936_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n797_to_α
.Lx936_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n797_to_α:
                        mov              rdi, qword ptr [rbp + 576]                     # v
                        mov              rsi, qword ptr [rbp + 584]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax
                        mov              rdi, qword ptr [rbp + 592]                     # v
                        mov              rsi, qword ptr [rbp + 600]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 592], 3
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 560], rax
.Lx938_0:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 600]
                        cmp              rax, rcx
                                                                                        jg    main_ω
                        mov              qword ptr [rbp + 544], 3
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n798_lit_integer_α
n797_to_β:
                        inc              qword ptr [rbp + 560]
                                                                                        jmp   .Lx938_0
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n799_lit_integer_α
.Lx939_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n799_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n800_to_α
.Lx940_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n800_to_α:
                        mov              rdi, qword ptr [rbp + 640]                     # v
                        mov              rsi, qword ptr [rbp + 648]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 640], 3
                        mov              qword ptr [rbp + 648], rax
                        mov              rdi, qword ptr [rbp + 656]                     # v
                        mov              rsi, qword ptr [rbp + 664]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 656], 3
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 624], rax
.Lx942_0:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 664]
                        cmp              rax, rcx
                                                                                        jg    n797_to_β
                        mov              qword ptr [rbp + 608], 3
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n801_call_proc_staged_α
n800_to_β:
                        inc              qword ptr [rbp + 624]
                                                                                        jmp   .Lx942_0
#-----------------------------------------------------------------------------------------------------------------------
n801_call_proc_staged_α:
                        lea              rsi, [rbp + 544]
                        lea              rdx, [rbp + 608]
                        call             proc_pow_dcα
                                                                                        jmp   .Lx944_2
.Lx944_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n800_to_β
                                                                                        jmp   n800_to_β
n801_call_proc_staged_β:
                                                                                        jmp   n800_to_β
.Lx944_0:
                        .quad            .Lx944_0_s
.Lx944_0_s:
                        .string          "pow"
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
