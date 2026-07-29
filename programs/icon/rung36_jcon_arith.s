                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_numtest_α
proc_numtest_α:
                        .global          proc_numtest_α
                        .global          proc_numtest_β
                        .global          proc_numtest_γ
                        .global          proc_numtest_ω
                        sub              rsp, 2496
                        mov              [rsp + 2472], rcx
                        mov              [rsp + 2480], rdx
                        mov              [rsp + 2488], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2464
                        mov              edx, 2464
                        call             rt_jmp_frame_lexprep2@PLT
proc_numtest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 2336], 0
                        mov              qword ptr [rbp + 2344], 0
                        mov              dword ptr [rbp + 2352], 0
                                                                                        jmp   n2_var_ref_α
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
                                                                                        jmp   n4_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052304
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n6_nulltest_var_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n0_disjunction_as
n3_assign_β:
                                                                                        jmp   n1_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx112_1
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx112_0
.Lx112_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n7_unop_α
.Lx112_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 2304]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n7_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n8_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n6_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_unop_α:
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        call             rt_num_pos@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n11_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_proc_staged_α:
                        lea              rsi, [rbp + 2224]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx118_2
.Lx118_2:
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n9_var_α
                                                                                        jmp   n9_var_α
n8_call_proc_staged_β:
                                                                                        jmp   n9_var_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 2448], 6
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n14_assign_var_α
.Lx121_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        lea              rsi, [rbp + 2288]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx123_2
.Lx123_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n5_var_α
                                                                                        jmp   n5_var_α
n11_call_proc_staged_β:
                                                                                        jmp   n5_var_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn125:              .string          "abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rbp + 2128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n13_var_α
                                                                                        jmp   n15_call_proc_staged_α
n12_call_builtin_icon_β:
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n16_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2448]
                        mov              rcx, qword ptr [rbp + 2456]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_proc_staged_α:
                        lea              rsi, [rbp + 2112]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx130_2
.Lx130_2:
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n13_var_α
                                                                                        jmp   n13_var_α
n15_call_proc_staged_β:
                                                                                        jmp   n13_var_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n16_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx132_1
                        cmp              eax, 6
                                                                                        jne   .Lx132_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx132_0
.Lx132_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n19_unop_α
.Lx132_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 2032]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n19_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n3_assign_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_α:
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n22_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n23_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α:
                        lea              rsi, [rbp + 2016]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx142_2
.Lx142_2:
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n17_var_α
                                                                                        jmp   n17_var_α
n22_call_proc_staged_β:
                                                                                        jmp   n17_var_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n23_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx144_1
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx144_0
.Lx144_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n26_op75_α
.Lx144_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 1920]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n26_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n27_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx150_1
                        cmp              eax, 6
                                                                                        jne   .Lx150_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx150_0
.Lx150_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n30_binop_α
.Lx150_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1904]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n30_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx152_1
                        cmp              eax, 6
                                                                                        jne   .Lx152_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx152_0
.Lx152_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n31_op75_α
.Lx152_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 1792]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n31_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n32_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n29_disjunction_α:
                        mov              qword ptr [rbp + 1312], 0
                        mov              qword ptr [rbp + 1320], 0
                        mov              dword ptr [rbp + 1328], 0
                                                                                        jmp   n34_var_α
n29_disjunction_as:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        jne   .Lx156_0
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n33_disjunction_α
.Lx156_0:
                        cmp              eax, 1
                                                                                        jne   .Lx156_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n33_disjunction_α
.Lx156_1:
                                                                                        jmp   n33_disjunction_α
n29_disjunction_β:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 0
                                                                                        je    n33_disjunction_α
                                                                                        jmp   n33_disjunction_α
n29_disjunction_af:
                        add              dword ptr [rbp + 1328], 1
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 1
                                                                                        je    n35_var_α
                                                                                        jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 6
                                                                                        jne   .Lx157_0
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 6
                                                                                        jne   .Lx157_0
                        mov              rax, qword ptr [rbp + 1928]
                        mov              rcx, qword ptr [rbp + 1912]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1888], 6
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n38_call_proc_staged_α
.Lx157_0:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1904]
                        mov              rcx, qword ptr [rbp + 1912]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n21_var_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n38_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx159_1
                        cmp              eax, 6
                                                                                        jne   .Lx159_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx159_0
.Lx159_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n39_binop_α
.Lx159_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1776]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n39_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx161_1
                        cmp              eax, 6
                                                                                        jne   .Lx161_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx161_0
.Lx161_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n40_op75_α
.Lx161_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 1664]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n40_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:
                        mov              qword ptr [rbp + 1040], 0
                        mov              qword ptr [rbp + 1048], 0
                        mov              dword ptr [rbp + 1056], 0
                                                                                        jmp   n42_var_α
n33_disjunction_as:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        jne   .Lx163_0
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n41_var_α
.Lx163_0:
                        cmp              eax, 1
                                                                                        jne   .Lx163_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n41_var_α
.Lx163_1:
                                                                                        jmp   n41_var_α
n33_disjunction_β:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 0
                                                                                        je    n41_var_α
                                                                                        jmp   n41_var_α
n33_disjunction_af:
                        add              dword ptr [rbp + 1056], 1
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 1
                                                                                        je    n43_var_α
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n46_lit_integer_α
n34_var_β:
                                                                                        jmp   n29_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n37_call_proc_staged_α
n35_var_β:
                                                                                        jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α:
                        lea              rsi, [rbp + 1392]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx168_2
.Lx168_2:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n33_disjunction_α
                                                                                        jmp   n29_disjunction_as
n36_call_proc_staged_β:
                                                                                        jmp   n33_disjunction_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        lea              rsi, [rbp + 1568]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx170_2
.Lx170_2:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n33_disjunction_α
                                                                                        jmp   n29_disjunction_as
n37_call_proc_staged_β:
                                                                                        jmp   n33_disjunction_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_proc_staged_α:
                        lea              rsi, [rbp + 1888]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx172_2
.Lx172_2:
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n21_var_α
                                                                                        jmp   n21_var_α
n38_call_proc_staged_β:
                                                                                        jmp   n21_var_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 6
                                                                                        jne   .Lx173_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 6
                                                                                        jne   .Lx173_0
                        mov              rax, qword ptr [rbp + 1800]
                        mov              rcx, qword ptr [rbp + 1784]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1760], 6
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n47_call_proc_staged_α
.Lx173_0:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n25_var_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n47_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx175_1
                        cmp              eax, 6
                                                                                        jne   .Lx175_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx175_0
.Lx175_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n48_binop_α
.Lx175_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1648]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n48_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n49_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n51_lit_integer_α
n42_var_β:
                                                                                        jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n45_call_proc_staged_α
n43_var_β:
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx182_2
.Lx182_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n41_var_α
                                                                                        jmp   n33_disjunction_as
n44_call_proc_staged_β:
                                                                                        jmp   n41_var_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        lea              rsi, [rbp + 1296]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx184_2
.Lx184_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n41_var_α
                                                                                        jmp   n33_disjunction_as
n45_call_proc_staged_β:
                                                                                        jmp   n41_var_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n52_binop_test_α
.Lx185_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        lea              rsi, [rbp + 1760]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx187_2
.Lx187_2:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n25_var_α
                                                                                        jmp   n25_var_α
n47_call_proc_staged_β:
                                                                                        jmp   n25_var_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 6
                                                                                        jne   .Lx188_0
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 6
                                                                                        jne   .Lx188_0
                        mov              rax, qword ptr [rbp + 1672]
                        mov              rcx, qword ptr [rbp + 1656]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 1632], 6
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n53_call_proc_staged_α
.Lx188_0:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n29_disjunction_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n53_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx190_1
                        cmp              eax, 6
                                                                                        jne   .Lx190_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx190_0
.Lx190_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n54_unop_α
.Lx190_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n54_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n50_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n56_var_α
n50_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx192_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n55_call_proc_staged_α
.Lx192_0:
                        cmp              eax, 1
                                                                                        jne   .Lx192_1
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n55_call_proc_staged_α
.Lx192_1:
                                                                                        jmp   n55_call_proc_staged_α
n50_disjunction_β:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        je    n50_disjunction_af
                                                                                        jmp   n50_disjunction_af
n50_disjunction_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 1
                                                                                        je    n57_var_α
                                                                                        jmp   n62_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n59_binop_test_α
.Lx193_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_test_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx194_0
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 100
                                                                                        je    .Lx194_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx194_2
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 6
                                                                                        jne   .Lx194_2
.Lx194_1:
                        mov              rax, qword ptr [rbp + 40]
                        mov              rcx, qword ptr [rbp + 1512]
                        cmp              rax, rcx
                                                                                        je    n29_disjunction_af
                        mov              rcx, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rcx
                        mov              rcx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rcx
                                                                                        jmp   n60_var_α
.Lx194_0:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1512]
                        mov              r8d, 10
                        lea              r9, [rbp + 1472]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx194_1
                        cmp              eax, 1
                                                                                        je    n29_disjunction_af
                                                                                        jmp   n60_var_α
.Lx194_2:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1512]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n29_disjunction_af
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α:
                        lea              rsi, [rbp + 1632]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx196_2
.Lx196_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n29_disjunction_α
                                                                                        jmp   n29_disjunction_α
n53_call_proc_staged_β:
                                                                                        jmp   n29_disjunction_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n54_unop_α:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n61_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α:
                        lea              rsi, [rbp + 848]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx199_2
.Lx199_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n50_disjunction_β
                                                                                        jmp   n62_disjunction_α
n55_call_proc_staged_β:
                                                                                        jmp   n50_disjunction_β
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n63_var_α
n56_var_β:
                                                                                        jmp   n50_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n50_disjunction_as
n57_var_β:
                                                                                        jmp   n50_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx203_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx203_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx203_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx203_2
.Lx203_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jge   n50_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 880], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 888], rcx
                                                                                        jmp   n50_disjunction_as
.Lx203_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        lea              r9, [rbp + 880]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx203_1
                        cmp              eax, 1
                                                                                        je    n50_disjunction_af
                                                                                        jmp   n50_disjunction_as
.Lx203_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n50_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n50_disjunction_as
n58_binop_test_β:
                                                                                        jmp   n50_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_test_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx204_0
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 100
                                                                                        je    .Lx204_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx204_2
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 6
                                                                                        jne   .Lx204_2
.Lx204_1:
                        mov              rax, qword ptr [rbp + 40]
                        mov              rcx, qword ptr [rbp + 1240]
                        cmp              rax, rcx
                                                                                        je    n33_disjunction_af
                        mov              rcx, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rcx
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rcx
                                                                                        jmp   n64_var_α
.Lx204_0:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              r8d, 10
                        lea              r9, [rbp + 1200]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx204_1
                        cmp              eax, 1
                                                                                        je    n33_disjunction_af
                                                                                        jmp   n64_var_α
.Lx204_2:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n33_disjunction_af
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n65_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        lea              rsi, [rbp + 992]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx208_2
.Lx208_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n50_disjunction_α
                                                                                        jmp   n50_disjunction_α
n61_call_proc_staged_β:
                                                                                        jmp   n50_disjunction_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n62_disjunction_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0
                                                                                        jmp   n67_var_α
n62_disjunction_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        jne   .Lx210_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n66_call_proc_staged_α
.Lx210_0:
                        cmp              eax, 1
                                                                                        jne   .Lx210_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n66_call_proc_staged_α
.Lx210_1:
                                                                                        jmp   n66_call_proc_staged_α
n62_disjunction_β:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_af
n62_disjunction_af:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1
                                                                                        je    n68_var_α
                                                                                        jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n58_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n71_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α:
                        lea              rsi, [rbp + 704]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx218_2
.Lx218_2:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n62_disjunction_β
                                                                                        jmp   n72_disjunction_α
n66_call_proc_staged_β:
                                                                                        jmp   n62_disjunction_β
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n73_var_α
n67_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n62_disjunction_as
n68_var_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx222_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx222_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx222_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx222_2
.Lx222_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jg    n62_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rcx
                                                                                        jmp   n62_disjunction_as
.Lx222_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 6
                        lea              r9, [rbp + 736]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx222_1
                        cmp              eax, 1
                                                                                        je    n62_disjunction_af
                                                                                        jmp   n62_disjunction_as
.Lx222_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n62_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n62_disjunction_as
n69_binop_test_β:
                                                                                        jmp   n62_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n74_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx226_1
                        cmp              eax, 6
                                                                                        jne   .Lx226_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx226_0
.Lx226_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n75_op75_α
.Lx226_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 1424]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n75_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n77_var_α
n72_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx228_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n76_call_proc_staged_α
.Lx228_0:
                        cmp              eax, 1
                                                                                        jne   .Lx228_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n76_call_proc_staged_α
.Lx228_1:
                                                                                        jmp   n76_call_proc_staged_α
n72_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n72_disjunction_af
                                                                                        jmp   n72_disjunction_af
n72_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n78_var_α
                                                                                        jmp   n82_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n69_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx232_1
                        cmp              eax, 6
                                                                                        jne   .Lx232_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx232_0
.Lx232_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n80_op75_α
.Lx232_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 1152]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n80_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx234_1
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx234_0
.Lx234_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n81_binop_α
.Lx234_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1408]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n81_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_proc_staged_α:
                        lea              rsi, [rbp + 560]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx236_2
.Lx236_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n72_disjunction_β
                                                                                        jmp   n82_disjunction_α
n76_call_proc_staged_β:
                                                                                        jmp   n72_disjunction_β
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n83_var_α
n77_var_β:
                                                                                        jmp   n72_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n72_disjunction_as
n78_var_β:
                                                                                        jmp   n72_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx240_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx240_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx240_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx240_2
.Lx240_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jne   n72_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rcx
                                                                                        jmp   n72_disjunction_as
.Lx240_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 9
                        lea              r9, [rbp + 592]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx240_1
                        cmp              eax, 1
                                                                                        je    n72_disjunction_af
                                                                                        jmp   n72_disjunction_as
.Lx240_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n72_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n72_disjunction_as
n79_binop_test_β:
                                                                                        jmp   n72_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n80_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx242_1
                        cmp              eax, 6
                                                                                        jne   .Lx242_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx242_0
.Lx242_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n84_binop_α
.Lx242_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1136]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n84_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n81_binop_α:
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n33_disjunction_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n36_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n86_var_α
n82_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx245_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n85_call_proc_staged_α
.Lx245_0:
                        cmp              eax, 1
                                                                                        jne   .Lx245_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n85_call_proc_staged_α
.Lx245_1:
                                                                                        jmp   n85_call_proc_staged_α
n82_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        je    n82_disjunction_af
                                                                                        jmp   n82_disjunction_af
n82_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 1
                                                                                        je    n87_var_α
                                                                                        jmp   n89_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n79_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n41_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n44_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        lea              rsi, [rbp + 416]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx250_2
.Lx250_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n82_disjunction_β
                                                                                        jmp   n89_disjunction_α
n85_call_proc_staged_β:
                                                                                        jmp   n82_disjunction_β
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n90_var_α
n86_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n82_disjunction_as
n87_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx254_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx254_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx254_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx254_2
.Lx254_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        je    n82_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 448], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 456], rcx
                                                                                        jmp   n82_disjunction_as
.Lx254_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 10
                        lea              r9, [rbp + 448]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx254_1
                        cmp              eax, 1
                                                                                        je    n82_disjunction_af
                                                                                        jmp   n82_disjunction_as
.Lx254_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 10
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n82_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n82_disjunction_as
n88_binop_test_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n89_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n92_var_α
n89_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx256_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n91_call_proc_staged_α
.Lx256_0:
                        cmp              eax, 1
                                                                                        jne   .Lx256_1
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n91_call_proc_staged_α
.Lx256_1:
                                                                                        jmp   n91_call_proc_staged_α
n89_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        je    n89_disjunction_af
                                                                                        jmp   n89_disjunction_af
n89_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 1
                                                                                        je    n93_var_α
                                                                                        jmp   n95_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n88_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α:
                        lea              rsi, [rbp + 272]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx260_2
.Lx260_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n89_disjunction_β
                                                                                        jmp   n95_disjunction_α
n91_call_proc_staged_β:
                                                                                        jmp   n89_disjunction_β
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n96_var_α
n92_var_β:
                                                                                        jmp   n89_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n89_disjunction_as
n93_var_β:
                                                                                        jmp   n89_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx264_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx264_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx264_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx264_2
.Lx264_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jl    n89_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rcx
                                                                                        jmp   n89_disjunction_as
.Lx264_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 8
                        lea              r9, [rbp + 304]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx264_1
                        cmp              eax, 1
                                                                                        je    n89_disjunction_af
                                                                                        jmp   n89_disjunction_as
.Lx264_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n89_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n89_disjunction_as
n94_binop_test_β:
                                                                                        jmp   n89_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n95_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n98_var_α
n95_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx266_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n97_call_proc_staged_α
.Lx266_0:
                        cmp              eax, 1
                                                                                        jne   .Lx266_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n97_call_proc_staged_α
.Lx266_1:
                                                                                        jmp   n97_call_proc_staged_α
n95_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        je    n95_disjunction_af
                                                                                        jmp   n95_disjunction_af
n95_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 1
                                                                                        je    n99_var_α
                                                                                        jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n94_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx270_2
.Lx270_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n95_disjunction_β
                                                                                        jmp   n101_call_builtin_icon_α
n97_call_proc_staged_β:
                                                                                        jmp   n95_disjunction_β
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "wr5"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n102_var_α
n98_var_β:
                                                                                        jmp   n95_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n99_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n95_disjunction_as
n99_var_β:
                                                                                        jmp   n95_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n100_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx274_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx274_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx274_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx274_2
.Lx274_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jle   n95_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rcx
                                                                                        jmp   n95_disjunction_as
.Lx274_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 7
                        lea              r9, [rbp + 160]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx274_1
                        cmp              eax, 1
                                                                                        je    n95_disjunction_af
                                                                                        jmp   n95_disjunction_as
.Lx274_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n95_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n95_disjunction_as
n100_binop_test_β:
                                                                                        jmp   n95_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 64]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n103_return_α
                                                                                        jmp   n103_return_α
n101_call_builtin_icon_β:
                                                                                        jmp   n103_return_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n100_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n103_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_numtest_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_β:
                                                                                        jmp   proc_numtest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2472]
                        lea              rsp, [rbp + 2496]
                        mov              rbp, [rbp + 2488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_ω:
                        mov              rax, [rbp + 2480]
                        lea              rsp, [rbp + 2496]
                        mov              rbp, [rbp + 2488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_numtest_dcα:
                        pop              r11
                        sub              rsp, 2512
                        mov              qword ptr [rsp + 2488], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2464], r11
                        lea              rax, [rip + .Lx280_2]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rax, [rip + .Lx280_3]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2464
                        mov              edx, 2464
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_numtest_α_body
.Lx280_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2496
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx280_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2496
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_bitcombo_α
proc_bitcombo_α:
                        .global          proc_bitcombo_α
                        .global          proc_bitcombo_β
                        .global          proc_bitcombo_γ
                        .global          proc_bitcombo_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_bitcombo_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n283_var_α
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
                                                                                        je    n284_var_α
                        cmp              eax, 2
                                                                                        je    n285_var_α
                        cmp              eax, 3
                                                                                        je    n286_var_α
                        cmp              eax, 4
                                                                                        je    n287_var_α
                        cmp              eax, 5
                                                                                        je    n288_var_α
                        cmp              eax, 6
                                                                                        je    n289_var_α
                                                                                        jmp   n298_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n282_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        call             proc_wr5_dcα
                                                                                        jmp   .Lx303_2
.Lx303_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n281_disjunction_as
n283_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n281_disjunction_as
n284_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n290_call_builtin_icon_α
n285_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n291_call_builtin_icon_α
n286_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n295_var_α
n287_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n296_var_α
n288_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n297_var_α
n289_var_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn319:              .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn319]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n290_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn321:              .string          "icom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n291_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn323:              .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn323]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n292_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn325:              .string          "ior"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n293_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n294_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn327:              .string          "ixor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn327]
                        lea              rsi, [rbp + 528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n281_disjunction_af
                                                                                        jmp   n281_disjunction_as
n294_call_builtin_icon_β:
                                                                                        jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n292_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n293_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n294_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn335:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rbp + 64]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 616]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_bitcombo_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_bitcombo_dcα:
                        pop              r11
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 608], r11
                        lea              rax, [rip + .Lx337_2]
                        mov              qword ptr [rbp + 616], rax
                        lea              rax, [rip + .Lx337_3]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 608
                        mov              edx, 608
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_bitcombo_α_body
.Lx337_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx337_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wr5_α
proc_wr5_α:
                        .global          proc_wr5_α
                        .global          proc_wr5_β
                        .global          proc_wr5_γ
                        .global          proc_wr5_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 624
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_wr5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n338_disjunction_α:
                        mov              qword ptr [rbp + 416], 0
                        mov              qword ptr [rbp + 424], 0
                        mov              dword ptr [rbp + 432], 0
                                                                                        jmp   n340_var_α
n338_disjunction_as:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 0
                                                                                        jne   .Lx363_0
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n339_var_α
.Lx363_0:
                                                                                        jmp   n339_var_α
n338_disjunction_β:
                        mov              eax, dword ptr [rbp + 432]
                                                                                        jmp   n339_var_α
n338_disjunction_af:
                        add              dword ptr [rbp + 432], 1
                        mov              eax, dword ptr [rbp + 432]
                                                                                        jmp   n339_var_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n342_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n344_call_builtin_icon_α
n340_var_β:
                                                                                        jmp   n338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n341_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n338_disjunction_as
n341_assign_β:
                                                                                        jmp   n339_var_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn370:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n343_disjunction_α
                                                                                        jmp   n345_assign_α
n342_call_builtin_icon_β:
                                                                                        jmp   n343_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n343_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n347_var_α
n343_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx372_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n346_var_α
.Lx372_0:
                                                                                        jmp   n346_var_α
n343_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n346_var_α
n343_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n344_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn374:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n338_disjunction_af
                                                                                        jmp   n349_lit_string_α
n344_call_builtin_icon_β:
                                                                                        jmp   n338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n345_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n343_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n350_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n352_unop_α
n347_var_β:
                                                                                        jmp   n343_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n348_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n343_disjunction_as
n348_assign_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n353_binop_test_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n354_call_builtin_icon_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n351_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_wr5_γ
#-----------------------------------------------------------------------------------------------------------------------
n352_unop_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n355_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n353_binop_test_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n338_disjunction_af
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n356_var_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn387:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n351_return_α
                                                                                        jmp   n351_return_α
n354_call_builtin_icon_β:
                                                                                        jmp   n351_return_α
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n357_binop_test_α
.Lx388_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n358_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n357_binop_test_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 100
                                                                                        je    .Lx391_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx391_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx391_2
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx391_2
.Lx391_1:
                        mov              rax, qword ptr [rbp + 296]
                        mov              rcx, qword ptr [rbp + 328]
                        cmp              rax, rcx
                                                                                        jge   n343_disjunction_af
                        mov              rcx, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n359_var_α
.Lx391_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              r8d, 5
                        lea              r9, [rbp + 272]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx391_1
                        cmp              eax, 1
                                                                                        je    n343_disjunction_af
                                                                                        jmp   n359_var_α
.Lx391_2:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n343_disjunction_af
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n359_var_α
#-----------------------------------------------------------------------------------------------------------------------
n358_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        call             proc_r1_dcα
                                                                                        jmp   .Lx393_2
.Lx393_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n339_var_α
                                                                                        jmp   n341_assign_α
n358_call_proc_staged_β:
                                                                                        jmp   n339_var_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "r1"
#-----------------------------------------------------------------------------------------------------------------------
n359_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n360_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n361_call_builtin_icon_α
.Lx396_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n361_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn398:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn398]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n346_var_α
                                                                                        jmp   n348_assign_α
n361_call_builtin_icon_β:
                                                                                        jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_β:
                                                                                        jmp   proc_wr5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 648]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wr5_dcα:
                        pop              r11
                        sub              rsp, 688
                        mov              qword ptr [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 640], r11
                        lea              rax, [rip + .Lx399_2]
                        mov              qword ptr [rbp + 648], rax
                        lea              rax, [rip + .Lx399_3]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 624
                        mov              edx, 640
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wr5_α_body
.Lx399_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -672
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx399_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -672
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_r1_α
proc_r1_α:
                        .global          proc_r1_α
                        .global          proc_r1_β
                        .global          proc_r1_γ
                        .global          proc_r1_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 528
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_r1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n400_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n401_var_α
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
                                                                                        je    n402_var_α
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n403_lit_integer_α
n401_var_β:
                                                                                        jmp   n400_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n402_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n404_lit_integer_α
n402_var_β:
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n405_binop_test_α
.Lx434_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n406_op75_α
.Lx435_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n405_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx436_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 100
                                                                                        je    .Lx436_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx436_2
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx436_2
.Lx436_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 312]
                        cmp              rax, rcx
                                                                                        jl    n400_disjunction_af
                        mov              rcx, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n407_var_α
.Lx436_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              r8d, 8
                        lea              r9, [rbp + 272]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx436_1
                        cmp              eax, 1
                                                                                        je    n400_disjunction_af
                                                                                        jmp   n407_var_α
.Lx436_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n400_disjunction_af
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n407_var_α
#-----------------------------------------------------------------------------------------------------------------------
n406_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx438_1
                        cmp              eax, 6
                                                                                        jne   .Lx438_0
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx438_0
.Lx438_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n408_binop_α
.Lx438_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 480]
                        lea              rdx, [rbp + 448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n408_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n407_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n409_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n408_binop_α:
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx441_0
                        mov              rax, qword ptr [rbp + 456]
                        mov              rcx, 10
                        imul             rax, rcx
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n410_lit_real_α
.Lx441_0:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n410_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n411_op75_α
.Lx442_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_real_α:
                        mov              qword ptr [rbp + 496], 7
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n412_op75_α
.Lx443_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n411_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx445_1
                        cmp              eax, 6
                                                                                        jne   .Lx445_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 6
                                                                                        jne   .Lx445_0
.Lx445_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n413_binop_α
.Lx445_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n413_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n412_op75_α:
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 7
                                                                                        je    .Lx447_1
                        cmp              eax, 6
                                                                                        jne   .Lx447_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 6
                                                                                        jne   .Lx447_0
.Lx447_1:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n414_binop_α
.Lx447_0:
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 496]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n414_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n413_binop_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx448_0
                        mov              rax, qword ptr [rbp + 200]
                        mov              rcx, 10
                        imul             rax, rcx
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n415_lit_real_α
.Lx448_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n415_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n414_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n416_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_real_α:
                        mov              qword ptr [rbp + 240], 7
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n417_op75_α
.Lx450_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn452:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    proc_r1_ω
                                                                                        jmp   n418_lit_real_α
n416_call_builtin_icon_β:
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n417_op75_α:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 7
                                                                                        je    .Lx454_1
                        cmp              eax, 6
                                                                                        jne   .Lx454_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx454_0
.Lx454_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n419_binop_α
.Lx454_0:
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n419_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_real_α:
                        mov              qword ptr [rbp + 512], 7
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n420_op75_α
.Lx455_0:
                        .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n419_binop_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n421_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n420_op75_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx458_1
                        cmp              eax, 6
                                                                                        jne   .Lx458_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx458_0
.Lx458_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n422_binop_α
.Lx458_0:
                        lea              rdi, [rbp + 352]
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 336]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n422_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n421_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn460:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn460]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_r1_ω
                                                                                        jmp   n423_lit_real_α
n421_call_builtin_icon_β:
                                                                                        jmp   proc_r1_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    proc_r1_ω
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n424_return_α
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_real_α:
                        mov              qword ptr [rbp + 256], 7
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n425_op75_α
.Lx462_0:
                        .quad            4621819117588971520
#-----------------------------------------------------------------------------------------------------------------------
n424_return_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_r1_γ
#-----------------------------------------------------------------------------------------------------------------------
n425_op75_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx465_1
                        cmp              eax, 6
                                                                                        jne   .Lx465_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx465_0
.Lx465_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n426_binop_α
.Lx465_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 80]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n426_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n426_binop_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_div@PLT
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 536]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_r1_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_r1_dcα:
                        pop              r11
                        sub              rsp, 576
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 528], r11
                        lea              rax, [rip + .Lx468_2]
                        mov              qword ptr [rbp + 536], rax
                        lea              rax, [rip + .Lx468_3]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 528
                        mov              edx, 528
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_r1_α_body
.Lx468_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -560
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx468_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -560
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_shifttest_α
proc_shifttest_α:
                        .global          proc_shifttest_α
                        .global          proc_shifttest_β
                        .global          proc_shifttest_γ
                        .global          proc_shifttest_ω
                        sub              rsp, 768
                        mov              [rsp + 744], rcx
                        mov              [rsp + 752], rdx
                        mov              [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 720
                        mov              edx, 736
                        call             rt_jmp_frame_lexprep2@PLT
proc_shifttest_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n469_disjunction_α:
                        mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                                                                                        jmp   n471_lit_integer_α
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
                                                                                        je    n474_to_by_β
                        cmp              eax, 3
                                                                                        je    n469_disjunction_af
                                                                                        jmp   n469_disjunction_af
n469_disjunction_af:
                        add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 1
                                                                                        je    n472_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n473_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n475_lit_integer_α
                        cmp              eax, 4
                                                                                        je    n476_lit_integer_α
                                                                                        jmp   proc_shifttest_ω
#-----------------------------------------------------------------------------------------------------------------------
n470_assign_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n477_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_integer_α:
                        mov              qword ptr [rbp + 48], 6
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n469_disjunction_as
n471_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx498_0:
                        .quad            64
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n469_disjunction_as
n472_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx499_0:
                        .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n478_lit_integer_α
n473_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx500_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n474_to_by_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx502_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 152]
                        cmp              rdx, 0
                                                                                        jl    .Lx502_1
                        cmp              rax, rcx
                                                                                        jg    n469_disjunction_af
                                                                                        jmp   .Lx502_2
.Lx502_1:
                        cmp              rax, rcx
                                                                                        jl    n469_disjunction_af
.Lx502_2:
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n469_disjunction_as
n474_to_by_β:
                        mov              rdx, qword ptr [rbp + 152]
                        mov              rax, qword ptr [rbp + 96]
                        add              rax, rdx
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   .Lx502_0
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n469_disjunction_as
n475_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx503_0:
                        .quad            18446744073709551553
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n469_disjunction_as
n476_lit_integer_β:
                                                                                        jmp   n469_disjunction_af
.Lx504_0:
                        .quad            18446744073709551552
#-----------------------------------------------------------------------------------------------------------------------
n477_bound_α:
                        mov              qword ptr [rbp + 192], rsp
                                                                                        jmp   n479_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n480_lit_integer_α
.Lx507_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:
                        mov              qword ptr [rbp + 688], 6
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n481_var_α
.Lx508_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n474_to_by_α
.Lx509_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n481_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n482_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn513:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn513]
                        lea              rsi, [rbp + 640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n483_lit_integer_α
                                                                                        jmp   n484_call_proc_staged_α
n482_call_builtin_icon_β:
                                                                                        jmp   n483_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n485_var_α
.Lx514_0:
                        .quad            1703
#-----------------------------------------------------------------------------------------------------------------------
n484_call_proc_staged_α:
                        lea              rsi, [rbp + 624]
                        call             proc_wr25_dcα
                                                                                        jmp   .Lx516_2
.Lx516_2:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n483_lit_integer_α
                                                                                        jmp   n483_lit_integer_α
n484_call_proc_staged_β:
                                                                                        jmp   n483_lit_integer_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n486_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn520:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn520]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n487_lit_integer_α
                                                                                        jmp   n488_call_proc_staged_α
n486_call_builtin_icon_β:
                                                                                        jmp   n487_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n489_var_α
.Lx521_0:
                        .quad            18446744073709551365
#-----------------------------------------------------------------------------------------------------------------------
n488_call_proc_staged_α:
                        lea              rsi, [rbp + 480]
                        call             proc_wr25_dcα
                                                                                        jmp   .Lx523_2
.Lx523_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n487_lit_integer_α
                                                                                        jmp   n487_lit_integer_α
n488_call_proc_staged_β:
                                                                                        jmp   n487_lit_integer_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n489_var_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n490_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn527:              .string          "ishift"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn527]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n491_call_builtin_icon_α
                                                                                        jmp   n492_call_proc_staged_α
n490_call_builtin_icon_β:
                                                                                        jmp   n491_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn529:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]
                        lea              rsi, [rbp + 272]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n494_unmark_α
                                                                                        jmp   n493_conjunction_α
n491_call_builtin_icon_β:
                                                                                        jmp   n494_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n492_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        call             proc_wr25_dcα
                                                                                        jmp   .Lx531_2
.Lx531_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n491_call_builtin_icon_α
                                                                                        jmp   n491_call_builtin_icon_α
n492_call_proc_staged_β:
                                                                                        jmp   n491_call_builtin_icon_α
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          "wr25"
#-----------------------------------------------------------------------------------------------------------------------
n493_conjunction_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n494_unmark_α
n493_conjunction_β:
                                                                                        jmp   n494_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n494_unmark_α:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n469_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_β:
                                                                                        jmp   proc_shifttest_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 744]
                        lea              rsp, [rbp + 768]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_ω:
                        mov              rax, [rbp + 752]
                        lea              rsp, [rbp + 768]
                        mov              rbp, [rbp + 760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_shifttest_dcα:
                        pop              r11
                        sub              rsp, 784
                        mov              qword ptr [rsp + 760], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 736], r11
                        lea              rax, [rip + .Lx535_2]
                        mov              qword ptr [rbp + 744], rax
                        lea              rax, [rip + .Lx535_3]
                        mov              qword ptr [rbp + 752], rax
                        mov              rdi, rbp
                        mov              esi, 720
                        mov              edx, 736
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_shifttest_α_body
.Lx535_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx535_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wr25_α
proc_wr25_α:
                        .global          proc_wr25_α
                        .global          proc_wr25_β
                        .global          proc_wr25_γ
                        .global          proc_wr25_ω
                        sub              rsp, 208
                        mov              [rsp + 184], rcx
                        mov              [rsp + 192], rdx
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 176
                        call             rt_jmp_frame_lexprep2@PLT
proc_wr25_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n536_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n537_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_integer_α:
                        mov              qword ptr [rsp + 160], 6
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n538_call_builtin_icon_α
.Lx542_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n538_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn544:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_wr25_ω
                                                                                        jmp   n539_call_builtin_icon_α
n538_call_builtin_icon_β:
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
                        lea              rdi, [rip + .Lrkfn546]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_wr25_ω
                                                                                        jmp   proc_wr25_ω
n539_call_builtin_icon_β:
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
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 184]
                        add              rsp, 208
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wr25_ω:
                        mov              rax, [rsp + 192]
                        add              rsp, 208
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wr25_dcα:
                        pop              r11
                        sub              rsp, 224
                        mov              qword ptr [rsp + 200], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 176], r11
                        lea              rax, [rip + .Lx547_2]
                        mov              qword ptr [rsp + 184], rax
                        lea              rax, [rip + .Lx547_3]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 176
                        mov              edx, 176
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wr25_α_body
.Lx547_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -208
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx547_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -208
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pow_α
proc_pow_α:
                        .global          proc_pow_α
                        .global          proc_pow_β
                        .global          proc_pow_γ
                        .global          proc_pow_ω
                        sub              rsp, 1424
                        mov              [rsp + 1400], rcx
                        mov              [rsp + 1408], rdx
                        mov              [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1376
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
proc_pow_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n548_disjunction_α:
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              dword ptr [rbp + 1248], 0
                                                                                        jmp   n550_var_α
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
                                                                                        jmp   n551_var_α
#-----------------------------------------------------------------------------------------------------------------------
n550_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n553_lit_integer_α
n550_var_β:
                                                                                        jmp   n548_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n551_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n554_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n552_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n556_var_α
n552_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx617_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n555_var_α
.Lx617_0:
                                                                                        jmp   n555_var_α
n552_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n557_disjunction_β
n552_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n558_binop_test_α
.Lx618_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n554_op75_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 7
                                                                                        je    .Lx620_1
                        cmp              eax, 6
                                                                                        jne   .Lx620_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx620_0
.Lx620_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n559_op75_α
.Lx620_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 1184]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n559_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n555_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n560_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n562_call_builtin_icon_α
n556_var_β:
                                                                                        jmp   n552_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n557_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n563_var_α
n557_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx626_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n552_disjunction_as
.Lx626_0:
                        cmp              eax, 1
                                                                                        jne   .Lx626_1
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n552_disjunction_as
.Lx626_1:
                                                                                        jmp   n552_disjunction_as
n557_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n555_var_α
                                                                                        jmp   n555_var_α
n557_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n564_var_α
                                                                                        jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n558_binop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 100
                                                                                        je    .Lx627_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 100
                                                                                        je    .Lx627_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx627_2
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx627_2
.Lx627_1:
                        mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1368]
                        cmp              rax, rcx
                                                                                        jne   n548_disjunction_af
                        mov              rcx, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rcx
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rcx
                                                                                        jmp   n567_var_α
.Lx627_0:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              r8d, 9
                        lea              r9, [rbp + 1328]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx627_1
                        cmp              eax, 1
                                                                                        je    n548_disjunction_af
                                                                                        jmp   n567_var_α
.Lx627_2:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n548_disjunction_af
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n559_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx629_1
                        cmp              eax, 6
                                                                                        jne   .Lx629_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 6
                                                                                        jne   .Lx629_0
.Lx629_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n568_binop_α
.Lx629_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1168]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n568_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n569_call_builtin_icon_α
.Lx630_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n561_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_pow_γ
#-----------------------------------------------------------------------------------------------------------------------
n562_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn633:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn633]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n552_disjunction_af
                                                                                        jmp   n570_lit_string_α
n562_call_builtin_icon_β:
                                                                                        jmp   n552_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n563_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n571_lit_integer_α
n563_var_β:
                                                                                        jmp   n557_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n572_lit_integer_α
n564_var_β:
                                                                                        jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n565_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n557_disjunction_as
n565_assign_β:
                                                                                        jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n566_assign_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n557_disjunction_as
n566_assign_β:
                                                                                        jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n573_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n568_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_pow@PLT
                        cmp              eax, 99
                                                                                        je    n552_disjunction_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n574_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n569_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn644:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn644]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n561_return_α
                                                                                        jmp   n575_lit_string_α
n569_call_builtin_icon_β:
                                                                                        jmp   n561_return_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n576_binop_test_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n577_binop_test_α
.Lx646_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n578_op75_α
.Lx647_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n579_binop_test_α
.Lx648_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n574_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n552_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n580_var_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          " ^ "
#-----------------------------------------------------------------------------------------------------------------------
n576_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n552_disjunction_af
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n557_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n577_binop_test_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n557_disjunction_af
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n581_var_α
#-----------------------------------------------------------------------------------------------------------------------
n578_op75_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 7
                                                                                        je    .Lx654_1
                        cmp              eax, 6
                                                                                        jne   .Lx654_0
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 6
                                                                                        jne   .Lx654_0
.Lx654_1:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n582_binop_α
.Lx654_0:
                        lea              rdi, [rbp + 1376]
                        lea              rsi, [rbp + 992]
                        lea              rdx, [rbp + 960]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n582_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n579_binop_test_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 100
                                                                                        je    .Lx655_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 100
                                                                                        je    .Lx655_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx655_2
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 6
                                                                                        jne   .Lx655_2
.Lx655_1:
                        mov              rax, qword ptr [rbp + 40]
                        mov              rcx, qword ptr [rbp + 1320]
                        cmp              rax, rcx
                                                                                        jg    n548_disjunction_af
                        mov              rcx, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rcx
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rcx
                                                                                        jmp   n583_conjunction_α
.Lx655_0:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 6
                        lea              r9, [rbp + 1280]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx655_1
                        cmp              eax, 1
                                                                                        je    n548_disjunction_af
                                                                                        jmp   n583_conjunction_α
.Lx655_2:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n548_disjunction_af
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n583_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n584_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n581_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n585_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n582_binop_α:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                                                                                        jne   .Lx660_0
                        mov              rax, qword ptr [rbp + 968]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 944], 6
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n586_lit_real_α
.Lx660_0:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n555_var_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n586_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n583_conjunction_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   proc_pow_ω
n583_conjunction_β:
                                                                                        jmp   n548_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n587_call_builtin_icon_α
.Lx662_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n588_op75_α
.Lx663_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_real_α:
                        mov              qword ptr [rbp + 1008], 7
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n589_op75_α
.Lx664_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n587_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn666:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn666]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n561_return_α
                                                                                        jmp   n590_lit_string_α
n587_call_builtin_icon_β:
                                                                                        jmp   n561_return_α
#-----------------------------------------------------------------------------------------------------------------------
n588_op75_α:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 7
                                                                                        je    .Lx668_1
                        cmp              eax, 6
                                                                                        jne   .Lx668_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx668_0
.Lx668_1:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n591_binop_α
.Lx668_0:
                        lea              rdi, [rbp + 1376]
                        lea              rsi, [rbp + 720]
                        lea              rdx, [rbp + 688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n591_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n589_op75_α:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 7
                                                                                        je    .Lx670_1
                        cmp              eax, 6
                                                                                        jne   .Lx670_0
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 6
                                                                                        jne   .Lx670_0
.Lx670_1:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n592_binop_α
.Lx670_0:
                        lea              rdi, [rbp + 944]
                        lea              rsi, [rbp + 1008]
                        lea              rdx, [rbp + 928]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n592_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n593_var_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n591_binop_α:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx672_0
                        mov              rax, qword ptr [rbp + 696]
                        mov              rcx, 1000
                        imul             rax, rcx
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n594_lit_real_α
.Lx672_0:
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    n555_var_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n594_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n592_binop_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n555_var_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n595_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n593_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n596_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_real_α:
                        mov              qword ptr [rbp + 736], 7
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n597_op75_α
.Lx676_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n595_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn678:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn678]
                        lea              rsi, [rbp + 880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n555_var_α
                                                                                        jmp   n598_lit_real_α
n595_call_builtin_icon_β:
                                                                                        jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n599_call_builtin_icon_α
.Lx679_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n597_op75_α:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 7
                                                                                        je    .Lx681_1
                        cmp              eax, 6
                                                                                        jne   .Lx681_0
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 6
                                                                                        jne   .Lx681_0
.Lx681_1:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n600_binop_α
.Lx681_0:
                        lea              rdi, [rbp + 672]
                        lea              rsi, [rbp + 736]
                        lea              rdx, [rbp + 656]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n600_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_real_α:
                        mov              qword ptr [rbp + 1024], 7
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n601_op75_α
.Lx682_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n599_call_builtin_icon_α:
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
                        lea              rdi, [rip + .Lrkfn684]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n561_return_α
                                                                                        jmp   n602_call_builtin_icon_α
n599_call_builtin_icon_β:
                                                                                        jmp   n561_return_α
#-----------------------------------------------------------------------------------------------------------------------
n600_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n555_var_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n603_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n601_op75_α:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 7
                                                                                        je    .Lx687_1
                        cmp              eax, 6
                                                                                        jne   .Lx687_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx687_0
.Lx687_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n604_binop_α
.Lx687_0:
                        lea              rdi, [rbp + 864]
                        lea              rsi, [rbp + 1024]
                        lea              rdx, [rbp + 848]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n604_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n602_call_builtin_icon_α:
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
.Lrkfn689:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn689]
                        lea              rsi, [rbp + 64]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n561_return_α
                                                                                        jmp   n561_return_α
n602_call_builtin_icon_β:
                                                                                        jmp   n561_return_α
#-----------------------------------------------------------------------------------------------------------------------
n603_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn691:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn691]
                        lea              rsi, [rbp + 608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n555_var_α
                                                                                        jmp   n605_lit_real_α
n603_call_builtin_icon_β:
                                                                                        jmp   n555_var_α
#-----------------------------------------------------------------------------------------------------------------------
n604_binop_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n555_var_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n566_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_real_α:
                        mov              qword ptr [rbp + 752], 7
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n606_op75_α
.Lx693_0:
                        .quad            4652007308841189376
#-----------------------------------------------------------------------------------------------------------------------
n606_op75_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 7
                                                                                        je    .Lx695_1
                        cmp              eax, 6
                                                                                        jne   .Lx695_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx695_0
.Lx695_1:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n607_binop_α
.Lx695_0:
                        lea              rdi, [rbp + 592]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 576]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n607_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n607_binop_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n555_var_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n565_assign_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_β:
                                                                                        jmp   proc_pow_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1400]
                        lea              rsp, [rbp + 1424]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_ω:
                        mov              rax, [rbp + 1408]
                        lea              rsp, [rbp + 1424]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pow_dcα:
                        pop              r11
                        sub              rsp, 1440
                        mov              qword ptr [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1392], r11
                        lea              rax, [rip + .Lx697_2]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rax, [rip + .Lx697_3]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1376
                        mov              edx, 1392
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pow_α_body
.Lx697_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1424
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx697_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1424
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
                        sub              rsp, 3624
                        mov              rdi, rsp
                        mov              ecx, 3624
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3616], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 6
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n699_lit_integer_α
.Lx822_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_integer_α:
                        mov              qword ptr [rbp + 3568], 6
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n700_call_proc_staged_α
.Lx823_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n700_call_proc_staged_α:
                        lea              rsi, [rbp + 3552]
                        lea              rdx, [rbp + 3568]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx825_2
.Lx825_2:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n701_lit_integer_α
                                                                                        jmp   n701_lit_integer_α
n700_call_proc_staged_β:
                                                                                        jmp   n701_lit_integer_α
.Lx825_0:
                        .quad            .Lx825_0_s
.Lx825_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_integer_α:
                        mov              qword ptr [rbp + 3456], 6
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n702_lit_integer_α
.Lx826_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n702_lit_integer_α:
                        mov              qword ptr [rbp + 3472], 6
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n703_call_proc_staged_α
.Lx827_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n703_call_proc_staged_α:
                        lea              rsi, [rbp + 3456]
                        lea              rdx, [rbp + 3472]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx829_2
.Lx829_2:
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n704_lit_integer_α
                                                                                        jmp   n704_lit_integer_α
n703_call_proc_staged_β:
                                                                                        jmp   n704_lit_integer_α
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_integer_α:
                        mov              qword ptr [rbp + 3360], 6
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n705_lit_integer_α
.Lx830_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_integer_α:
                        mov              qword ptr [rbp + 3376], 6
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n706_call_proc_staged_α
.Lx831_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        lea              rsi, [rbp + 3360]
                        lea              rdx, [rbp + 3376]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx833_2
.Lx833_2:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n707_lit_integer_α
                                                                                        jmp   n707_lit_integer_α
n706_call_proc_staged_β:
                                                                                        jmp   n707_lit_integer_α
.Lx833_0:
                        .quad            .Lx833_0_s
.Lx833_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_integer_α:
                        mov              qword ptr [rbp + 3264], 6
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 3272], rax
                                                                                        jmp   n708_lit_integer_α
.Lx834_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_integer_α:
                        mov              qword ptr [rbp + 3280], 6
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n709_call_proc_staged_α
.Lx835_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n709_call_proc_staged_α:
                        lea              rsi, [rbp + 3264]
                        lea              rdx, [rbp + 3280]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx837_2
.Lx837_2:
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n710_lit_integer_α
                                                                                        jmp   n710_lit_integer_α
n709_call_proc_staged_β:
                                                                                        jmp   n710_lit_integer_α
.Lx837_0:
                        .quad            .Lx837_0_s
.Lx837_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_integer_α:
                        mov              qword ptr [rbp + 3168], 6
                        mov              rax, qword ptr [rip + .Lx838_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n711_lit_integer_α
.Lx838_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_integer_α:
                        mov              qword ptr [rbp + 3184], 6
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n712_call_proc_staged_α
.Lx839_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n712_call_proc_staged_α:
                        lea              rsi, [rbp + 3168]
                        lea              rdx, [rbp + 3184]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx841_2
.Lx841_2:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n713_lit_integer_α
                                                                                        jmp   n713_lit_integer_α
n712_call_proc_staged_β:
                                                                                        jmp   n713_lit_integer_α
.Lx841_0:
                        .quad            .Lx841_0_s
.Lx841_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_integer_α:
                        mov              qword ptr [rbp + 3072], 6
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n714_lit_integer_α
.Lx842_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:
                        mov              qword ptr [rbp + 3088], 6
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n715_call_proc_staged_α
.Lx843_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n715_call_proc_staged_α:
                        lea              rsi, [rbp + 3072]
                        lea              rdx, [rbp + 3088]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx845_2
.Lx845_2:
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n716_lit_integer_α
                                                                                        jmp   n716_lit_integer_α
n715_call_proc_staged_β:
                                                                                        jmp   n716_lit_integer_α
.Lx845_0:
                        .quad            .Lx845_0_s
.Lx845_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_integer_α:
                        mov              qword ptr [rbp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx846_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n717_lit_integer_α
.Lx846_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_integer_α:
                        mov              qword ptr [rbp + 2992], 6
                        mov              rax, qword ptr [rip + .Lx847_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n718_call_proc_staged_α
.Lx847_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n718_call_proc_staged_α:
                        lea              rsi, [rbp + 2976]
                        lea              rdx, [rbp + 2992]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx849_2
.Lx849_2:
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n719_lit_integer_α
                                                                                        jmp   n719_lit_integer_α
n718_call_proc_staged_β:
                                                                                        jmp   n719_lit_integer_α
.Lx849_0:
                        .quad            .Lx849_0_s
.Lx849_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_integer_α:
                        mov              qword ptr [rbp + 2880], 6
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n720_lit_integer_α
.Lx850_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_integer_α:
                        mov              qword ptr [rbp + 2896], 6
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n721_call_proc_staged_α
.Lx851_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n721_call_proc_staged_α:
                        lea              rsi, [rbp + 2880]
                        lea              rdx, [rbp + 2896]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx853_2
.Lx853_2:
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n722_lit_real_α
                                                                                        jmp   n722_lit_real_α
n721_call_proc_staged_β:
                                                                                        jmp   n722_lit_real_α
.Lx853_0:
                        .quad            .Lx853_0_s
.Lx853_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_real_α:
                        mov              qword ptr [rbp + 2784], 7
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n723_lit_integer_α
.Lx854_0:
                        .quad            4618666597849812173
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_integer_α:
                        mov              qword ptr [rbp + 2800], 6
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n724_call_proc_staged_α
.Lx855_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        lea              rsi, [rbp + 2784]
                        lea              rdx, [rbp + 2800]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx857_2
.Lx857_2:
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_integer_α
                                                                                        jmp   n725_lit_integer_α
n724_call_proc_staged_β:
                                                                                        jmp   n725_lit_integer_α
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_integer_α:
                        mov              qword ptr [rbp + 2688], 6
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n726_lit_real_α
.Lx858_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_real_α:
                        mov              qword ptr [rbp + 2704], 7
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n727_call_proc_staged_α
.Lx859_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n727_call_proc_staged_α:
                        lea              rsi, [rbp + 2688]
                        lea              rdx, [rbp + 2704]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx861_2
.Lx861_2:
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n728_lit_real_α
                                                                                        jmp   n728_lit_real_α
n727_call_proc_staged_β:
                                                                                        jmp   n728_lit_real_α
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_real_α:
                        mov              qword ptr [rbp + 2592], 7
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n729_lit_real_α
.Lx862_0:
                        .quad            4617765877924338074
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_real_α:
                        mov              qword ptr [rbp + 2608], 7
                        mov              rax, qword ptr [rip + .Lx863_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n730_call_proc_staged_α
.Lx863_0:
                        .quad            4608083138725491507
#-----------------------------------------------------------------------------------------------------------------------
n730_call_proc_staged_α:
                        lea              rsi, [rbp + 2592]
                        lea              rdx, [rbp + 2608]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx865_2
.Lx865_2:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n731_lit_string_α
                                                                                        jmp   n731_lit_string_α
n730_call_proc_staged_β:
                                                                                        jmp   n731_lit_string_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n732_lit_real_α
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          " 1 "
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_real_α:
                        mov              qword ptr [rbp + 2512], 7
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n733_call_proc_staged_α
.Lx867_0:
                        .quad            4612811918334230528
#-----------------------------------------------------------------------------------------------------------------------
n733_call_proc_staged_α:
                        lea              rsi, [rbp + 2496]
                        lea              rdx, [rbp + 2512]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx869_2
.Lx869_2:
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n734_lit_string_α
                                                                                        jmp   n734_lit_string_α
n733_call_proc_staged_β:
                                                                                        jmp   n734_lit_string_α
.Lx869_0:
                        .quad            .Lx869_0_s
.Lx869_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n735_lit_real_α
.Lx870_0:
                        .quad            .Lx870_0_s
.Lx870_0_s:
                        .string          " 3.4"
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_real_α:
                        mov              qword ptr [rbp + 2416], 7
                        mov              rax, qword ptr [rip + .Lx871_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n736_call_proc_staged_α
.Lx871_0:
                        .quad            4610334938539176755
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        lea              rsi, [rbp + 2400]
                        lea              rdx, [rbp + 2416]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx873_2
.Lx873_2:
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n737_lit_string_α
                                                                                        jmp   n737_lit_string_α
n736_call_proc_staged_β:
                                                                                        jmp   n737_lit_string_α
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n738_lit_string_α
.Lx874_0:
                        .quad            .Lx874_0_s
.Lx874_0_s:
                        .string          " 5 "
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx875_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n739_call_proc_staged_α
.Lx875_0:
                        .quad            .Lx875_0_s
.Lx875_0_s:
                        .string          " 5 "
#-----------------------------------------------------------------------------------------------------------------------
n739_call_proc_staged_α:
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 2320]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx877_2
.Lx877_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n740_lit_charset_α
                                                                                        jmp   n740_lit_charset_α
n739_call_proc_staged_β:
                                                                                        jmp   n740_lit_charset_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_charset_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              dword ptr [rbp + 2212], -1
                        mov              rax, qword ptr [rip + .Lx878_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n741_lit_charset_α
.Lx878_0:
                        .quad            .Lx878_0_s
.Lx878_0_s:
                        .string          "04"
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_charset_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              dword ptr [rbp + 2228], -1
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n742_call_proc_staged_α
.Lx879_0:
                        .quad            .Lx879_0_s
.Lx879_0_s:
                        .string          "7"
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        lea              rsi, [rbp + 2208]
                        lea              rdx, [rbp + 2224]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx881_2
.Lx881_2:
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n743_lit_integer_α
                                                                                        jmp   n743_lit_integer_α
n742_call_proc_staged_β:
                                                                                        jmp   n743_lit_integer_α
.Lx881_0:
                        .quad            .Lx881_0_s
.Lx881_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n744_lit_charset_α
.Lx882_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_charset_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              dword ptr [rbp + 2132], -1
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n745_call_proc_staged_α
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "12"
#-----------------------------------------------------------------------------------------------------------------------
n745_call_proc_staged_α:
                        lea              rsi, [rbp + 2112]
                        lea              rdx, [rbp + 2128]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx885_2
.Lx885_2:
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n746_lit_real_α
                                                                                        jmp   n746_lit_real_α
n745_call_proc_staged_β:
                                                                                        jmp   n746_lit_real_α
.Lx885_0:
                        .quad            .Lx885_0_s
.Lx885_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_real_α:
                        mov              qword ptr [rbp + 2016], 7
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n747_lit_real_α
.Lx886_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_real_α:
                        mov              qword ptr [rbp + 2032], 7
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n748_call_proc_staged_α
.Lx887_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        lea              rsi, [rbp + 2016]
                        lea              rdx, [rbp + 2032]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx889_2
.Lx889_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n749_lit_real_α
                                                                                        jmp   n749_lit_real_α
n748_call_proc_staged_β:
                                                                                        jmp   n749_lit_real_α
.Lx889_0:
                        .quad            .Lx889_0_s
.Lx889_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_real_α:
                        mov              qword ptr [rbp + 1920], 7
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n750_lit_real_α
.Lx890_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_real_α:
                        mov              qword ptr [rbp + 1936], 7
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n751_call_proc_staged_α
.Lx891_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n751_call_proc_staged_α:
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1936]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx893_2
.Lx893_2:
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n752_lit_real_α
                                                                                        jmp   n752_lit_real_α
n751_call_proc_staged_β:
                                                                                        jmp   n752_lit_real_α
.Lx893_0:
                        .quad            .Lx893_0_s
.Lx893_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_real_α:
                        mov              qword ptr [rbp + 1824], 7
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n753_lit_real_α
.Lx894_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_real_α:
                        mov              qword ptr [rbp + 1840], 7
                        mov              rax, qword ptr [rip + .Lx895_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n754_call_proc_staged_α
.Lx895_0:
                        .quad            13830554455654793216
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        lea              rsi, [rbp + 1824]
                        lea              rdx, [rbp + 1840]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx897_2
.Lx897_2:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n755_lit_integer_α
                                                                                        jmp   n755_lit_integer_α
n754_call_proc_staged_β:
                                                                                        jmp   n755_lit_integer_α
.Lx897_0:
                        .quad            .Lx897_0_s
.Lx897_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n756_lit_integer_α
.Lx898_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n757_call_proc_staged_α
.Lx899_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n757_call_proc_staged_α:
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1744]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx901_2
.Lx901_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n758_lit_real_α
                                                                                        jmp   n758_lit_real_α
n757_call_proc_staged_β:
                                                                                        jmp   n758_lit_real_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_real_α:
                        mov              qword ptr [rbp + 1632], 7
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n759_lit_real_α
.Lx902_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_real_α:
                        mov              qword ptr [rbp + 1648], 7
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n760_call_proc_staged_α
.Lx903_0:
                        .quad            13835058055282163712
#-----------------------------------------------------------------------------------------------------------------------
n760_call_proc_staged_α:
                        lea              rsi, [rbp + 1632]
                        lea              rdx, [rbp + 1648]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx905_2
.Lx905_2:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n761_lit_integer_α
                                                                                        jmp   n761_lit_integer_α
n760_call_proc_staged_β:
                                                                                        jmp   n761_lit_integer_α
.Lx905_0:
                        .quad            .Lx905_0_s
.Lx905_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n761_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n762_lit_integer_α
.Lx906_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n763_call_proc_staged_α
.Lx907_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        lea              rsi, [rbp + 1536]
                        lea              rdx, [rbp + 1552]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx909_2
.Lx909_2:
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n764_lit_real_α
                                                                                        jmp   n764_lit_real_α
n763_call_proc_staged_β:
                                                                                        jmp   n764_lit_real_α
.Lx909_0:
                        .quad            .Lx909_0_s
.Lx909_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_real_α:
                        mov              qword ptr [rbp + 1440], 7
                        mov              rax, qword ptr [rip + .Lx910_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n765_lit_string_α
.Lx910_0:
                        .quad            13837309855095848960
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n766_call_proc_staged_α
.Lx911_0:
                        .quad            .Lx911_0_s
.Lx911_0_s:
                        .string          " 2. "
#-----------------------------------------------------------------------------------------------------------------------
n766_call_proc_staged_α:
                        lea              rsi, [rbp + 1440]
                        lea              rdx, [rbp + 1456]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx913_2
.Lx913_2:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n767_lit_integer_α
                                                                                        jmp   n767_lit_integer_α
n766_call_proc_staged_β:
                                                                                        jmp   n767_lit_integer_α
.Lx913_0:
                        .quad            .Lx913_0_s
.Lx913_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx914_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n768_lit_integer_α
.Lx914_0:
                        .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx915_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n769_call_proc_staged_α
.Lx915_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n769_call_proc_staged_α:
                        lea              rsi, [rbp + 1344]
                        lea              rdx, [rbp + 1360]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx917_2
.Lx917_2:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n770_lit_real_α
                                                                                        jmp   n770_lit_real_α
n769_call_proc_staged_β:
                                                                                        jmp   n770_lit_real_α
.Lx917_0:
                        .quad            .Lx917_0_s
.Lx917_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_real_α:
                        mov              qword ptr [rbp + 1248], 7
                        mov              rax, qword ptr [rip + .Lx918_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n771_lit_real_α
.Lx918_0:
                        .quad            13841813454723219456
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_real_α:
                        mov              qword ptr [rbp + 1264], 7
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n772_call_proc_staged_α
.Lx919_0:
                        .quad            13837309855095848960
#-----------------------------------------------------------------------------------------------------------------------
n772_call_proc_staged_α:
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1264]
                        call             proc_numtest_dcα
                                                                                        jmp   .Lx921_2
.Lx921_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n773_call_builtin_icon_α
                                                                                        jmp   n773_call_builtin_icon_α
n772_call_proc_staged_β:
                                                                                        jmp   n773_call_builtin_icon_α
.Lx921_0:
                        .quad            .Lx921_0_s
.Lx921_0_s:
                        .string          "numtest"
#-----------------------------------------------------------------------------------------------------------------------
n773_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn923:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn923]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n774_disjunction_α
                                                                                        jmp   n774_disjunction_α
n773_call_builtin_icon_β:
                                                                                        jmp   n774_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n774_disjunction_α:
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0
                                                                                        jmp   n776_lit_integer_α
n774_disjunction_as:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        jne   .Lx925_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx925_0:
                        cmp              eax, 1
                                                                                        jne   .Lx925_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx925_1:
                        cmp              eax, 2
                                                                                        jne   .Lx925_2
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx925_2:
                        cmp              eax, 3
                                                                                        jne   .Lx925_3
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n775_assign_α
.Lx925_3:
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
                                                                                        je    n777_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n778_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n779_lit_integer_α
                                                                                        jmp   n792_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n775_assign_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n780_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx927_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n774_disjunction_as
n776_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx927_0:
                        .quad            18446744073709551607
#-----------------------------------------------------------------------------------------------------------------------
n777_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n774_disjunction_as
n777_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx928_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n774_disjunction_as
n778_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx929_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx930_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n774_disjunction_as
n779_lit_integer_β:
                                                                                        jmp   n774_disjunction_af
.Lx930_0:
                        .quad            191
#-----------------------------------------------------------------------------------------------------------------------
n780_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n782_lit_integer_α
n780_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx932_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n781_assign_α
.Lx932_0:
                        cmp              eax, 1
                                                                                        jne   .Lx932_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n781_assign_α
.Lx932_1:
                        cmp              eax, 2
                                                                                        jne   .Lx932_2
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n781_assign_α
.Lx932_2:
                        cmp              eax, 3
                                                                                        jne   .Lx932_3
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n781_assign_α
.Lx932_3:
                                                                                        jmp   n781_assign_α
n780_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n780_disjunction_af
                        cmp              eax, 1
                                                                                        je    n780_disjunction_af
                        cmp              eax, 2
                                                                                        je    n780_disjunction_af
                                                                                        jmp   n780_disjunction_af
n780_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n783_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n784_lit_integer_α
                        cmp              eax, 3
                                                                                        je    n785_lit_integer_α
                                                                                        jmp   n774_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n781_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n786_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n782_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n780_disjunction_as
n782_lit_integer_β:
                                                                                        jmp   n780_disjunction_af
.Lx934_0:
                        .quad            18446744073709551593
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n780_disjunction_as
n783_lit_integer_β:
                                                                                        jmp   n780_disjunction_af
.Lx935_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n784_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx936_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n780_disjunction_as
n784_lit_integer_β:
                                                                                        jmp   n780_disjunction_af
.Lx936_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx937_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n780_disjunction_as
n785_lit_integer_β:
                                                                                        jmp   n780_disjunction_af
.Lx937_0:
                        .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n786_conjunction_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n787_bound_α
n786_conjunction_β:
                                                                                        jmp   n792_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n787_bound_α:
                        mov              qword ptr [rbp + 1008], rsp
                                                                                        jmp   n788_var_α
#-----------------------------------------------------------------------------------------------------------------------
n788_var_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n789_var_α
#-----------------------------------------------------------------------------------------------------------------------
n789_var_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n791_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n790_unmark_α:
                        mov              rsp, qword ptr [rbp + 1008]
                                                                                        jmp   n780_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n791_call_proc_staged_α:
                        lea              rsi, [rbp + 1120]
                        lea              rdx, [rbp + 1136]
                        call             proc_bitcombo_dcα
                                                                                        jmp   .Lx948_2
.Lx948_2:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n790_unmark_α
                                                                                        jmp   n790_unmark_α
n791_call_proc_staged_β:
                                                                                        jmp   n790_unmark_α
.Lx948_0:
                        .quad            .Lx948_0_s
.Lx948_0_s:
                        .string          "bitcombo"
#-----------------------------------------------------------------------------------------------------------------------
n792_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn950:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn950]
                        lea              rsi, [rbp + 752]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n793_call_proc_staged_α
                                                                                        jmp   n793_call_proc_staged_α
n792_call_builtin_icon_β:
                                                                                        jmp   n793_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n793_call_proc_staged_α:
                        call             proc_shifttest_dcα
                                                                                        jmp   .Lx952_2
.Lx952_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n794_call_builtin_icon_α
                                                                                        jmp   n794_call_builtin_icon_α
n793_call_proc_staged_β:
                                                                                        jmp   n794_call_builtin_icon_α
.Lx952_0:
                        .quad            .Lx952_0_s
.Lx952_0_s:
                        .string          "shifttest"
#-----------------------------------------------------------------------------------------------------------------------
n794_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn954:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn954]
                        lea              rsi, [rbp + 688]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n795_lit_integer_α
                                                                                        jmp   n795_lit_integer_α
n794_call_builtin_icon_β:
                                                                                        jmp   n795_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n796_lit_integer_α
.Lx955_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx956_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n797_to_α
.Lx956_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n797_to_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 576], 6
                        mov              qword ptr [rbp + 584], rax
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 592], 6
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 560], rax
.Lx958_0:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 600]
                        cmp              rax, rcx
                                                                                        jg    n799_disjunction_α
                        mov              qword ptr [rbp + 544], 6
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n798_lit_integer_α
n797_to_β:
                        inc              qword ptr [rbp + 560]
                                                                                        jmp   .Lx958_0
#-----------------------------------------------------------------------------------------------------------------------
n798_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n800_lit_integer_α
.Lx959_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n799_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n803_lit_real_α
n799_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx961_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n801_lit_integer_α
.Lx961_0:
                        cmp              eax, 1
                                                                                        jne   .Lx961_1
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n801_lit_integer_α
.Lx961_1:
                        cmp              eax, 2
                                                                                        jne   .Lx961_2
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n801_lit_integer_α
.Lx961_2:
                                                                                        jmp   n801_lit_integer_α
n799_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        je    n799_disjunction_af
                        cmp              eax, 1
                                                                                        je    n799_disjunction_af
                                                                                        jmp   n799_disjunction_af
n799_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 1
                                                                                        je    n804_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n805_lit_real_α
                                                                                        jmp   n802_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n800_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx962_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n806_to_α
.Lx962_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n801_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx963_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n807_lit_integer_α
.Lx963_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n802_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n809_lit_real_α
n802_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx965_0
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n808_lit_integer_α
.Lx965_0:
                        cmp              eax, 1
                                                                                        jne   .Lx965_1
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n808_lit_integer_α
.Lx965_1:
                        cmp              eax, 2
                                                                                        jne   .Lx965_2
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n808_lit_integer_α
.Lx965_2:
                        cmp              eax, 3
                                                                                        jne   .Lx965_3
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n808_lit_integer_α
.Lx965_3:
                                                                                        jmp   n808_lit_integer_α
n802_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n802_disjunction_af
                        cmp              eax, 1
                                                                                        je    n802_disjunction_af
                        cmp              eax, 2
                                                                                        je    n802_disjunction_af
                                                                                        jmp   n802_disjunction_af
n802_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n810_lit_real_α
                        cmp              eax, 2
                                                                                        je    n811_lit_real_α
                        cmp              eax, 3
                                                                                        je    n812_lit_real_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n803_lit_real_α:
                        mov              qword ptr [rbp + 320], 7
                        mov              rax, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n799_disjunction_as
n803_lit_real_β:
                                                                                        jmp   n799_disjunction_af
.Lx966_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n804_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n799_disjunction_as
n804_lit_integer_β:
                                                                                        jmp   n799_disjunction_af
.Lx967_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_real_α:
                        mov              qword ptr [rbp + 352], 7
                        mov              rax, qword ptr [rip + .Lx968_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n799_disjunction_as
n805_lit_real_β:
                                                                                        jmp   n799_disjunction_af
.Lx968_0:
                        .quad            4609434218613702656
#-----------------------------------------------------------------------------------------------------------------------
n806_to_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 640], 6
                        mov              qword ptr [rbp + 648], rax
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 656], 6
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 624], rax
.Lx970_0:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 664]
                        cmp              rax, rcx
                                                                                        jg    n797_to_β
                        mov              qword ptr [rbp + 608], 6
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n813_call_proc_staged_α
n806_to_β:
                        inc              qword ptr [rbp + 624]
                                                                                        jmp   .Lx970_0
#-----------------------------------------------------------------------------------------------------------------------
n807_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx971_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n814_to_α
.Lx971_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n808_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx972_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n815_lit_integer_α
.Lx972_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_real_α:
                        mov              qword ptr [rbp + 96], 7
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n802_disjunction_as
n809_lit_real_β:
                                                                                        jmp   n802_disjunction_af
.Lx973_0:
                        .quad            13832806255468478464
#-----------------------------------------------------------------------------------------------------------------------
n810_lit_real_α:
                        mov              qword ptr [rbp + 112], 7
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n802_disjunction_as
n810_lit_real_β:
                                                                                        jmp   n802_disjunction_af
.Lx974_0:
                        .quad            13830554455654793216
#-----------------------------------------------------------------------------------------------------------------------
n811_lit_real_α:
                        mov              qword ptr [rbp + 128], 7
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n802_disjunction_as
n811_lit_real_β:
                                                                                        jmp   n802_disjunction_af
.Lx975_0:
                        .quad            13826050856027422720
#-----------------------------------------------------------------------------------------------------------------------
n812_lit_real_α:
                        mov              qword ptr [rbp + 144], 7
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n802_disjunction_as
n812_lit_real_β:
                                                                                        jmp   n802_disjunction_af
.Lx976_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n813_call_proc_staged_α:
                        lea              rsi, [rbp + 544]
                        lea              rdx, [rbp + 608]
                        call             proc_pow_dcα
                                                                                        jmp   .Lx978_2
.Lx978_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n806_to_β
                                                                                        jmp   n806_to_β
n813_call_proc_staged_β:
                                                                                        jmp   n806_to_β
.Lx978_0:
                        .quad            .Lx978_0_s
.Lx978_0_s:
                        .string          "pow"
#-----------------------------------------------------------------------------------------------------------------------
n814_to_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 448], 6
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 416], rax
.Lx980_0:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 456]
                        cmp              rax, rcx
                                                                                        jg    n799_disjunction_β
                        mov              qword ptr [rbp + 400], 6
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n816_lit_real_α
n814_to_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx980_0
#-----------------------------------------------------------------------------------------------------------------------
n815_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx981_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n817_to_α
.Lx981_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n816_lit_real_α:
                        mov              qword ptr [rbp + 464], 7
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n818_op75_α
.Lx982_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n817_to_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 176], rax
.Lx984_0:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx
                                                                                        jg    n802_disjunction_β
                        mov              qword ptr [rbp + 160], 6
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n819_call_proc_staged_α
n817_to_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx984_0
#-----------------------------------------------------------------------------------------------------------------------
n818_op75_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 7
                                                                                        je    .Lx986_1
                        cmp              eax, 6
                                                                                        jne   .Lx986_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 6
                                                                                        jne   .Lx986_0
.Lx986_1:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n820_binop_α
.Lx986_0:
                        lea              rdi, [rbp + 400]
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 384]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n820_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n819_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 160]
                        call             proc_pow_dcα
                                                                                        jmp   .Lx988_2
.Lx988_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n817_to_β
                                                                                        jmp   n817_to_β
n819_call_proc_staged_β:
                                                                                        jmp   n817_to_β
.Lx988_0:
                        .quad            .Lx988_0_s
.Lx988_0_s:
                        .string          "pow"
#-----------------------------------------------------------------------------------------------------------------------
n820_binop_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n799_disjunction_β
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n821_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n821_call_proc_staged_α:
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 368]
                        call             proc_pow_dcα
                                                                                        jmp   .Lx991_2
.Lx991_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n814_to_β
                                                                                        jmp   n814_to_β
n821_call_proc_staged_β:
                                                                                        jmp   n814_to_β
.Lx991_0:
                        .quad            .Lx991_0_s
.Lx991_0_s:
                        .string          "pow"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3616]
                        add              rsp, 3624
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3616]
                        add              rsp, 3624
                        ret
                        .section         .note.GNU-stack,"",@progbits
