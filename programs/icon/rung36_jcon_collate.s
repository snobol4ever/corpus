                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_collate_α
proc_collate_α:
                        .global          proc_collate_α
                        .global          proc_collate_β
                        .global          proc_collate_γ
                        .global          proc_collate_ω
                        sub              rsp, 3232
                        mov              [rsp + 3208], rcx
                        mov              [rsp + 3216], rdx
                        mov              [rsp + 3224], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3136
                        mov              edx, 3200
                        call             rt_jmp_frame_lexprep2@PLT
proc_collate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 2272], 0
                        mov              qword ptr [rbp + 2280], 0
                        mov              dword ptr [rbp + 2288], 0
                                                                                        jmp   n2_var_ref_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 0
                                                                                        jne   .Lx157_0
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n1_disjunction_α
.Lx157_0:
                                                                                        jmp   n1_disjunction_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 2288]
                                                                                        jmp   n1_disjunction_α
n0_disjunction_af:
                        add              dword ptr [rbp + 2288], 1
                        mov              eax, dword ptr [rbp + 2288]
                                                                                        jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 1440], 0
                        mov              qword ptr [rbp + 1448], 0
                        mov              dword ptr [rbp + 1456], 0
                                                                                        jmp   n5_var_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        jne   .Lx159_0
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n4_var_α
.Lx159_0:
                        cmp              eax, 1
                                                                                        jne   .Lx159_1
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n4_var_α
.Lx159_1:
                                                                                        jmp   n4_var_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 0
                                                                                        je    n4_var_α
                                                                                        jmp   n6_disjunction_β
n1_disjunction_af:
                        add              dword ptr [rbp + 1456], 1
                        mov              eax, dword ptr [rbp + 1456]
                        cmp              eax, 1
                                                                                        je    n6_disjunction_α
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052368
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n8_nulltest_var_α
n2_var_ref_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_conjunction_α:
                                                                                        jmp   n0_disjunction_as
n3_conjunction_β:
                                                                                        jmp   n1_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n9_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n11_unop_α
n5_var_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              dword ptr [rbp + 1856], 0
                                                                                        jmp   n12_var_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0
                                                                                        jne   .Lx168_0
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n1_disjunction_as
.Lx168_0:
                        cmp              eax, 1
                                                                                        jne   .Lx168_1
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n1_disjunction_as
.Lx168_1:
                                                                                        jmp   n1_disjunction_as
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0
                                                                                        je    n4_var_α
                                                                                        jmp   n4_var_α
n6_disjunction_af:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 1
                                                                                        je    n13_lit_string_α
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_conjunction_α:
                                                                                        jmp   n1_disjunction_as
n7_conjunction_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 3072]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n0_disjunction_af
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n17_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n18_var_α
n10_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx173_0
                                                                                        jmp   proc_collate_ω
.Lx173_0:
                        cmp              eax, 1
                                                                                        jne   .Lx173_1
                                                                                        jmp   proc_collate_ω
.Lx173_1:
                                                                                        jmp   proc_collate_ω
n10_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_collate_ω
                                                                                        jmp   proc_collate_ω
n10_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n19_var_α
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n21_unop_α
n12_var_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n15_assign_α
n13_lit_string_β:
                                                                                        jmp   n4_var_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n14_conjunction_α:
                                                                                        jmp   n6_disjunction_as
n14_conjunction_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n6_disjunction_as
n15_assign_β:
                                                                                        jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 3120], 6
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n22_assign_var_α
.Lx180_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                                                                                        jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n23_var_α
n18_var_β:
                                                                                        jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n24_var_α
n19_var_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n25_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n21_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              rsi, qword ptr [rbp + 3096]
                        mov              rdx, qword ptr [rbp + 3120]
                        mov              rcx, qword ptr [rbp + 3128]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                                                                                        jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n28_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n30_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n31_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_assign_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "abxy"
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_test_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 100
                                                                                        je    .Lx195_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 100
                                                                                        je    .Lx195_0
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 6
                                                                                        jne   .Lx195_2
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 6
                                                                                        jne   .Lx195_2
.Lx195_1:
                        mov              rax, qword ptr [rbp + 3144]
                        mov              rcx, qword ptr [rbp + 632]
                        cmp              rax, rcx
                                                                                        jg    n10_disjunction_af
                        mov              rcx, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rcx
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rcx
                                                                                        jmp   n33_var_α
.Lx195_0:
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              r8d, 6
                        lea              r9, [rbp + 592]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx195_1
                        cmp              eax, 1
                                                                                        je    n10_disjunction_af
                                                                                        jmp   n33_var_α
.Lx195_2:
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n10_disjunction_af
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_test_α:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 100
                                                                                        je    .Lx198_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 100
                                                                                        je    .Lx198_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 6
                                                                                        jne   .Lx198_2
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx198_2
.Lx198_1:
                        mov              rax, qword ptr [rbp + 1784]
                        mov              rcx, qword ptr [rbp + 1816]
                        cmp              rax, rcx
                                                                                        jle   n1_disjunction_af
                        mov              rcx, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rcx
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rcx
                                                                                        jmp   n35_var_α
.Lx198_0:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 7
                        lea              r9, [rbp + 1760]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx198_1
                        cmp              eax, 1
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n35_var_α
.Lx198_2:
                        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1_disjunction_af
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n36_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_test_α:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 100
                                                                                        je    .Lx205_0
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 100
                                                                                        je    .Lx205_0
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 6
                                                                                        jne   .Lx205_2
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 6
                                                                                        jne   .Lx205_2
.Lx205_1:
                        mov              rax, qword ptr [rbp + 2184]
                        mov              rcx, qword ptr [rbp + 2216]
                        cmp              rax, rcx
                                                                                        jle   n6_disjunction_af
                        mov              rcx, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rcx
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rcx
                                                                                        jmp   n42_var_α
.Lx205_0:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              r8d, 7
                        lea              r9, [rbp + 2160]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx205_1
                        cmp              eax, 1
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n42_var_α
.Lx205_2:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n6_disjunction_af
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n43_assign_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "cduv"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n44_var_α
.Lx207_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn209:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n45_var_α
n39_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n46_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n51_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n53_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n54_var_α
.Lx222_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n55_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op75_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 7
                                                                                        je    .Lx229_1
                        cmp              eax, 6
                                                                                        jne   .Lx229_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx229_0
.Lx229_1:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n59_binop_α
.Lx229_0:
                        lea              rdi, [rbp + 3136]
                        lea              rsi, [rbp + 288]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n59_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n60_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n61_op75_α
.Lx231_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n62_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n55_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n63_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 6
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n64_var_α
.Lx235_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_assign_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "acbdxuyv"
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx238_0
                        mov              rax, 2
                        mov              rcx, qword ptr [rbp + 280]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 256], 6
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n67_call_builtin_icon_α
.Lx238_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_mul@PLT
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn240:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n68_binop_α
n60_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_op75_α:
                        mov              eax, dword ptr [rbp + 1696]
                        cmp              eax, 7
                                                                                        je    .Lx242_1
                        cmp              eax, 6
                                                                                        jne   .Lx242_0
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx242_0
.Lx242_1:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n69_binop_α
.Lx242_0:
                        lea              rdi, [rbp + 1696]
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1680]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n69_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_unop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n71_op75_α
.Lx244_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n72_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n73_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn250:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n75_var_α
n67_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n76_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 6
                                                                                        jne   .Lx252_0
                        mov              rax, qword ptr [rbp + 1688]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1664], 6
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n77_lit_integer_α
.Lx252_0:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n41_var_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n77_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n78_op75_α
.Lx253_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_op75_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 7
                                                                                        je    .Lx255_1
                        cmp              eax, 6
                                                                                        jne   .Lx255_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 6
                                                                                        jne   .Lx255_0
.Lx255_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n79_binop_α
.Lx255_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2080]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n79_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n72_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n80_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n81_assign_α
.Lx258_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
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
.Lrkfn261:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rbp + 688]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n83_var_α
n76_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n84_subscript_α
.Lx262_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n78_op75_α:
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 7
                                                                                        je    .Lx264_1
                        cmp              eax, 6
                                                                                        jne   .Lx264_0
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 6
                                                                                        jne   .Lx264_0
.Lx264_1:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n85_binop_α
.Lx264_0:
                        lea              rdi, [rbp + 1584]
                        lea              rsi, [rbp + 1616]
                        lea              rdx, [rbp + 1568]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n85_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 6
                                                                                        jne   .Lx265_0
                        mov              rax, qword ptr [rbp + 2088]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2064], 6
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n86_lit_integer_α
.Lx265_0:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n49_var_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n86_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n87_op75_α
.Lx266_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n88_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n89_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n90_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8, qword ptr [rbp + 1744]
                        mov              r9, qword ptr [rbp + 1752]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n41_var_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 6
                                                                                        jne   .Lx273_0
                        mov              rax, qword ptr [rbp + 1576]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1552], 6
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n92_subscript_α
.Lx273_0:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n4_var_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n92_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n93_subscript_α
.Lx274_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n87_op75_α:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 7
                                                                                        je    .Lx276_1
                        cmp              eax, 6
                                                                                        jne   .Lx276_0
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 6
                                                                                        jne   .Lx276_0
.Lx276_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n94_binop_α
.Lx276_0:
                        lea              rdi, [rbp + 1984]
                        lea              rsi, [rbp + 2016]
                        lea              rdx, [rbp + 1968]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n94_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n88_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx277_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n106_keyword_icon_α
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n95_keyword_icon_α
n88_keyword_icon_β:
                                                                                        jmp   n106_keyword_icon_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn279:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n96_var_α
n89_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_subscript_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              r8, qword ptr [rbp + 1552]
                        mov              r9, qword ptr [rbp + 1560]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n4_var_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n98_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2064]
                        mov              rcx, qword ptr [rbp + 2072]
                        mov              r8, qword ptr [rbp + 2144]
                        mov              r9, qword ptr [rbp + 2152]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n49_var_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 6
                                                                                        jne   .Lx285_0
                        mov              rax, qword ptr [rbp + 1976]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1952], 6
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n100_subscript_α
.Lx285_0:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2016]
                        mov              rcx, qword ptr [rbp + 2024]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n4_var_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n100_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n95_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx286_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n106_keyword_icon_α
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n101_unop_α
n95_keyword_icon_β:
                                                                                        jmp   n106_keyword_icon_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n103_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n7_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              rdx, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              r8, qword ptr [rbp + 1952]
                        mov              r9, qword ptr [rbp + 1960]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n4_var_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n104_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n101_unop_α:
                        mov              rdi, qword ptr [rbp + 2912]
                        mov              rsi, qword ptr [rbp + 2920]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n105_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n107_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n103_op75_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 7
                                                                                        je    .Lx296_1
                        cmp              eax, 6
                                                                                        jne   .Lx296_0
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 6
                                                                                        jne   .Lx296_0
.Lx296_1:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n108_op75_α
.Lx296_0:
                        lea              rdi, [rbp + 3136]
                        lea              rsi, [rbp + 1200]
                        lea              rdx, [rbp + 1168]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n108_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n14_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n109_op75_α
.Lx298_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n106_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx299_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n119_var_α
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n110_keyword_icon_α
n106_keyword_icon_β:
                                                                                        jmp   n119_var_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn301:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rbp + 448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n111_binop_α
n107_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_op75_α:
                        mov              eax, dword ptr [rbp + 1200]
                        cmp              eax, 7
                                                                                        je    .Lx303_1
                        cmp              eax, 6
                                                                                        jne   .Lx303_0
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 6
                                                                                        jne   .Lx303_0
.Lx303_1:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n112_binop_α
.Lx303_0:
                        lea              rdi, [rbp + 1200]
                        lea              rsi, [rbp + 3136]
                        lea              rdx, [rbp + 1152]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n112_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n109_op75_α:
                        mov              eax, dword ptr [rbp + 2896]
                        cmp              eax, 7
                                                                                        je    .Lx305_1
                        cmp              eax, 6
                                                                                        jne   .Lx305_0
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 6
                                                                                        jne   .Lx305_0
.Lx305_1:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n113_binop_α
.Lx305_0:
                        lea              rdi, [rbp + 2896]
                        lea              rsi, [rbp + 2944]
                        lea              rdx, [rbp + 2880]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n113_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n110_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx306_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n119_var_α
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n114_unop_α
n110_keyword_icon_β:
                                                                                        jmp   n119_var_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 6
                                                                                        jne   .Lx308_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx308_0
                        mov              rax, qword ptr [rbp + 1176]
                        mov              rcx, qword ptr [rbp + 1160]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1136], 6
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n116_call_builtin_icon_α
.Lx308_0:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n113_binop_α:
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
                        mov              rdx, qword ptr [rbp + 2944]
                        mov              rcx, qword ptr [rbp + 2952]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n106_keyword_icon_α
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n117_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n114_unop_α:
                        mov              rdi, qword ptr [rbp + 2720]
                        mov              rsi, qword ptr [rbp + 2728]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n120_var_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn314:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n121_var_α
n116_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn316:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n106_keyword_icon_α
                                                                                        jmp   n122_assign_α
n117_call_builtin_icon_β:
                                                                                        jmp   n106_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n123_op75_α
.Lx317_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n124_var_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n126_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n127_var_α
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                                                                                        jmp   n106_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op75_α:
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 7
                                                                                        je    .Lx326_1
                        cmp              eax, 6
                                                                                        jne   .Lx326_0
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 6
                                                                                        jne   .Lx326_0
.Lx326_1:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n128_binop_α
.Lx326_0:
                        lea              rdi, [rbp + 2704]
                        lea              rsi, [rbp + 2752]
                        lea              rdx, [rbp + 2688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n128_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n129_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n126_binop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n132_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n128_binop_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, qword ptr [rbp + 2752]
                        mov              rcx, qword ptr [rbp + 2760]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    n119_var_α
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n134_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_proc_staged_α:
                        lea              rsi, [rbp + 2544]
                        lea              rdx, [rbp + 2560]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx336_2
.Lx336_2:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n125_var_α
                                                                                        jmp   n135_assign_α
n129_call_proc_staged_β:
                                                                                        jmp   n125_var_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n131_var_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
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
.Lrkfn341:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn341]
                        lea              rsi, [rbp + 112]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n138_var_α
n132_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n139_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn344:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn344]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n119_var_α
                                                                                        jmp   n140_assign_α
n134_call_builtin_icon_β:
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n125_var_α
#-----------------------------------------------------------------------------------------------------------------------
n136_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n137_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n137_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx347_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n145_var_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n141_call_builtin_icon_α
n137_keyword_icon_β:
                                                                                        jmp   n145_var_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n142_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op75_α:
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 7
                                                                                        je    .Lx351_1
                        cmp              eax, 6
                                                                                        jne   .Lx351_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx351_0
.Lx351_1:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n143_op75_α
.Lx351_0:
                        lea              rdi, [rbp + 3136]
                        lea              rsi, [rbp + 1360]
                        lea              rdx, [rbp + 1328]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n143_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn354:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n145_var_α
                                                                                        jmp   n144_assign_α
n141_call_builtin_icon_β:
                                                                                        jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 3152]
                        mov              rcx, qword ptr [rbp + 3160]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n146_return_α
#-----------------------------------------------------------------------------------------------------------------------
n143_op75_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 7
                                                                                        je    .Lx357_1
                        cmp              eax, 6
                                                                                        jne   .Lx357_0
                        mov              eax, dword ptr [rbp + 3136]
                        cmp              eax, 6
                                                                                        jne   .Lx357_0
.Lx357_1:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n147_binop_α
.Lx357_0:
                        lea              rdi, [rbp + 1360]
                        lea              rsi, [rbp + 3136]
                        lea              rdx, [rbp + 1312]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n147_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n148_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n146_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_collate_γ
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 6
                                                                                        jne   .Lx361_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 6
                                                                                        jne   .Lx361_0
                        mov              rax, qword ptr [rbp + 1336]
                        mov              rcx, qword ptr [rbp + 1320]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1296], 6
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n149_call_builtin_icon_α
.Lx361_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n149_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n148_unop_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn364:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn364]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n151_call_proc_staged_α
n149_call_builtin_icon_β:
                                                                                        jmp   proc_collate_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n3_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 1216]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx367_2
.Lx367_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    proc_collate_ω
                                                                                        jmp   n152_binop_α
n151_call_proc_staged_β:
                                                                                        jmp   proc_collate_ω
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n152_binop_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n154_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n154_binop_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 3152]
                        mov              rcx, qword ptr [rbp + 3160]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n155_return_α
#-----------------------------------------------------------------------------------------------------------------------
n155_return_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3208]
                        lea              rsp, [rbp + 3232]
                        mov              rbp, [rbp + 3224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_collate_ω:
                        mov              rax, [rbp + 3216]
                        lea              rsp, [rbp + 3232]
                        mov              rbp, [rbp + 3224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_collate_dcα:
                        pop              r11
                        sub              rsp, 3248
                        mov              qword ptr [rsp + 3224], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3200], r11
                        lea              rax, [rip + .Lx373_2]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rax, [rip + .Lx373_3]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 3136
                        mov              edx, 3200
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_collate_α_body
.Lx373_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3232
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx373_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3232
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_decollate_α
proc_decollate_α:
                        .global          proc_decollate_α
                        .global          proc_decollate_β
                        .global          proc_decollate_γ
                        .global          proc_decollate_ω
                        sub              rsp, 2160
                        mov              [rsp + 2136], rcx
                        mov              [rsp + 2144], rdx
                        mov              [rsp + 2152], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2112
                        mov              edx, 2128
                        call             rt_jmp_frame_lexprep2@PLT
proc_decollate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n374_disjunction_α:
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              dword ptr [rbp + 1504], 0
                                                                                        jmp   n376_var_ref_α
n374_disjunction_as:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0
                                                                                        jne   .Lx484_0
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n375_var_α
.Lx484_0:
                                                                                        jmp   n375_var_α
n374_disjunction_β:
                        mov              eax, dword ptr [rbp + 1504]
                                                                                        jmp   n375_var_α
n374_disjunction_af:
                        add              dword ptr [rbp + 1504], 1
                        mov              eax, dword ptr [rbp + 1504]
                                                                                        jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n378_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052432
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n380_nulltest_var_α
n376_var_ref_β:
                                                                                        jmp   n374_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n377_conjunction_α:
                                                                                        jmp   n374_disjunction_as
n377_conjunction_β:
                                                                                        jmp   n375_var_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n381_op75_α
.Lx490_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n379_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n382_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n380_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 99
                                                                                        je    n374_disjunction_af
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n374_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n374_disjunction_af
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n384_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n381_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx495_1
                        cmp              eax, 6
                                                                                        jne   .Lx495_0
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 6
                                                                                        jne   .Lx495_0
.Lx495_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n385_binop_α
.Lx495_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 1472]
                        lea              rdx, [rbp + 1440]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n385_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n382_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n386_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n383_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n387_var_α
n383_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx498_0
                                                                                        jmp   proc_decollate_ω
.Lx498_0:
                        cmp              eax, 1
                                                                                        jne   .Lx498_1
                                                                                        jmp   proc_decollate_ω
.Lx498_1:
                                                                                        jmp   proc_decollate_ω
n383_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_decollate_ω
                                                                                        jmp   proc_decollate_ω
n383_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n388_var_α
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n389_assign_var_α
.Lx499_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n385_binop_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1480]
                        call             rt_mod@PLT
                        cmp              eax, 99
                                                                                        je    n379_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n390_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n386_assign_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n383_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n387_var_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n391_var_α
n387_var_β:
                                                                                        jmp   n383_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n392_lit_integer_α
n388_var_β:
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n389_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        mov              rdx, qword ptr [rbp + 2096]
                        mov              rcx, qword ptr [rbp + 2104]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n374_disjunction_af
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n393_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n390_assign_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n379_var_α
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n394_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n395_var_α
.Lx509_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n393_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx510_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n396_lit_integer_α
n393_keyword_icon_β:
                                                                                        jmp   n406_keyword_icon_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n394_op75_α:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 7
                                                                                        je    .Lx512_1
                        cmp              eax, 6
                                                                                        jne   .Lx512_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx512_0
.Lx512_1:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n397_op75_α
.Lx512_0:
                        lea              rdi, [rbp + 2112]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 544]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n397_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n395_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n398_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n399_lit_integer_α
.Lx514_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n397_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx516_1
                        cmp              eax, 6
                                                                                        jne   .Lx516_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 6
                                                                                        jne   .Lx516_0
.Lx516_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n400_binop_α
.Lx516_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 2112]
                        lea              rdx, [rbp + 528]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n400_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n401_op75_α
.Lx517_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n402_subscript_α
.Lx518_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n400_binop_α:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 6
                                                                                        jne   .Lx519_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 6
                                                                                        jne   .Lx519_0
                        mov              rax, qword ptr [rbp + 552]
                        mov              rcx, qword ptr [rbp + 536]
                        add              rax, rcx
                        mov              qword ptr [rbp + 512], 6
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n403_var_α
.Lx519_0:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n383_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n403_var_α
#-----------------------------------------------------------------------------------------------------------------------
n401_op75_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 7
                                                                                        je    .Lx521_1
                        cmp              eax, 6
                                                                                        jne   .Lx521_0
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 6
                                                                                        jne   .Lx521_0
.Lx521_1:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n404_binop_α
.Lx521_0:
                        lea              rdi, [rbp + 816]
                        lea              rsi, [rbp + 832]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n404_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n402_subscript_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              r8, qword ptr [rbp + 1792]
                        mov              r9, qword ptr [rbp + 1800]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n405_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n403_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n407_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n404_binop_α:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 6
                                                                                        jne   .Lx524_0
                        mov              rax, qword ptr [rbp + 808]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 784], 6
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n408_lit_integer_α
.Lx524_0:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n408_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n405_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx525_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n409_lit_integer_α
n405_keyword_icon_β:
                                                                                        jmp   n406_keyword_icon_α
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n406_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx526_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n415_var_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n410_call_builtin_icon_α
n406_keyword_icon_β:
                                                                                        jmp   n415_var_α
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n407_binop_test_α:
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 100
                                                                                        je    .Lx527_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 100
                                                                                        je    .Lx527_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 6
                                                                                        jne   .Lx527_2
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 6
                                                                                        jne   .Lx527_2
.Lx527_1:
                        mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 600]
                        cmp              rax, rcx
                                                                                        jg    n383_disjunction_af
                        mov              rcx, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 496], rcx
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 504], rcx
                                                                                        jmp   n411_var_α
.Lx527_0:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              r8d, 6
                        lea              r9, [rbp + 496]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx527_1
                        cmp              eax, 1
                                                                                        je    n383_disjunction_af
                                                                                        jmp   n411_var_α
.Lx527_2:
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              r8d, 6
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n383_disjunction_af
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n411_var_α
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n412_op75_α
.Lx528_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:
                        mov              qword ptr [rbp + 1904], 6
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n413_subscript_α
.Lx529_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn531:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn531]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n415_var_α
                                                                                        jmp   n414_assign_α
n410_call_builtin_icon_β:
                                                                                        jmp   n415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n416_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n412_op75_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 7
                                                                                        je    .Lx534_1
                        cmp              eax, 6
                                                                                        jne   .Lx534_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx534_0
.Lx534_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n417_binop_α
.Lx534_0:
                        lea              rdi, [rbp + 784]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n417_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n413_subscript_α:
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1904]
                        mov              rcx, qword ptr [rbp + 1912]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n418_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n414_assign_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n415_var_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n419_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n420_var_α
.Lx538_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n417_binop_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n421_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n418_deref_α:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n422_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n419_unop_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n423_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n424_var_α
#-----------------------------------------------------------------------------------------------------------------------
n421_binop_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx544_0
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 760]
                        add              rax, rcx
                        mov              qword ptr [rbp + 864], 6
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n425_subscript_α
.Lx544_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n425_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n422_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx545_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n426_unop_α
n422_keyword_icon_β:
                                                                                        jmp   n406_keyword_icon_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n423_assign_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n377_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n427_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n425_subscript_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              r8, qword ptr [rbp + 864]
                        mov              r9, qword ptr [rbp + 872]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n428_var_α
#-----------------------------------------------------------------------------------------------------------------------
n426_unop_α:
                        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n429_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n427_op75_α:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 7
                                                                                        je    .Lx552_1
                        cmp              eax, 6
                                                                                        jne   .Lx552_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx552_0
.Lx552_1:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n430_op75_α
.Lx552_0:
                        lea              rdi, [rbp + 2112]
                        lea              rsi, [rbp + 32]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n430_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n431_var_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:
                        mov              qword ptr [rbp + 2032], 6
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n432_op75_α
.Lx554_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n430_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx556_1
                        cmp              eax, 6
                                                                                        jne   .Lx556_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 6
                                                                                        jne   .Lx556_0
.Lx556_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n433_binop_α
.Lx556_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 2112]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n433_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n434_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n432_op75_α:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 7
                                                                                        je    .Lx560_1
                        cmp              eax, 6
                                                                                        jne   .Lx560_0
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 6
                                                                                        jne   .Lx560_0
.Lx560_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n435_binop_α
.Lx560_0:
                        lea              rdi, [rbp + 1984]
                        lea              rsi, [rbp + 2032]
                        lea              rdx, [rbp + 1968]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n435_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n433_binop_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx561_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 6
                                                                                        jne   .Lx561_0
                        mov              rax, qword ptr [rbp + 280]
                        mov              rcx, qword ptr [rbp + 264]
                        add              rax, rcx
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n436_lit_integer_α
.Lx561_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n436_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n437_op75_α
.Lx562_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n435_binop_α:
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              eax, 6
                                                                                        jne   .Lx563_0
                        mov              rax, qword ptr [rbp + 1976]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1952], 6
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n438_call_builtin_icon_α
.Lx563_0:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n438_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n439_op75_α
.Lx564_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n437_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx566_1
                        cmp              eax, 6
                                                                                        jne   .Lx566_0
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 6
                                                                                        jne   .Lx566_0
.Lx566_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n440_binop_α
.Lx566_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 960]
                        lea              rdx, [rbp + 928]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n440_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn568:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                                                                                        jmp   n441_call_proc_staged_α
n438_call_builtin_icon_β:
                                                                                        jmp   n406_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n439_op75_α:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 7
                                                                                        je    .Lx570_1
                        cmp              eax, 6
                                                                                        jne   .Lx570_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx570_0
.Lx570_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n442_binop_α
.Lx570_0:
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n442_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n440_binop_α:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 6
                                                                                        jne   .Lx571_0
                        mov              rax, qword ptr [rbp + 936]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 912], 6
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n443_var_α
.Lx571_0:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_proc_staged_α:
                        lea              rsi, [rbp + 1728]
                        lea              rdx, [rbp + 1808]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx573_2
.Lx573_2:
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n406_keyword_icon_α
                                                                                        jmp   n444_assign_α
n441_call_proc_staged_β:
                                                                                        jmp   n406_keyword_icon_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n442_binop_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        call             rt_div@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n445_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n446_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n444_assign_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n406_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n445_binop_α:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx577_0
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 216]
                        add              rax, rcx
                        mov              qword ptr [rbp + 336], 6
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n447_subscript_α
.Lx577_0:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n447_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_integer_α:
                        mov              qword ptr [rbp + 1024], 6
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n448_op75_α
.Lx578_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n447_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              r8, qword ptr [rbp + 336]
                        mov              r9, qword ptr [rbp + 344]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n449_var_α
#-----------------------------------------------------------------------------------------------------------------------
n448_op75_α:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 7
                                                                                        je    .Lx581_1
                        cmp              eax, 6
                                                                                        jne   .Lx581_0
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 6
                                                                                        jne   .Lx581_0
.Lx581_1:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n450_binop_α
.Lx581_0:
                        lea              rdi, [rbp + 1008]
                        lea              rsi, [rbp + 1024]
                        lea              rdx, [rbp + 992]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n450_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n451_var_α
#-----------------------------------------------------------------------------------------------------------------------
n450_binop_α:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 6
                                                                                        jne   .Lx583_0
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 976], 6
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n452_binop_α
.Lx583_0:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n452_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n453_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n452_binop_α:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 6
                                                                                        jne   .Lx586_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 6
                                                                                        jne   .Lx586_0
                        mov              rax, qword ptr [rbp + 920]
                        mov              rcx, qword ptr [rbp + 984]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n454_subscript_α
.Lx586_0:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n454_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n455_op75_α
.Lx587_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n454_subscript_α:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              r8, qword ptr [rbp + 1040]
                        mov              r9, qword ptr [rbp + 1048]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n456_var_α
#-----------------------------------------------------------------------------------------------------------------------
n455_op75_α:
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 7
                                                                                        je    .Lx590_1
                        cmp              eax, 6
                                                                                        jne   .Lx590_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx590_0
.Lx590_1:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n457_binop_α
.Lx590_0:
                        lea              rdi, [rbp + 32]
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n457_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n458_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n457_binop_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx593_0
                        mov              rax, qword ptr [rbp + 408]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 6
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n459_var_α
.Lx593_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n459_var_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n460_var_α
.Lx594_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n459_var_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n461_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n462_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n461_binop_α:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 6
                                                                                        jne   .Lx598_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 6
                                                                                        jne   .Lx598_0
                        mov              rax, qword ptr [rbp + 392]
                        mov              rcx, qword ptr [rbp + 2120]
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n463_subscript_α
.Lx598_0:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n463_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n462_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 6
                        mov              rax, qword ptr [rip + .Lx599_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n464_op75_α
.Lx599_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n463_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              r8, qword ptr [rbp + 464]
                        mov              r9, qword ptr [rbp + 472]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n465_var_α
#-----------------------------------------------------------------------------------------------------------------------
n464_op75_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 7
                                                                                        je    .Lx602_1
                        cmp              eax, 6
                                                                                        jne   .Lx602_0
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 6
                                                                                        jne   .Lx602_0
.Lx602_1:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n466_binop_α
.Lx602_0:
                        lea              rdi, [rbp + 1136]
                        lea              rsi, [rbp + 1152]
                        lea              rdx, [rbp + 1120]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n466_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n465_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n467_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n466_binop_α:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 6
                                                                                        jne   .Lx605_0
                        mov              rax, qword ptr [rbp + 1128]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1104], 6
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n468_binop_α
.Lx605_0:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n468_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_icon_α:
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
.Lrkfn607:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rbp + 96]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                                                                                        jmp   n469_return_α
n467_call_builtin_icon_β:
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n468_binop_α:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                                                                                        jne   .Lx608_0
                        mov              rax, 1
                        mov              rcx, qword ptr [rbp + 1112]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1168], 6
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n470_subscript_α
.Lx608_0:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n470_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n469_return_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_decollate_γ
#-----------------------------------------------------------------------------------------------------------------------
n470_subscript_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8, qword ptr [rbp + 1168]
                        mov              r9, qword ptr [rbp + 1176]
                        call             subscript_get2_ext@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n471_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n471_call_builtin_icon_α:
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
.Lrkfn612:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn612]
                        lea              rsi, [rbp + 640]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                                                                                        jmp   n472_var_α
n471_call_builtin_icon_β:
                                                                                        jmp   proc_decollate_ω
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n473_var_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n474_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n475_op75_α
.Lx616_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n475_op75_α:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 7
                                                                                        je    .Lx618_1
                        cmp              eax, 6
                                                                                        jne   .Lx618_0
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 6
                                                                                        jne   .Lx618_0
.Lx618_1:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n476_binop_α
.Lx618_0:
                        lea              rdi, [rbp + 1312]
                        lea              rsi, [rbp + 1328]
                        lea              rdx, [rbp + 1296]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n476_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n476_binop_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 6
                                                                                        jne   .Lx619_0
                        mov              rax, qword ptr [rbp + 1304]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1280], 6
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n477_lit_integer_α
.Lx619_0:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n477_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n478_subscript_α
.Lx620_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n478_subscript_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8, qword ptr [rbp + 1344]
                        mov              r9, qword ptr [rbp + 1352]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n479_var_α
#-----------------------------------------------------------------------------------------------------------------------
n479_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n480_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n480_call_proc_staged_α:
                        lea              rsi, [rbp + 1248]
                        lea              rdx, [rbp + 1360]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx625_2
.Lx625_2:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    proc_decollate_ω
                                                                                        jmp   n481_binop_α
n480_call_proc_staged_β:
                                                                                        jmp   proc_decollate_ω
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n481_binop_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n482_return_α
#-----------------------------------------------------------------------------------------------------------------------
n482_return_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2136]
                        lea              rsp, [rbp + 2160]
                        mov              rbp, [rbp + 2152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_decollate_ω:
                        mov              rax, [rbp + 2144]
                        lea              rsp, [rbp + 2160]
                        mov              rbp, [rbp + 2152]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_decollate_dcα:
                        pop              r11
                        sub              rsp, 2176
                        mov              qword ptr [rsp + 2152], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2128], r11
                        lea              rax, [rip + .Lx628_2]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rax, [rip + .Lx628_3]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2112
                        mov              edx, 2128
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_decollate_α_body
.Lx628_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx628_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2160
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_perm_α
proc_perm_α:
                        .global          proc_perm_α
                        .global          proc_perm_β
                        .global          proc_perm_γ
                        .global          proc_perm_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_perm_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n629_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn645:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn645]
                        lea              rsi, [rbp + 448]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
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
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n632_lit_integer_α
.Lx647_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n633_to_α
.Lx648_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n633_to_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 160], rax
.Lx650_0:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 200]
                        cmp              rax, rcx
                                                                                        jg    n640_var_α
                        mov              qword ptr [rbp + 144], 6
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
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n638_proc_gen_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "ogram"
#-----------------------------------------------------------------------------------------------------------------------
n637_unmark_α:
                        mov              rsp, qword ptr [rbp + 208]
                                                                                        jmp   n633_to_β
#-----------------------------------------------------------------------------------------------------------------------
n638_proc_gen_α:
                        mov              qword ptr [rbp + 368], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx659_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx659_21
.Lx659_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx659_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx659_1
                        lea              rcx, [rip + .Lx659_3]
                        lea              rdx, [rip + .Lx659_4]
                                                                                        jmp   rax
.Lx659_3:
                        mov              qword ptr [rbp + 376], rsp
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx659_5
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx659_2
.Lx659_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx659_2
.Lx659_4:
                        mov              rax, qword ptr [rbp + 368]
                        test             rax, rax
                                                                                        jne   .Lx659_6
                        mov              qword ptr [rbp + 368], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx659_2
.Lx659_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx659_2
.Lx659_1:
                        call             rt_faildescr@PLT
.Lx659_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n637_unmark_α
                                                                                        jmp   n639_call_builtin_icon_α
n638_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 376]
                                                                                        jmp   qword ptr [rsp]
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "permute"
#-----------------------------------------------------------------------------------------------------------------------
n639_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn661:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn661]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n638_proc_gen_β
                                                                                        jmp   n638_proc_gen_β
n639_call_builtin_icon_β:
                                                                                        jmp   n638_proc_gen_β
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
                        lea              rdi, [rip + .Lrkfn665]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_perm_ω
                                                                                        jmp   n642_iterate_α
n641_call_builtin_icon_β:
                                                                                        jmp   proc_perm_ω
#-----------------------------------------------------------------------------------------------------------------------
n642_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx667_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
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
                        lea              rdi, [rip + .Lrkfn669]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
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
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_perm_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_perm_dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx670_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx670_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, rbp
                        mov              esi, 464
                        mov              edx, 480
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_perm_α_body
.Lx670_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx670_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_permute_α
proc_permute_α:
                        .global          proc_permute_α
                        .global          proc_permute_β
                        .global          proc_permute_γ
                        .global          proc_permute_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_permute_α_body:
                        lea              rax, [rip + n700_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n671_disjunction_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   n673_var_α
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
                        mov              qword ptr [rbp + 80], 6
                        mov              rax, qword ptr [rip + .Lx703_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n674_var_α
.Lx703_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n673_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n675_lit_string_α
n673_var_β:
                                                                                        jmp   n671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n674_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n676_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n675_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n677_binop_test_α
.Lx708_0:
                        .quad            .Lx708_0_s
.Lx708_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n676_unop_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n678_to_α
#-----------------------------------------------------------------------------------------------------------------------
n677_binop_test_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n671_disjunction_af
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n679_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n678_to_α:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 96], 6
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 64], rax
.Lx712_0:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 104]
                        cmp              rax, rcx
                                                                                        jg    proc_permute_ω
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n680_assign_α
n678_to_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx712_0
#-----------------------------------------------------------------------------------------------------------------------
n679_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n681_return_α
.Lx713_0:
                        .quad            .Lx713_0_s
.Lx713_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n680_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n682_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n681_return_α:
                        lea              rax, [rip + proc_permute_ω]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_permute_γ
#-----------------------------------------------------------------------------------------------------------------------
n682_bound_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n683_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n683_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n684_var_α
#-----------------------------------------------------------------------------------------------------------------------
n684_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n685_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n685_subscript_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n686_var_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n687_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n686_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n688_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n687_deref_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n686_var_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n690_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n688_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n689_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n689_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n691_var_α
#-----------------------------------------------------------------------------------------------------------------------
n690_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n686_var_α
#-----------------------------------------------------------------------------------------------------------------------
n691_var_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n692_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n692_subscript_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n693_var_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n694_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n693_var_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n695_var_α
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n697_assign_var_α
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n695_var_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n698_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n696_unmark_α:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n678_to_β
#-----------------------------------------------------------------------------------------------------------------------
n697_assign_var_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n693_var_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n693_var_α
#-----------------------------------------------------------------------------------------------------------------------
n698_proc_gen_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx742_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx742_21
.Lx742_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx742_21:
                        mov              edi, 3
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx742_1
                        lea              rcx, [rip + .Lx742_3]
                        lea              rdx, [rip + .Lx742_4]
                                                                                        jmp   rax
.Lx742_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx742_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx742_2
.Lx742_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx742_2
.Lx742_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx742_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx742_2
.Lx742_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx742_2
.Lx742_1:
                        call             rt_faildescr@PLT
.Lx742_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n696_unmark_α
                                                                                        jmp   n699_binop_α
n698_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "permute"
#-----------------------------------------------------------------------------------------------------------------------
n699_binop_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n700_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n700_suspend_α:
                        lea              rax, [rip + n700_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_permute_γ
n700_suspend_β:
                                                                                        jmp   n698_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_permute_res]
                        push             rax
                        mov              rax, [rbp + 616]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_permute_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
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
                        sub              rsp, 1208
                        mov              rdi, rsp
                        mov              ecx, 1208
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n746_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx777_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n750_keyword_icon_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                                                                                        jmp   n747_keyword_icon_α
n746_keyword_icon_β:
                                                                                        jmp   n750_keyword_icon_α
.Lx777_0:
                        .quad            .Lx777_0_s
.Lx777_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n747_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx778_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n750_keyword_icon_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                                                                                        jmp   n748_call_proc_staged_α
n747_keyword_icon_β:
                                                                                        jmp   n750_keyword_icon_α
.Lx778_0:
                        .quad            .Lx778_0_s
.Lx778_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_proc_staged_α:
                        lea              rsi, [rsp + 1104]
                        lea              rdx, [rsp + 1136]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx780_2
.Lx780_2:
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 99
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
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                                                                                        jmp   n750_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n750_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx782_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n753_var_α
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                                                                                        jmp   n751_call_builtin_icon_α
n750_keyword_icon_β:
                                                                                        jmp   n753_var_α
.Lx782_0:
                        .quad            .Lx782_0_s
.Lx782_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n751_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn784:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn784]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n753_var_α
                                                                                        jmp   n752_keyword_icon_α
n751_call_builtin_icon_β:
                                                                                        jmp   n753_var_α
#-----------------------------------------------------------------------------------------------------------------------
n752_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx785_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n753_var_α
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                                                                                        jmp   n754_call_builtin_icon_α
n752_keyword_icon_β:
                                                                                        jmp   n753_var_α
.Lx785_0:
                        .quad            .Lx785_0_s
.Lx785_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n753_var_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n755_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n754_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn789:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn789]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n753_var_α
                                                                                        jmp   n757_call_proc_staged_α
n754_call_builtin_icon_β:
                                                                                        jmp   n753_var_α
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_integer_α:
                        mov              qword ptr [rsp + 784], 6
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n758_call_proc_staged_α
.Lx790_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n756_var_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n759_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n757_call_proc_staged_α:
                        lea              rsi, [rsp + 880]
                        lea              rdx, [rsp + 960]
                        call             proc_collate_dcα
                                                                                        jmp   .Lx794_2
.Lx794_2:
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n753_var_α
                                                                                        jmp   n761_assign_α
n757_call_proc_staged_β:
                                                                                        jmp   n753_var_α
.Lx794_0:
                        .quad            .Lx794_0_s
.Lx794_0_s:
                        .string          "collate"
#-----------------------------------------------------------------------------------------------------------------------
n758_call_proc_staged_α:
                        lea              rsi, [rsp + 768]
                        lea              rdx, [rsp + 784]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx796_2
.Lx796_2:
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n756_var_α
                                                                                        jmp   n762_call_builtin_icon_α
n758_call_proc_staged_β:
                                                                                        jmp   n756_var_α
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_integer_α:
                        mov              qword ptr [rsp + 592], 6
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n763_call_proc_staged_α
.Lx797_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n760_var_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 392], rax
                                                                                        jmp   n764_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n761_assign_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                                                                                        jmp   n753_var_α
#-----------------------------------------------------------------------------------------------------------------------
n762_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn802:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn802]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n756_var_α
                                                                                        jmp   n766_call_builtin_icon_α
n762_call_builtin_icon_β:
                                                                                        jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 592]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx804_2
.Lx804_2:
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n760_var_α
                                                                                        jmp   n767_call_builtin_icon_α
n763_call_proc_staged_β:
                                                                                        jmp   n760_var_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_integer_α:
                        mov              qword ptr [rsp + 400], 6
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n768_call_proc_staged_α
.Lx805_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n765_var_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n769_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n766_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn809:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n756_var_α
                                                                                        jmp   n756_var_α
n766_call_builtin_icon_β:
                                                                                        jmp   n756_var_α
#-----------------------------------------------------------------------------------------------------------------------
n767_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn811:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn811]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n760_var_α
                                                                                        jmp   n771_call_builtin_icon_α
n767_call_builtin_icon_β:
                                                                                        jmp   n760_var_α
#-----------------------------------------------------------------------------------------------------------------------
n768_call_proc_staged_α:
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 400]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx813_2
.Lx813_2:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n765_var_α
                                                                                        jmp   n772_call_builtin_icon_α
n768_call_proc_staged_β:
                                                                                        jmp   n765_var_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n769_lit_integer_α:
                        mov              qword ptr [rsp + 208], 6
                        mov              rax, qword ptr [rip + .Lx814_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n773_call_proc_staged_α
.Lx814_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n770_call_proc_staged_α:
                        call             proc_perm_dcα
                                                                                        jmp   .Lx816_2
.Lx816_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n770_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx816_0:
                        .quad            .Lx816_0_s
.Lx816_0_s:
                        .string          "perm"
#-----------------------------------------------------------------------------------------------------------------------
n771_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn818:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn818]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n760_var_α
                                                                                        jmp   n760_var_α
n771_call_builtin_icon_β:
                                                                                        jmp   n760_var_α
#-----------------------------------------------------------------------------------------------------------------------
n772_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn820:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn820]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n765_var_α
                                                                                        jmp   n774_call_builtin_icon_α
n772_call_builtin_icon_β:
                                                                                        jmp   n765_var_α
#-----------------------------------------------------------------------------------------------------------------------
n773_call_proc_staged_α:
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 208]
                        call             proc_decollate_dcα
                                                                                        jmp   .Lx822_2
.Lx822_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n770_call_proc_staged_α
                                                                                        jmp   n775_call_builtin_icon_α
n773_call_proc_staged_β:
                                                                                        jmp   n770_call_proc_staged_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "decollate"
#-----------------------------------------------------------------------------------------------------------------------
n774_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn824:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn824]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n765_var_α
                                                                                        jmp   n765_var_α
n774_call_builtin_icon_β:
                                                                                        jmp   n765_var_α
#-----------------------------------------------------------------------------------------------------------------------
n775_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn826:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn826]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n770_call_proc_staged_α
                                                                                        jmp   n776_call_builtin_icon_α
n775_call_builtin_icon_β:
                                                                                        jmp   n770_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n776_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn828:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn828]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n770_call_proc_staged_α
                                                                                        jmp   n770_call_proc_staged_α
n776_call_builtin_icon_β:
                                                                                        jmp   n770_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 1208
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 1208
                        ret
                        .section         .note.GNU-stack,"",@progbits
