                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p1_α
proc_p1_α:
                        .global          proc_p1_α
                        .global          proc_p1_β
                        .global          proc_p1_γ
                        .global          proc_p1_ω
                        sub              rsp, 2320
                        mov              [rsp + 2296], rcx
                        mov              [rsp + 2304], rdx
                        mov              [rsp + 2312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2288
                        mov              edx, 2288
                        call             rt_jmp_frame_lexprep2@PLT
proc_p1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n1_disjunction_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          " ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                        mov              dword ptr [rbp + 2224], 0
                                                                                        jmp   n3_call_builtin_icon_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 0
                                                                                        jne   .Lx80_0
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx80_0:
                        cmp              eax, 1
                                                                                        jne   .Lx80_1
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx80_1:
                                                                                        jmp   n2_call_builtin_icon_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 2224], 1
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 1
                                                                                        je    n4_lit_string_α
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn82:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_β
                                                                                        jmp   n5_lit_string_α
n2_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn84:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_as
n3_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n1_disjunction_as
n4_lit_string_β:
                                                                                        jmp   n1_disjunction_af
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n6_disjunction_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "s := \"abcd\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 2000], 0
                        mov              qword ptr [rbp + 2008], 0
                        mov              dword ptr [rbp + 2016], 0
                                                                                        jmp   n8_lit_string_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        jne   .Lx88_0
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx88_0:
                        cmp              eax, 1
                                                                                        jne   .Lx88_1
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx88_1:
                                                                                        jmp   n7_call_builtin_icon_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 2016], 1
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 1
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn90:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_β
                                                                                        jmp   n11_lit_string_α
n7_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_assign_α
n8_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n6_disjunction_af
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "abcd"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n6_disjunction_as
n9_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn94:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn94]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n13_disjunction_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:
                        mov              qword ptr [rbp + 1792], 0
                        mov              qword ptr [rbp + 1800], 0
                        mov              dword ptr [rbp + 1808], 0
                                                                                        jmp   n15_lit_string_α
n13_disjunction_as:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 0
                                                                                        jne   .Lx98_0
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n14_call_builtin_icon_α
.Lx98_0:
                        cmp              eax, 1
                                                                                        jne   .Lx98_1
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n14_call_builtin_icon_α
.Lx98_1:
                                                                                        jmp   n14_call_builtin_icon_α
n13_disjunction_β:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 0
                                                                                        je    n13_disjunction_af
                                                                                        jmp   n13_disjunction_af
n13_disjunction_af:
                        add              dword ptr [rbp + 1808], 1
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 1
                                                                                        je    n16_lit_string_α
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn100:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n13_disjunction_β
                                                                                        jmp   n18_lit_string_α
n14_call_builtin_icon_β:
                                                                                        jmp   n13_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n19_assign_α
n15_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n13_disjunction_af
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n13_disjunction_as
n16_lit_string_β:
                                                                                        jmp   n13_disjunction_af
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn104:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n13_disjunction_af
                                                                                        jmp   n13_disjunction_as
n17_call_builtin_icon_β:
                                                                                        jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n20_disjunction_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "s ||:= \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n17_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              dword ptr [rbp + 1568], 0
                                                                                        jmp   n22_var_α
n20_disjunction_as:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        jne   .Lx108_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx108_0:
                        cmp              eax, 1
                                                                                        jne   .Lx108_1
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n21_call_builtin_icon_α
.Lx108_1:
                                                                                        jmp   n21_call_builtin_icon_α
n20_disjunction_β:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        je    n20_disjunction_af
                                                                                        jmp   n20_disjunction_af
n20_disjunction_af:
                        add              dword ptr [rbp + 1568], 1
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 1
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn110:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n20_disjunction_β
                                                                                        jmp   n25_lit_string_α
n21_call_builtin_icon_β:
                                                                                        jmp   n20_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_lit_string_α
n22_var_β:
                        add              rsp, 16
                                                                                        jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n20_disjunction_as
n23_lit_string_β:
                                                                                        jmp   n20_disjunction_af
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn114:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n20_disjunction_af
                                                                                        jmp   n20_disjunction_as
n24_call_builtin_icon_β:
                                                                                        jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n27_disjunction_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n28_binop_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n27_disjunction_α:
                        mov              qword ptr [rbp + 1360], 0
                        mov              qword ptr [rbp + 1368], 0
                        mov              dword ptr [rbp + 1376], 0
                                                                                        jmp   n30_var_α
n27_disjunction_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        jne   .Lx118_0
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n29_call_builtin_icon_α
.Lx118_0:
                        cmp              eax, 1
                                                                                        jne   .Lx118_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n29_call_builtin_icon_α
.Lx118_1:
                                                                                        jmp   n29_call_builtin_icon_α
n27_disjunction_β:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        je    n27_disjunction_af
                                                                                        jmp   n27_disjunction_af
n27_disjunction_af:
                        add              dword ptr [rbp + 1376], 1
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 1
                                                                                        je    n31_lit_string_α
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n33_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn121:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n27_disjunction_β
                                                                                        jmp   n34_lit_string_α
n29_call_builtin_icon_β:
                                                                                        jmp   n27_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n32_call_builtin_icon_α
n30_var_β:
                                                                                        jmp   n27_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n27_disjunction_as
n31_lit_string_β:
                                                                                        jmp   n27_disjunction_af
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn125:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n27_disjunction_af
                                                                                        jmp   n27_disjunction_as
n32_call_builtin_icon_β:
                                                                                        jmp   n27_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n24_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n35_disjunction_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:
                        mov              qword ptr [rbp + 1152], 0
                        mov              qword ptr [rbp + 1160], 0
                        mov              dword ptr [rbp + 1168], 0
                                                                                        jmp   n37_lit_string_α
n35_disjunction_as:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        jne   .Lx129_0
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx129_0:
                        cmp              eax, 1
                                                                                        jne   .Lx129_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx129_1:
                                                                                        jmp   n36_call_builtin_icon_α
n35_disjunction_β:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 0
                                                                                        je    n35_disjunction_af
                                                                                        jmp   n35_disjunction_af
n35_disjunction_af:
                        add              dword ptr [rbp + 1168], 1
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 1
                                                                                        je    n38_lit_string_α
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn131:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n35_disjunction_β
                                                                                        jmp   n40_lit_string_α
n36_call_builtin_icon_β:
                                                                                        jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n41_assign_α
n37_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n35_disjunction_af
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n35_disjunction_as
n38_lit_string_β:
                                                                                        jmp   n35_disjunction_af
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn135:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n35_disjunction_af
                                                                                        jmp   n35_disjunction_as
n39_call_builtin_icon_β:
                                                                                        jmp   n35_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n42_disjunction_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "s ||:= \"xx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:
                        mov              qword ptr [rbp + 912], 0
                        mov              qword ptr [rbp + 920], 0
                        mov              dword ptr [rbp + 928], 0
                                                                                        jmp   n44_var_α
n42_disjunction_as:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        jne   .Lx139_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n43_call_builtin_icon_α
.Lx139_0:
                        cmp              eax, 1
                                                                                        jne   .Lx139_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n43_call_builtin_icon_α
.Lx139_1:
                                                                                        jmp   n43_call_builtin_icon_α
n42_disjunction_β:
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 0
                                                                                        je    n42_disjunction_af
                                                                                        jmp   n42_disjunction_af
n42_disjunction_af:
                        add              dword ptr [rbp + 928], 1
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 1
                                                                                        je    n45_lit_string_α
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n42_disjunction_β
                                                                                        jmp   n47_lit_string_α
n43_call_builtin_icon_β:
                                                                                        jmp   n42_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_lit_string_α
n44_var_β:
                        add              rsp, 16
                                                                                        jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n42_disjunction_as
n45_lit_string_β:
                                                                                        jmp   n42_disjunction_af
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn145:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n42_disjunction_af
                                                                                        jmp   n42_disjunction_as
n46_call_builtin_icon_β:
                                                                                        jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n49_disjunction_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n50_binop_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                        mov              dword ptr [rbp + 736], 0
                                                                                        jmp   n52_var_α
n49_disjunction_as:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        jne   .Lx149_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n51_call_builtin_icon_α
.Lx149_0:
                        cmp              eax, 1
                                                                                        jne   .Lx149_1
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n51_call_builtin_icon_α
.Lx149_1:
                                                                                        jmp   n51_call_builtin_icon_α
n49_disjunction_β:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        je    n49_disjunction_af
                                                                                        jmp   n49_disjunction_af
n49_disjunction_af:
                        add              dword ptr [rbp + 736], 1
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 1
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn152:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n49_disjunction_β
                                                                                        jmp   n56_lit_string_α
n51_call_builtin_icon_β:
                                                                                        jmp   n49_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n54_call_builtin_icon_α
n52_var_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n49_disjunction_as
n53_lit_string_β:
                                                                                        jmp   n49_disjunction_af
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn156:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n49_disjunction_af
                                                                                        jmp   n49_disjunction_as
n54_call_builtin_icon_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n46_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n57_disjunction_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n57_disjunction_α:
                        mov              qword ptr [rbp + 512], 0
                        mov              qword ptr [rbp + 520], 0
                        mov              dword ptr [rbp + 528], 0
                                                                                        jmp   n59_lit_string_α
n57_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx160_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n58_call_builtin_icon_α
.Lx160_0:
                        cmp              eax, 1
                                                                                        jne   .Lx160_1
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n58_call_builtin_icon_α
.Lx160_1:
                                                                                        jmp   n58_call_builtin_icon_α
n57_disjunction_β:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        je    n57_disjunction_af
                                                                                        jmp   n57_disjunction_af
n57_disjunction_af:
                        add              dword ptr [rbp + 528], 1
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 1
                                                                                        je    n60_lit_string_α
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn162:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n57_disjunction_β
                                                                                        jmp   n62_lit_string_α
n58_call_builtin_icon_β:
                                                                                        jmp   n57_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n63_assign_α
n59_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n57_disjunction_af
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n57_disjunction_as
n60_lit_string_β:
                                                                                        jmp   n57_disjunction_af
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn166:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n57_disjunction_af
                                                                                        jmp   n57_disjunction_as
n61_call_builtin_icon_β:
                                                                                        jmp   n57_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n64_disjunction_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "s ||:= \"X\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n61_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n64_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n66_var_α
n64_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx170_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n65_call_builtin_icon_α
.Lx170_0:
                        cmp              eax, 1
                                                                                        jne   .Lx170_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n65_call_builtin_icon_α
.Lx170_1:
                                                                                        jmp   n65_call_builtin_icon_α
n64_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        je    n64_disjunction_af
                                                                                        jmp   n64_disjunction_af
n64_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 1
                                                                                        je    n67_lit_string_α
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn172:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n64_disjunction_β
                                                                                        jmp   n69_lit_string_α
n65_call_builtin_icon_β:
                                                                                        jmp   n64_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n70_lit_string_α
n66_var_β:
                        add              rsp, 16
                                                                                        jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n64_disjunction_as
n67_lit_string_β:
                                                                                        jmp   n64_disjunction_af
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn176:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n64_disjunction_af
                                                                                        jmp   n64_disjunction_as
n68_call_builtin_icon_β:
                                                                                        jmp   n64_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n71_disjunction_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n72_binop_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n71_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n74_var_α
n71_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx180_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n73_call_builtin_icon_α
.Lx180_0:
                        cmp              eax, 1
                                                                                        jne   .Lx180_1
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n73_call_builtin_icon_α
.Lx180_1:
                                                                                        jmp   n73_call_builtin_icon_α
n71_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n71_disjunction_af
                                                                                        jmp   n71_disjunction_af
n71_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n75_lit_string_α
                                                                                        jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n77_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn183:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n71_disjunction_β
                                                                                        jmp   proc_p1_ω
n73_call_builtin_icon_β:
                                                                                        jmp   n71_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n76_call_builtin_icon_α
n74_var_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n71_disjunction_as
n75_lit_string_β:
                                                                                        jmp   n71_disjunction_af
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn187:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n71_disjunction_af
                                                                                        jmp   n71_disjunction_as
n76_call_builtin_icon_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n68_call_builtin_icon_α
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
                        mov              rax, [rbp + 2296]
                        lea              rsp, [rbp + 2320]
                        mov              rbp, [rbp + 2312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_ω:
                        mov              rax, [rbp + 2304]
                        lea              rsp, [rbp + 2320]
                        mov              rbp, [rbp + 2312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_dcα:
                        pop              r11
                        sub              rsp, 2336
                        mov              qword ptr [rsp + 2312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2288], r11
                        lea              rax, [rip + .Lx189_2]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rax, [rip + .Lx189_3]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rdi, rbp
                        mov              esi, 2288
                        mov              edx, 2288
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p1_α_body
.Lx189_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx189_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2320
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
                        sub              rsp, 2400
                        mov              [rsp + 2376], rcx
                        mov              [rsp + 2384], rdx
                        mov              [rsp + 2392], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2368
                        mov              edx, 2368
                        call             rt_jmp_frame_lexprep2@PLT
proc_p2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n191_disjunction_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n191_disjunction_α:
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0
                                                                                        jmp   n193_lit_string_α
n191_disjunction_as:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        jne   .Lx274_0
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n192_call_builtin_icon_α
.Lx274_0:
                        cmp              eax, 1
                                                                                        jne   .Lx274_1
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n192_call_builtin_icon_α
.Lx274_1:
                                                                                        jmp   n192_call_builtin_icon_α
n191_disjunction_β:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0
                                                                                        je    n191_disjunction_af
                                                                                        jmp   n191_disjunction_af
n191_disjunction_af:
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 1
                                                                                        je    n194_lit_string_α
                                                                                        jmp   n196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n191_disjunction_β
                                                                                        jmp   n196_lit_string_α
n192_call_builtin_icon_β:
                                                                                        jmp   n191_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n197_assign_α
n193_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n191_disjunction_af
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n191_disjunction_as
n194_lit_string_β:
                                                                                        jmp   n191_disjunction_af
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn280:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n191_disjunction_af
                                                                                        jmp   n191_disjunction_as
n195_call_builtin_icon_β:
                                                                                        jmp   n191_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n198_disjunction_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "s ||:= \"abc\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n195_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n198_disjunction_α:
                        mov              qword ptr [rbp + 2000], 0
                        mov              qword ptr [rbp + 2008], 0
                        mov              dword ptr [rbp + 2016], 0
                                                                                        jmp   n200_var_α
n198_disjunction_as:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        jne   .Lx284_0
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n199_call_builtin_icon_α
.Lx284_0:
                        cmp              eax, 1
                                                                                        jne   .Lx284_1
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n199_call_builtin_icon_α
.Lx284_1:
                                                                                        jmp   n199_call_builtin_icon_α
n198_disjunction_β:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 0
                                                                                        je    n198_disjunction_af
                                                                                        jmp   n198_disjunction_af
n198_disjunction_af:
                        add              dword ptr [rbp + 2016], 1
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 1
                                                                                        je    n201_lit_string_α
                                                                                        jmp   n203_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn286:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n198_disjunction_β
                                                                                        jmp   n203_lit_string_α
n199_call_builtin_icon_β:
                                                                                        jmp   n198_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n204_lit_string_α
n200_var_β:
                        add              rsp, 16
                                                                                        jmp   n198_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n198_disjunction_as
n201_lit_string_β:
                                                                                        jmp   n198_disjunction_af
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn290:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n198_disjunction_af
                                                                                        jmp   n198_disjunction_as
n202_call_builtin_icon_β:
                                                                                        jmp   n198_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n205_disjunction_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n206_binop_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n205_disjunction_α:
                        mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              dword ptr [rbp + 1824], 0
                                                                                        jmp   n208_var_α
n205_disjunction_as:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        jne   .Lx294_0
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n207_call_builtin_icon_α
.Lx294_0:
                        cmp              eax, 1
                                                                                        jne   .Lx294_1
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n207_call_builtin_icon_α
.Lx294_1:
                                                                                        jmp   n207_call_builtin_icon_α
n205_disjunction_β:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        je    n205_disjunction_af
                                                                                        jmp   n205_disjunction_af
n205_disjunction_af:
                        add              dword ptr [rbp + 1824], 1
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 1
                                                                                        je    n209_lit_string_α
                                                                                        jmp   n212_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_binop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             str_concat_d@PLT
                        add              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n211_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn297:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n205_disjunction_β
                                                                                        jmp   n212_lit_string_α
n207_call_builtin_icon_β:
                                                                                        jmp   n205_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n210_call_builtin_icon_α
n208_var_β:
                                                                                        jmp   n205_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n205_disjunction_as
n209_lit_string_β:
                                                                                        jmp   n205_disjunction_af
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn301:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n205_disjunction_af
                                                                                        jmp   n205_disjunction_as
n210_call_builtin_icon_β:
                                                                                        jmp   n205_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n202_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n213_disjunction_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n213_disjunction_α:
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              dword ptr [rbp + 1616], 0
                                                                                        jmp   n215_lit_string_α
n213_disjunction_as:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0
                                                                                        jne   .Lx305_0
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n214_call_builtin_icon_α
.Lx305_0:
                        cmp              eax, 1
                                                                                        jne   .Lx305_1
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n214_call_builtin_icon_α
.Lx305_1:
                                                                                        jmp   n214_call_builtin_icon_α
n213_disjunction_β:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0
                                                                                        je    n213_disjunction_af
                                                                                        jmp   n213_disjunction_af
n213_disjunction_af:
                        add              dword ptr [rbp + 1616], 1
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 1
                                                                                        je    n216_lit_string_α
                                                                                        jmp   n218_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn307:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n213_disjunction_β
                                                                                        jmp   n218_lit_string_α
n214_call_builtin_icon_β:
                                                                                        jmp   n213_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n219_assign_α
n215_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n213_disjunction_af
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n213_disjunction_as
n216_lit_string_β:
                                                                                        jmp   n213_disjunction_af
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn311:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n213_disjunction_af
                                                                                        jmp   n213_disjunction_as
n217_call_builtin_icon_β:
                                                                                        jmp   n213_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n220_disjunction_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "s ==:= \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n217_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n220_disjunction_α:
                        mov              qword ptr [rbp + 1360], 0
                        mov              qword ptr [rbp + 1368], 0
                        mov              dword ptr [rbp + 1376], 0
                                                                                        jmp   n222_var_α
n220_disjunction_as:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        jne   .Lx315_0
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n221_call_builtin_icon_α
.Lx315_0:
                        cmp              eax, 1
                                                                                        jne   .Lx315_1
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n221_call_builtin_icon_α
.Lx315_1:
                                                                                        jmp   n221_call_builtin_icon_α
n220_disjunction_β:
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 0
                                                                                        je    n220_disjunction_af
                                                                                        jmp   n220_disjunction_af
n220_disjunction_af:
                        add              dword ptr [rbp + 1376], 1
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 1
                                                                                        je    n223_lit_string_α
                                                                                        jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn317:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn317]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n220_disjunction_β
                                                                                        jmp   n225_lit_string_α
n221_call_builtin_icon_β:
                                                                                        jmp   n220_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n226_lit_string_α
n222_var_β:
                                                                                        jmp   n220_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n220_disjunction_as
n223_lit_string_β:
                                                                                        jmp   n220_disjunction_af
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn321:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn321]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n220_disjunction_af
                                                                                        jmp   n220_disjunction_as
n224_call_builtin_icon_β:
                                                                                        jmp   n220_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n227_disjunction_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n228_binop_test_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n227_disjunction_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0
                                                                                        jmp   n230_var_α
n227_disjunction_as:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        jne   .Lx325_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n229_call_builtin_icon_α
.Lx325_0:
                        cmp              eax, 1
                                                                                        jne   .Lx325_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n229_call_builtin_icon_α
.Lx325_1:
                                                                                        jmp   n229_call_builtin_icon_α
n227_disjunction_β:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0
                                                                                        je    n227_disjunction_af
                                                                                        jmp   n227_disjunction_af
n227_disjunction_af:
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1
                                                                                        je    n231_lit_string_α
                                                                                        jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n220_disjunction_af
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n233_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n229_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn328:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n227_disjunction_β
                                                                                        jmp   n234_lit_string_α
n229_call_builtin_icon_β:
                                                                                        jmp   n227_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n232_call_builtin_icon_α
n230_var_β:
                                                                                        jmp   n227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n227_disjunction_as
n231_lit_string_β:
                                                                                        jmp   n227_disjunction_af
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn332:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n227_disjunction_af
                                                                                        jmp   n227_disjunction_as
n232_call_builtin_icon_β:
                                                                                        jmp   n227_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n224_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n235_disjunction_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n235_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n237_lit_string_α
n235_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx336_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n236_call_builtin_icon_α
.Lx336_0:
                        cmp              eax, 1
                                                                                        jne   .Lx336_1
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n236_call_builtin_icon_α
.Lx336_1:
                                                                                        jmp   n236_call_builtin_icon_α
n235_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n235_disjunction_af
                                                                                        jmp   n235_disjunction_af
n235_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n238_lit_string_α
                                                                                        jmp   n240_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn338:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n235_disjunction_β
                                                                                        jmp   n240_lit_string_α
n236_call_builtin_icon_β:
                                                                                        jmp   n235_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n241_assign_α
n237_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n235_disjunction_af
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n235_disjunction_as
n238_lit_string_β:
                                                                                        jmp   n235_disjunction_af
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn342:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n235_disjunction_af
                                                                                        jmp   n235_disjunction_as
n239_call_builtin_icon_β:
                                                                                        jmp   n235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n242_disjunction_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "s ==:= \"xx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n239_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n242_disjunction_α:
                        mov              qword ptr [rbp + 720], 0
                        mov              qword ptr [rbp + 728], 0
                        mov              dword ptr [rbp + 736], 0
                                                                                        jmp   n244_var_α
n242_disjunction_as:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        jne   .Lx346_0
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n243_call_builtin_icon_α
.Lx346_0:
                        cmp              eax, 1
                                                                                        jne   .Lx346_1
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n243_call_builtin_icon_α
.Lx346_1:
                                                                                        jmp   n243_call_builtin_icon_α
n242_disjunction_β:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 0
                                                                                        je    n242_disjunction_af
                                                                                        jmp   n242_disjunction_af
n242_disjunction_af:
                        add              dword ptr [rbp + 736], 1
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 1
                                                                                        je    n245_lit_string_α
                                                                                        jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn348:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n242_disjunction_β
                                                                                        jmp   n247_lit_string_α
n243_call_builtin_icon_β:
                                                                                        jmp   n242_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n248_lit_string_α
n244_var_β:
                                                                                        jmp   n242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n242_disjunction_as
n245_lit_string_β:
                                                                                        jmp   n242_disjunction_af
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn352:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n242_disjunction_af
                                                                                        jmp   n242_disjunction_as
n246_call_builtin_icon_β:
                                                                                        jmp   n242_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n249_disjunction_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n250_binop_test_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n249_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n252_var_α
n249_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx356_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n251_call_builtin_icon_α
.Lx356_0:
                        cmp              eax, 1
                                                                                        jne   .Lx356_1
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n251_call_builtin_icon_α
.Lx356_1:
                                                                                        jmp   n251_call_builtin_icon_α
n249_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        je    n249_disjunction_af
                                                                                        jmp   n249_disjunction_af
n249_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1
                                                                                        je    n253_lit_string_α
                                                                                        jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_test_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n242_disjunction_af
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n255_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn359:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rbp + 464]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n249_disjunction_β
                                                                                        jmp   n256_lit_string_α
n251_call_builtin_icon_β:
                                                                                        jmp   n249_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n254_call_builtin_icon_α
n252_var_β:
                                                                                        jmp   n249_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n249_disjunction_as
n253_lit_string_β:
                                                                                        jmp   n249_disjunction_af
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn363:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn363]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n249_disjunction_af
                                                                                        jmp   n249_disjunction_as
n254_call_builtin_icon_β:
                                                                                        jmp   n249_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n246_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n257_disjunction_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n257_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n259_lit_string_α
n257_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx367_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n258_call_builtin_icon_α
.Lx367_0:
                        cmp              eax, 1
                                                                                        jne   .Lx367_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n258_call_builtin_icon_α
.Lx367_1:
                                                                                        jmp   n258_call_builtin_icon_α
n257_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n257_disjunction_af
                                                                                        jmp   n257_disjunction_af
n257_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n260_lit_string_α
                                                                                        jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn369:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn369]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n257_disjunction_β
                                                                                        jmp   n262_lit_string_α
n258_call_builtin_icon_β:
                                                                                        jmp   n257_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n263_assign_α
n259_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n257_disjunction_af
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n257_disjunction_as
n260_lit_string_β:
                                                                                        jmp   n257_disjunction_af
.Lx371_0:
                        .quad            .Lx371_0_s
.Lx371_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn373:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn373]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n257_disjunction_af
                                                                                        jmp   n257_disjunction_as
n261_call_builtin_icon_β:
                                                                                        jmp   n257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n264_disjunction_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "s ==:= \"X\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n261_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n264_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n266_var_α
n264_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx377_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n265_call_builtin_icon_α
.Lx377_0:
                        cmp              eax, 1
                                                                                        jne   .Lx377_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n265_call_builtin_icon_α
.Lx377_1:
                                                                                        jmp   n265_call_builtin_icon_α
n264_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n264_disjunction_af
                                                                                        jmp   n264_disjunction_af
n264_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n267_lit_string_α
                                                                                        jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn379:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn379]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n264_disjunction_β
                                                                                        jmp   proc_p2_ω
n265_call_builtin_icon_β:
                                                                                        jmp   n264_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n269_lit_string_α
n266_var_β:
                                                                                        jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n264_disjunction_as
n267_lit_string_β:
                                                                                        jmp   n264_disjunction_af
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn383:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn383]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n264_disjunction_af
                                                                                        jmp   n264_disjunction_as
n268_call_builtin_icon_β:
                                                                                        jmp   n264_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n270_binop_test_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_test_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n264_disjunction_af
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n271_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n268_call_builtin_icon_α
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
                        mov              rax, [rbp + 2376]
                        lea              rsp, [rbp + 2400]
                        mov              rbp, [rbp + 2392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_ω:
                        mov              rax, [rbp + 2384]
                        lea              rsp, [rbp + 2400]
                        mov              rbp, [rbp + 2392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_dcα:
                        pop              r11
                        sub              rsp, 2416
                        mov              qword ptr [rsp + 2392], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2368], r11
                        lea              rax, [rip + .Lx387_2]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rax, [rip + .Lx387_3]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rdi, rbp
                        mov              esi, 2368
                        mov              edx, 2368
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p2_α_body
.Lx387_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2400
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx387_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2400
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
                        sub              rsp, 2944
                        mov              [rsp + 2920], rcx
                        mov              [rsp + 2928], rdx
                        mov              [rsp + 2936], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2912
                        mov              edx, 2912
                        call             rt_jmp_frame_lexprep2@PLT
proc_p3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n389_disjunction_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n389_disjunction_α:
                        mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0
                        mov              dword ptr [rbp + 2816], 0
                                                                                        jmp   n391_var_α
n389_disjunction_as:
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 0
                                                                                        jne   .Lx506_0
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n390_call_builtin_icon_α
.Lx506_0:
                        cmp              eax, 1
                                                                                        jne   .Lx506_1
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n390_call_builtin_icon_α
.Lx506_1:
                                                                                        jmp   n390_call_builtin_icon_α
n389_disjunction_β:
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 0
                                                                                        je    n389_disjunction_af
                                                                                        jmp   n389_disjunction_af
n389_disjunction_af:
                        add              dword ptr [rbp + 2816], 1
                        mov              eax, dword ptr [rbp + 2816]
                        cmp              eax, 1
                                                                                        je    n392_lit_string_α
                                                                                        jmp   n394_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        .section         .rodata
.Lrkfn508:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n389_disjunction_β
                                                                                        jmp   n394_lit_string_α
n390_call_builtin_icon_β:
                                                                                        jmp   n389_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n393_call_builtin_icon_α
n391_var_β:
                                                                                        jmp   n389_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n389_disjunction_as
n392_lit_string_β:
                                                                                        jmp   n389_disjunction_af
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2856], rax
                        .section         .rodata
.Lrkfn512:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn512]
                        lea              rsi, [rbp + 2848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n389_disjunction_af
                                                                                        jmp   n389_disjunction_as
n393_call_builtin_icon_β:
                                                                                        jmp   n389_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n395_disjunction_α
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "s := \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n395_disjunction_α:
                        mov              qword ptr [rbp + 2592], 0
                        mov              qword ptr [rbp + 2600], 0
                        mov              dword ptr [rbp + 2608], 0
                                                                                        jmp   n397_lit_string_α
n395_disjunction_as:
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 0
                                                                                        jne   .Lx515_0
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n396_call_builtin_icon_α
.Lx515_0:
                        cmp              eax, 1
                                                                                        jne   .Lx515_1
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n396_call_builtin_icon_α
.Lx515_1:
                                                                                        jmp   n396_call_builtin_icon_α
n395_disjunction_β:
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 0
                                                                                        je    n395_disjunction_af
                                                                                        jmp   n395_disjunction_af
n395_disjunction_af:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 1
                                                                                        je    n398_lit_string_α
                                                                                        jmp   n400_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                        .section         .rodata
.Lrkfn517:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn517]
                        lea              rsi, [rbp + 2528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n395_disjunction_β
                                                                                        jmp   n400_lit_string_α
n396_call_builtin_icon_β:
                                                                                        jmp   n395_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n401_assign_α
n397_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n395_disjunction_af
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n395_disjunction_as
n398_lit_string_β:
                                                                                        jmp   n395_disjunction_af
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n399_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn521:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn521]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n395_disjunction_af
                                                                                        jmp   n395_disjunction_as
n399_call_builtin_icon_β:
                                                                                        jmp   n395_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n402_disjunction_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "s ==:= \"abc\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n401_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n399_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n402_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n404_var_α
n402_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx525_0
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n403_call_builtin_icon_α
.Lx525_0:
                        cmp              eax, 1
                                                                                        jne   .Lx525_1
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n403_call_builtin_icon_α
.Lx525_1:
                                                                                        jmp   n403_call_builtin_icon_α
n402_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n402_disjunction_af
                                                                                        jmp   n402_disjunction_af
n402_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n405_lit_string_α
                                                                                        jmp   n407_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        .section         .rodata
.Lrkfn527:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn527]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n402_disjunction_β
                                                                                        jmp   n407_lit_string_α
n403_call_builtin_icon_β:
                                                                                        jmp   n402_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n404_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n408_lit_string_α
n404_var_β:
                                                                                        jmp   n402_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n402_disjunction_as
n405_lit_string_β:
                                                                                        jmp   n402_disjunction_af
.Lx529_0:
                        .quad            .Lx529_0_s
.Lx529_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn531:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn531]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n402_disjunction_af
                                                                                        jmp   n402_disjunction_as
n406_call_builtin_icon_β:
                                                                                        jmp   n402_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n409_disjunction_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "s ----> "
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n410_binop_test_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n409_disjunction_α:
                        mov              qword ptr [rbp + 2160], 0
                        mov              qword ptr [rbp + 2168], 0
                        mov              dword ptr [rbp + 2176], 0
                                                                                        jmp   n412_var_α
n409_disjunction_as:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 0
                                                                                        jne   .Lx535_0
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n411_call_builtin_icon_α
.Lx535_0:
                        cmp              eax, 1
                                                                                        jne   .Lx535_1
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n411_call_builtin_icon_α
.Lx535_1:
                                                                                        jmp   n411_call_builtin_icon_α
n409_disjunction_β:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 0
                                                                                        je    n409_disjunction_af
                                                                                        jmp   n409_disjunction_af
n409_disjunction_af:
                        add              dword ptr [rbp + 2176], 1
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 1
                                                                                        je    n413_lit_string_α
                                                                                        jmp   n416_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n410_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n402_disjunction_af
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n415_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lrkfn538:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn538]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n409_disjunction_β
                                                                                        jmp   n416_lit_string_α
n411_call_builtin_icon_β:
                                                                                        jmp   n409_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n414_call_builtin_icon_α
n412_var_β:
                                                                                        jmp   n409_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n409_disjunction_as
n413_lit_string_β:
                                                                                        jmp   n409_disjunction_af
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n414_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                        .section         .rodata
.Lrkfn542:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]
                        lea              rsi, [rbp + 2208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n409_disjunction_af
                                                                                        jmp   n409_disjunction_as
n414_call_builtin_icon_β:
                                                                                        jmp   n409_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n415_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n406_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n417_disjunction_α
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "{s[1:2] := \"xx\";s} ----> "
#-----------------------------------------------------------------------------------------------------------------------
n417_disjunction_α:
                        mov              qword ptr [rbp + 1856], 0
                        mov              qword ptr [rbp + 1864], 0
                        mov              dword ptr [rbp + 1872], 0
                                                                                        jmp   n419_var_ref_α
n417_disjunction_as:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        jne   .Lx546_0
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n418_call_builtin_icon_α
.Lx546_0:
                        cmp              eax, 1
                                                                                        jne   .Lx546_1
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n418_call_builtin_icon_α
.Lx546_1:
                                                                                        jmp   n418_call_builtin_icon_α
n417_disjunction_β:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 0
                                                                                        je    n417_disjunction_af
                                                                                        jmp   n417_disjunction_af
n417_disjunction_af:
                        add              dword ptr [rbp + 1872], 1
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 1
                                                                                        je    n420_lit_string_α
                                                                                        jmp   n422_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lrkfn548:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn548]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n417_disjunction_β
                                                                                        jmp   n422_lit_string_α
n418_call_builtin_icon_β:
                                                                                        jmp   n417_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n423_lit_integer_α
n419_var_ref_β:
                                                                                        jmp   n434_var_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n417_disjunction_as
n420_lit_string_β:
                                                                                        jmp   n417_disjunction_af
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n421_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn553:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn553]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n417_disjunction_af
                                                                                        jmp   n417_disjunction_as
n421_call_builtin_icon_β:
                                                                                        jmp   n417_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n424_disjunction_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "{s[-1:0] := \"\";s} ----> "
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_integer_α:
                        mov              qword ptr [rbp + 2000], 6
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n425_lit_integer_α
.Lx555_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n424_disjunction_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              dword ptr [rbp + 1568], 0
                                                                                        jmp   n427_var_ref_α
n424_disjunction_as:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        jne   .Lx557_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n426_call_builtin_icon_α
.Lx557_0:
                        cmp              eax, 1
                                                                                        jne   .Lx557_1
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n426_call_builtin_icon_α
.Lx557_1:
                                                                                        jmp   n426_call_builtin_icon_α
n424_disjunction_β:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        je    n424_disjunction_af
                                                                                        jmp   n424_disjunction_af
n424_disjunction_af:
                        add              dword ptr [rbp + 1568], 1
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 1
                                                                                        je    n428_lit_string_α
                                                                                        jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 6
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n430_subscript_α
.Lx558_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn560:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n424_disjunction_β
                                                                                        jmp   n431_lit_string_α
n426_call_builtin_icon_β:
                                                                                        jmp   n424_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n432_lit_integer_α
n427_var_ref_β:
                                                                                        jmp   n447_var_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n424_disjunction_as
n428_lit_string_β:
                                                                                        jmp   n424_disjunction_af
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn565:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n424_disjunction_af
                                                                                        jmp   n424_disjunction_as
n429_call_builtin_icon_β:
                                                                                        jmp   n424_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n430_subscript_α:
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        mov              r8, qword ptr [rbp + 2016]
                        mov              r9, qword ptr [rbp + 2024]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n434_var_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                                                                                        jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n435_disjunction_α
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "{s[1] := \"abc\";s} ----> "
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n436_lit_integer_α
.Lx568_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n437_assign_var_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n438_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n435_disjunction_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              dword ptr [rbp + 1280], 0
                                                                                        jmp   n440_var_ref_α
n435_disjunction_as:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        jne   .Lx572_0
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n439_call_builtin_icon_α
.Lx572_0:
                        cmp              eax, 1
                                                                                        jne   .Lx572_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n439_call_builtin_icon_α
.Lx572_1:
                                                                                        jmp   n439_call_builtin_icon_α
n435_disjunction_β:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        je    n435_disjunction_af
                                                                                        jmp   n435_disjunction_af
n435_disjunction_af:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 1
                                                                                        je    n441_lit_string_α
                                                                                        jmp   n444_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n443_subscript_α
.Lx573_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n437_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n434_var_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n434_var_α
#-----------------------------------------------------------------------------------------------------------------------
n438_conjunction_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n421_call_builtin_icon_α
n438_conjunction_β:
                                                                                        jmp   n417_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn577:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn577]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n435_disjunction_β
                                                                                        jmp   n444_lit_string_α
n439_call_builtin_icon_β:
                                                                                        jmp   n435_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n445_lit_integer_α
n440_var_ref_β:
                                                                                        jmp   n457_var_α
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n435_disjunction_as
n441_lit_string_β:
                                                                                        jmp   n435_disjunction_af
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn582:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n435_disjunction_af
                                                                                        jmp   n435_disjunction_as
n442_call_builtin_icon_β:
                                                                                        jmp   n435_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n443_subscript_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              r8, qword ptr [rbp + 1712]
                        mov              r9, qword ptr [rbp + 1720]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n447_var_α
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n448_disjunction_α
.Lx584_0:
                        .quad            .Lx584_0_s
.Lx584_0_s:
                        .string          "{s[1+:2] := \"y\";s} ----> "
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n449_subscript_α
.Lx585_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n450_assign_var_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n447_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n451_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n448_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n453_var_ref_α
n448_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx589_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n452_call_builtin_icon_α
.Lx589_0:
                        cmp              eax, 1
                                                                                        jne   .Lx589_1
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n452_call_builtin_icon_α
.Lx589_1:
                                                                                        jmp   n452_call_builtin_icon_α
n448_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        je    n448_disjunction_af
                                                                                        jmp   n448_disjunction_af
n448_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 1
                                                                                        je    n454_lit_string_α
                                                                                        jmp   n458_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n449_subscript_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n457_var_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n456_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n450_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1752]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n447_var_α
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n447_var_α
#-----------------------------------------------------------------------------------------------------------------------
n451_conjunction_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n429_call_builtin_icon_α
n451_conjunction_β:
                                                                                        jmp   n424_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn594:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn594]
                        lea              rsi, [rbp + 880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n448_disjunction_β
                                                                                        jmp   n458_lit_string_α
n452_call_builtin_icon_β:
                                                                                        jmp   n448_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n459_lit_integer_α
n453_var_ref_β:
                                                                                        jmp   n472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n448_disjunction_as
n454_lit_string_β:
                                                                                        jmp   n448_disjunction_af
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn599:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn599]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n448_disjunction_af
                                                                                        jmp   n448_disjunction_as
n455_call_builtin_icon_β:
                                                                                        jmp   n448_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n460_assign_var_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n461_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n462_disjunction_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "{s[2] :=: s[3];s} ----> "
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n463_lit_integer_α
.Lx603_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n460_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n457_var_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n457_var_α
#-----------------------------------------------------------------------------------------------------------------------
n461_conjunction_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n442_call_builtin_icon_α
n461_conjunction_β:
                                                                                        jmp   n435_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n462_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n465_var_ref_α
n462_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx607_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n464_call_builtin_icon_α
.Lx607_0:
                        cmp              eax, 1
                                                                                        jne   .Lx607_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n464_call_builtin_icon_α
.Lx607_1:
                                                                                        jmp   n464_call_builtin_icon_α
n462_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        je    n462_disjunction_af
                                                                                        jmp   n462_disjunction_af
n462_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 1
                                                                                        je    n466_lit_string_α
                                                                                        jmp   n469_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx608_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n468_binop_α
.Lx608_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn610:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn610]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n462_disjunction_β
                                                                                        jmp   n469_lit_string_α
n464_call_builtin_icon_β:
                                                                                        jmp   n462_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n470_lit_integer_α
n465_var_ref_β:
                                                                                        jmp   n482_var_α
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n462_disjunction_as
n466_lit_string_β:
                                                                                        jmp   n462_disjunction_af
.Lx613_0:
                        .quad            .Lx613_0_s
.Lx613_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n467_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn615:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn615]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n462_disjunction_af
                                                                                        jmp   n462_disjunction_as
n467_call_builtin_icon_β:
                                                                                        jmp   n462_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n468_binop_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n472_var_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n471_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n473_disjunction_α
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "s[6] := \"t\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n474_subscript_α
.Lx618_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n471_subscript_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8, qword ptr [rbp + 1120]
                        mov              r9, qword ptr [rbp + 1128]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n472_var_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n475_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n476_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n473_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n478_var_ref_α
n473_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx622_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n477_call_builtin_icon_α
.Lx622_0:
                        cmp              eax, 1
                                                                                        jne   .Lx622_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n477_call_builtin_icon_α
.Lx622_1:
                                                                                        jmp   n477_call_builtin_icon_α
n473_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n473_disjunction_af
                                                                                        jmp   n473_disjunction_af
n473_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n479_lit_string_α
                                                                                        jmp   n484_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n474_subscript_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n482_var_α
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n481_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n483_assign_var_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n476_conjunction_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n455_call_builtin_icon_α
n476_conjunction_β:
                                                                                        jmp   n448_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n477_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn627:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn627]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n473_disjunction_β
                                                                                        jmp   n484_lit_string_α
n477_call_builtin_icon_β:
                                                                                        jmp   n473_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n485_lit_integer_α
n478_var_ref_β:
                                                                                        jmp   n473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n473_disjunction_as
n479_lit_string_β:
                                                                                        jmp   n473_disjunction_af
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n480_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn632:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n473_disjunction_af
                                                                                        jmp   n473_disjunction_as
n480_call_builtin_icon_β:
                                                                                        jmp   n473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n486_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n482_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n487_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n483_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n472_var_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n488_disjunction_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "s[0-:6] := \"u\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n489_subscript_α
.Lx638_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n490_subscript_α
.Lx639_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n487_conjunction_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n467_call_builtin_icon_α
n487_conjunction_β:
                                                                                        jmp   n462_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n488_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n492_var_ref_α
n488_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx642_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n491_call_builtin_icon_α
.Lx642_0:
                        cmp              eax, 1
                                                                                        jne   .Lx642_1
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n491_call_builtin_icon_α
.Lx642_1:
                                                                                        jmp   n491_call_builtin_icon_α
n488_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n488_disjunction_af
                                                                                        jmp   n488_disjunction_af
n488_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n493_lit_string_α
                                                                                        jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n473_disjunction_af
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n495_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n490_subscript_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n482_var_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n496_swap_var_α
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn646:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn646]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n488_disjunction_β
                                                                                        jmp   proc_p3_ω
n491_call_builtin_icon_β:
                                                                                        jmp   n488_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n492_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n497_lit_integer_α
n492_var_ref_β:
                                                                                        jmp   n488_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx649_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n488_disjunction_as
n493_lit_string_β:
                                                                                        jmp   n488_disjunction_af
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn651:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn651]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n488_disjunction_af
                                                                                        jmp   n488_disjunction_as
n494_call_builtin_icon_β:
                                                                                        jmp   n488_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n498_assign_var_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n496_swap_var_α:
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        call             rt_swap_var@PLT
                        cmp              eax, 99
                                                                                        je    n482_var_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n482_var_α
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n499_lit_integer_α
.Lx654_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n498_assign_var_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n473_disjunction_af
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n480_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n500_binop_α
.Lx656_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n500_binop_α:
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n488_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n501_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n501_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              r8, qword ptr [rbp + 224]
                        mov              r9, qword ptr [rbp + 232]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n488_disjunction_af
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n502_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n503_assign_var_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "u"
#-----------------------------------------------------------------------------------------------------------------------
n503_assign_var_α:
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n488_disjunction_af
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n494_call_builtin_icon_α
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
                        mov              rax, [rbp + 2920]
                        lea              rsp, [rbp + 2944]
                        mov              rbp, [rbp + 2936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_ω:
                        mov              rax, [rbp + 2928]
                        lea              rsp, [rbp + 2944]
                        mov              rbp, [rbp + 2936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_dcα:
                        pop              r11
                        sub              rsp, 2960
                        mov              qword ptr [rsp + 2936], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2912], r11
                        lea              rax, [rip + .Lx661_2]
                        mov              qword ptr [rbp + 2920], rax
                        lea              rax, [rip + .Lx661_3]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rdi, rbp
                        mov              esi, 2912
                        mov              edx, 2912
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p3_α_body
.Lx661_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx661_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2944
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
                        sub              rsp, 2624
                        mov              [rsp + 2600], rcx
                        mov              [rsp + 2608], rdx
                        mov              [rsp + 2616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2592
                        mov              edx, 2592
                        call             rt_jmp_frame_lexprep2@PLT
proc_p4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n662_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n663_disjunction_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          "{s[1:0] :=: s[0:1];s} ----> "
#-----------------------------------------------------------------------------------------------------------------------
n663_disjunction_α:
                        mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                        mov              dword ptr [rbp + 2336], 0
                                                                                        jmp   n665_var_ref_α
n663_disjunction_as:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 0
                                                                                        jne   .Lx760_0
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n664_call_builtin_icon_α
.Lx760_0:
                        cmp              eax, 1
                                                                                        jne   .Lx760_1
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n664_call_builtin_icon_α
.Lx760_1:
                                                                                        jmp   n664_call_builtin_icon_α
n663_disjunction_β:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 0
                                                                                        je    n663_disjunction_af
                                                                                        jmp   n663_disjunction_af
n663_disjunction_af:
                        add              dword ptr [rbp + 2336], 1
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 1
                                                                                        je    n666_lit_string_α
                                                                                        jmp   n668_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n664_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn762:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn762]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n663_disjunction_β
                                                                                        jmp   n668_lit_string_α
n664_call_builtin_icon_β:
                                                                                        jmp   n663_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n665_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n669_lit_integer_α
n665_var_ref_β:
                                                                                        jmp   n680_var_α
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n663_disjunction_as
n666_lit_string_β:
                                                                                        jmp   n663_disjunction_af
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n667_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn767:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn767]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n663_disjunction_af
                                                                                        jmp   n663_disjunction_as
n667_call_builtin_icon_β:
                                                                                        jmp   n663_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n668_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n670_disjunction_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "\"x\" << \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_integer_α:
                        mov              qword ptr [rbp + 2464], 6
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n671_lit_integer_α
.Lx769_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n670_disjunction_α:
                        mov              qword ptr [rbp + 2096], 0
                        mov              qword ptr [rbp + 2104], 0
                        mov              dword ptr [rbp + 2112], 0
                                                                                        jmp   n673_lit_string_α
n670_disjunction_as:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 0
                                                                                        jne   .Lx771_0
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n672_call_builtin_icon_α
.Lx771_0:
                        cmp              eax, 1
                                                                                        jne   .Lx771_1
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n672_call_builtin_icon_α
.Lx771_1:
                                                                                        jmp   n672_call_builtin_icon_α
n670_disjunction_β:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 0
                                                                                        je    n670_disjunction_af
                                                                                        jmp   n670_disjunction_af
n670_disjunction_af:
                        add              dword ptr [rbp + 2112], 1
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 1
                                                                                        je    n674_lit_string_α
                                                                                        jmp   n677_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n676_subscript_α
.Lx772_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n672_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn774:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn774]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n670_disjunction_β
                                                                                        jmp   n677_lit_string_α
n672_call_builtin_icon_β:
                                                                                        jmp   n670_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n673_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n678_lit_string_α
n673_lit_string_β:
                                                                                        jmp   n670_disjunction_af
.Lx775_0:
                        .quad            .Lx775_0_s
.Lx775_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n670_disjunction_as
n674_lit_string_β:
                                                                                        jmp   n670_disjunction_af
.Lx776_0:
                        .quad            .Lx776_0_s
.Lx776_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n675_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn778:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn778]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n670_disjunction_af
                                                                                        jmp   n670_disjunction_as
n675_call_builtin_icon_β:
                                                                                        jmp   n670_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n676_subscript_α:
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 2464]
                        mov              rcx, qword ptr [rbp + 2472]
                        mov              r8, qword ptr [rbp + 2480]
                        mov              r9, qword ptr [rbp + 2488]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n680_var_α
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n679_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n677_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n681_disjunction_α
.Lx780_0:
                        .quad            .Lx780_0_s
.Lx780_0_s:
                        .string          "\"x\" << \"X\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n678_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n682_binop_test_α
.Lx781_0:
                        .quad            .Lx781_0_s
.Lx781_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n679_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n683_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n680_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n684_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n681_disjunction_α:
                        mov              qword ptr [rbp + 1872], 0
                        mov              qword ptr [rbp + 1880], 0
                        mov              dword ptr [rbp + 1888], 0
                                                                                        jmp   n686_lit_string_α
n681_disjunction_as:
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 0
                                                                                        jne   .Lx786_0
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n685_call_builtin_icon_α
.Lx786_0:
                        cmp              eax, 1
                                                                                        jne   .Lx786_1
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n685_call_builtin_icon_α
.Lx786_1:
                                                                                        jmp   n685_call_builtin_icon_α
n681_disjunction_β:
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 0
                                                                                        je    n681_disjunction_af
                                                                                        jmp   n681_disjunction_af
n681_disjunction_af:
                        add              dword ptr [rbp + 1888], 1
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 1
                                                                                        je    n687_lit_string_α
                                                                                        jmp   n690_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n682_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n670_disjunction_af
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n675_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n689_lit_integer_α
.Lx788_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n684_conjunction_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n667_call_builtin_icon_α
n684_conjunction_β:
                                                                                        jmp   n663_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n685_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn791:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn791]
                        lea              rsi, [rbp + 1808]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n681_disjunction_β
                                                                                        jmp   n690_lit_string_α
n685_call_builtin_icon_β:
                                                                                        jmp   n681_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n686_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n691_lit_string_α
n686_lit_string_β:
                                                                                        jmp   n681_disjunction_af
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n687_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n681_disjunction_as
n687_lit_string_β:
                                                                                        jmp   n681_disjunction_af
.Lx793_0:
                        .quad            .Lx793_0_s
.Lx793_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n688_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn795:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn795]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n681_disjunction_af
                                                                                        jmp   n681_disjunction_as
n688_call_builtin_icon_β:
                                                                                        jmp   n681_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n689_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n692_subscript_α
.Lx796_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n693_disjunction_α
.Lx797_0:
                        .quad            .Lx797_0_s
.Lx797_0_s:
                        .string          "\"X\" << \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n694_binop_test_α
.Lx798_0:
                        .quad            .Lx798_0_s
.Lx798_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n692_subscript_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              rdx, qword ptr [rbp + 2528]
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              r8, qword ptr [rbp + 2544]
                        mov              r9, qword ptr [rbp + 2552]
                        call             rt_section_var@PLT
                        cmp              eax, 99
                                                                                        je    n680_var_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n695_swap_var_α
#-----------------------------------------------------------------------------------------------------------------------
n693_disjunction_α:
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                        mov              dword ptr [rbp + 1664], 0
                                                                                        jmp   n697_lit_string_α
n693_disjunction_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        jne   .Lx801_0
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n696_call_builtin_icon_α
.Lx801_0:
                        cmp              eax, 1
                                                                                        jne   .Lx801_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n696_call_builtin_icon_α
.Lx801_1:
                                                                                        jmp   n696_call_builtin_icon_α
n693_disjunction_β:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        je    n693_disjunction_af
                                                                                        jmp   n693_disjunction_af
n693_disjunction_af:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 1
                                                                                        je    n698_lit_string_α
                                                                                        jmp   n700_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n694_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 1984]
                        mov              rcx, qword ptr [rbp + 1992]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n681_disjunction_af
                        mov              rdi, qword ptr [rbp + 1984]
                        mov              rsi, qword ptr [rbp + 1992]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n688_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n695_swap_var_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2496]
                        mov              rcx, qword ptr [rbp + 2504]
                        call             rt_swap_var@PLT
                        cmp              eax, 99
                                                                                        je    n680_var_α
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n680_var_α
#-----------------------------------------------------------------------------------------------------------------------
n696_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn805:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn805]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n693_disjunction_β
                                                                                        jmp   n700_lit_string_α
n696_call_builtin_icon_β:
                                                                                        jmp   n693_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n701_lit_string_α
n697_lit_string_β:
                                                                                        jmp   n693_disjunction_af
.Lx806_0:
                        .quad            .Lx806_0_s
.Lx806_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n693_disjunction_as
n698_lit_string_β:
                                                                                        jmp   n693_disjunction_af
.Lx807_0:
                        .quad            .Lx807_0_s
.Lx807_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n699_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lrkfn809:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn809]
                        lea              rsi, [rbp + 1696]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n693_disjunction_af
                                                                                        jmp   n693_disjunction_as
n699_call_builtin_icon_β:
                                                                                        jmp   n693_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx810_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n702_disjunction_α
.Lx810_0:
                        .quad            .Lx810_0_s
.Lx810_0_s:
                        .string          "\"xx\" <<= \"xx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx811_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n703_binop_test_α
.Lx811_0:
                        .quad            .Lx811_0_s
.Lx811_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n702_disjunction_α:
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              dword ptr [rbp + 1440], 0
                                                                                        jmp   n705_lit_string_α
n702_disjunction_as:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        jne   .Lx813_0
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n704_call_builtin_icon_α
.Lx813_0:
                        cmp              eax, 1
                                                                                        jne   .Lx813_1
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n704_call_builtin_icon_α
.Lx813_1:
                                                                                        jmp   n704_call_builtin_icon_α
n702_disjunction_β:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        je    n702_disjunction_af
                                                                                        jmp   n702_disjunction_af
n702_disjunction_af:
                        add              dword ptr [rbp + 1440], 1
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 1
                                                                                        je    n706_lit_string_α
                                                                                        jmp   n708_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n703_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n693_disjunction_af
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n699_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n704_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn816:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn816]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n702_disjunction_β
                                                                                        jmp   n708_lit_string_α
n704_call_builtin_icon_β:
                                                                                        jmp   n702_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n709_lit_string_α
n705_lit_string_β:
                                                                                        jmp   n702_disjunction_af
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n702_disjunction_as
n706_lit_string_β:
                                                                                        jmp   n702_disjunction_af
.Lx818_0:
                        .quad            .Lx818_0_s
.Lx818_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n707_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn820:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn820]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n702_disjunction_af
                                                                                        jmp   n702_disjunction_as
n707_call_builtin_icon_β:
                                                                                        jmp   n702_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n710_disjunction_α
.Lx821_0:
                        .quad            .Lx821_0_s
.Lx821_0_s:
                        .string          "\"xxx\" <<= \"xx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n711_binop_test_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n710_disjunction_α:
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              dword ptr [rbp + 1216], 0
                                                                                        jmp   n713_lit_string_α
n710_disjunction_as:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        jne   .Lx824_0
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n712_call_builtin_icon_α
.Lx824_0:
                        cmp              eax, 1
                                                                                        jne   .Lx824_1
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n712_call_builtin_icon_α
.Lx824_1:
                                                                                        jmp   n712_call_builtin_icon_α
n710_disjunction_β:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        je    n710_disjunction_af
                                                                                        jmp   n710_disjunction_af
n710_disjunction_af:
                        add              dword ptr [rbp + 1216], 1
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 1
                                                                                        je    n714_lit_string_α
                                                                                        jmp   n716_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n711_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n702_disjunction_af
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n707_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n712_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn827:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn827]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n710_disjunction_β
                                                                                        jmp   n716_lit_string_α
n712_call_builtin_icon_β:
                                                                                        jmp   n710_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx828_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n717_lit_string_α
n713_lit_string_β:
                                                                                        jmp   n710_disjunction_af
.Lx828_0:
                        .quad            .Lx828_0_s
.Lx828_0_s:
                        .string          "xxx"
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx829_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n710_disjunction_as
n714_lit_string_β:
                                                                                        jmp   n710_disjunction_af
.Lx829_0:
                        .quad            .Lx829_0_s
.Lx829_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n715_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn831:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn831]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n710_disjunction_af
                                                                                        jmp   n710_disjunction_as
n715_call_builtin_icon_β:
                                                                                        jmp   n710_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n718_disjunction_α
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "\"xx\" <<= \"xxx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx833_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n719_binop_test_α
.Lx833_0:
                        .quad            .Lx833_0_s
.Lx833_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n718_disjunction_α:
                        mov              qword ptr [rbp + 976], 0
                        mov              qword ptr [rbp + 984], 0
                        mov              dword ptr [rbp + 992], 0
                                                                                        jmp   n721_lit_string_α
n718_disjunction_as:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        jne   .Lx835_0
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n720_call_builtin_icon_α
.Lx835_0:
                        cmp              eax, 1
                                                                                        jne   .Lx835_1
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n720_call_builtin_icon_α
.Lx835_1:
                                                                                        jmp   n720_call_builtin_icon_α
n718_disjunction_β:
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 0
                                                                                        je    n718_disjunction_af
                                                                                        jmp   n718_disjunction_af
n718_disjunction_af:
                        add              dword ptr [rbp + 992], 1
                        mov              eax, dword ptr [rbp + 992]
                        cmp              eax, 1
                                                                                        je    n722_lit_string_α
                                                                                        jmp   n724_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n719_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n710_disjunction_af
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n715_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n720_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn838:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn838]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n718_disjunction_β
                                                                                        jmp   n724_lit_string_α
n720_call_builtin_icon_β:
                                                                                        jmp   n718_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx839_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n725_lit_string_α
n721_lit_string_β:
                                                                                        jmp   n718_disjunction_af
.Lx839_0:
                        .quad            .Lx839_0_s
.Lx839_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx840_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n718_disjunction_as
n722_lit_string_β:
                                                                                        jmp   n718_disjunction_af
.Lx840_0:
                        .quad            .Lx840_0_s
.Lx840_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n723_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn842:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn842]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n718_disjunction_af
                                                                                        jmp   n718_disjunction_as
n723_call_builtin_icon_β:
                                                                                        jmp   n718_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx843_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n726_disjunction_α
.Lx843_0:
                        .quad            .Lx843_0_s
.Lx843_0_s:
                        .string          "\"x\" >>= \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx844_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n727_binop_test_α
.Lx844_0:
                        .quad            .Lx844_0_s
.Lx844_0_s:
                        .string          "xxx"
#-----------------------------------------------------------------------------------------------------------------------
n726_disjunction_α:
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0
                                                                                        jmp   n729_lit_string_α
n726_disjunction_as:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        jne   .Lx846_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n728_call_builtin_icon_α
.Lx846_0:
                        cmp              eax, 1
                                                                                        jne   .Lx846_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n728_call_builtin_icon_α
.Lx846_1:
                                                                                        jmp   n728_call_builtin_icon_α
n726_disjunction_β:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        je    n726_disjunction_af
                                                                                        jmp   n726_disjunction_af
n726_disjunction_af:
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 1
                                                                                        je    n730_lit_string_α
                                                                                        jmp   n732_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n727_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n718_disjunction_af
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n723_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n728_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn849:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn849]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n726_disjunction_β
                                                                                        jmp   n732_lit_string_α
n728_call_builtin_icon_β:
                                                                                        jmp   n726_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n733_lit_string_α
n729_lit_string_β:
                                                                                        jmp   n726_disjunction_af
.Lx850_0:
                        .quad            .Lx850_0_s
.Lx850_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n726_disjunction_as
n730_lit_string_β:
                                                                                        jmp   n726_disjunction_af
.Lx851_0:
                        .quad            .Lx851_0_s
.Lx851_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n731_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn853:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn853]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n726_disjunction_af
                                                                                        jmp   n726_disjunction_as
n731_call_builtin_icon_β:
                                                                                        jmp   n726_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx854_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n734_disjunction_α
.Lx854_0:
                        .quad            .Lx854_0_s
.Lx854_0_s:
                        .string          "\"x\" >>= \"xx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx855_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n735_binop_test_α
.Lx855_0:
                        .quad            .Lx855_0_s
.Lx855_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n734_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n737_lit_string_α
n734_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx857_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n736_call_builtin_icon_α
.Lx857_0:
                        cmp              eax, 1
                                                                                        jne   .Lx857_1
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n736_call_builtin_icon_α
.Lx857_1:
                                                                                        jmp   n736_call_builtin_icon_α
n734_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        je    n734_disjunction_af
                                                                                        jmp   n734_disjunction_af
n734_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1
                                                                                        je    n738_lit_string_α
                                                                                        jmp   n740_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n735_binop_test_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        mov              r8d, 15
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n726_disjunction_af
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n731_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n736_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn860:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn860]
                        lea              rsi, [rbp + 464]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n734_disjunction_β
                                                                                        jmp   n740_lit_string_α
n736_call_builtin_icon_β:
                                                                                        jmp   n734_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n741_lit_string_α
n737_lit_string_β:
                                                                                        jmp   n734_disjunction_af
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx862_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n734_disjunction_as
n738_lit_string_β:
                                                                                        jmp   n734_disjunction_af
.Lx862_0:
                        .quad            .Lx862_0_s
.Lx862_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n739_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn864:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn864]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n734_disjunction_af
                                                                                        jmp   n734_disjunction_as
n739_call_builtin_icon_β:
                                                                                        jmp   n734_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n742_disjunction_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "\"xx\" >>= \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n743_binop_test_α
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n742_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n745_lit_string_α
n742_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx868_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n744_call_builtin_icon_α
.Lx868_0:
                        cmp              eax, 1
                                                                                        jne   .Lx868_1
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n744_call_builtin_icon_α
.Lx868_1:
                                                                                        jmp   n744_call_builtin_icon_α
n742_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        je    n742_disjunction_af
                                                                                        jmp   n742_disjunction_af
n742_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1
                                                                                        je    n746_lit_string_α
                                                                                        jmp   n748_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n743_binop_test_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              r8d, 15
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n734_disjunction_af
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n739_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n744_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn871:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn871]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n742_disjunction_β
                                                                                        jmp   n748_lit_string_α
n744_call_builtin_icon_β:
                                                                                        jmp   n742_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n749_lit_string_α
n745_lit_string_β:
                                                                                        jmp   n742_disjunction_af
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "xx"
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n742_disjunction_as
n746_lit_string_β:
                                                                                        jmp   n742_disjunction_af
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n747_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn875:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn875]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n742_disjunction_af
                                                                                        jmp   n742_disjunction_as
n747_call_builtin_icon_β:
                                                                                        jmp   n742_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx876_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n750_disjunction_α
.Lx876_0:
                        .quad            .Lx876_0_s
.Lx876_0_s:
                        .string          "\"x\" >> \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n751_binop_test_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n750_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n753_lit_string_α
n750_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx879_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n752_call_builtin_icon_α
.Lx879_0:
                        cmp              eax, 1
                                                                                        jne   .Lx879_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n752_call_builtin_icon_α
.Lx879_1:
                                                                                        jmp   n752_call_builtin_icon_α
n750_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n750_disjunction_af
                                                                                        jmp   n750_disjunction_af
n750_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n754_lit_string_α
                                                                                        jmp   proc_p4_ω
#-----------------------------------------------------------------------------------------------------------------------
n751_binop_test_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              r8d, 15
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n742_disjunction_af
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n747_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n752_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn882:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn882]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n750_disjunction_β
                                                                                        jmp   proc_p4_ω
n752_call_builtin_icon_β:
                                                                                        jmp   n750_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n756_lit_string_α
n753_lit_string_β:
                                                                                        jmp   n750_disjunction_af
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n750_disjunction_as
n754_lit_string_β:
                                                                                        jmp   n750_disjunction_af
.Lx884_0:
                        .quad            .Lx884_0_s
.Lx884_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n755_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn886:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn886]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n750_disjunction_af
                                                                                        jmp   n750_disjunction_as
n755_call_builtin_icon_β:
                                                                                        jmp   n750_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n757_binop_test_α
.Lx887_0:
                        .quad            .Lx887_0_s
.Lx887_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n757_binop_test_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n750_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n755_call_builtin_icon_α
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
                        mov              rax, [rbp + 2600]
                        lea              rsp, [rbp + 2624]
                        mov              rbp, [rbp + 2616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_ω:
                        mov              rax, [rbp + 2608]
                        lea              rsp, [rbp + 2624]
                        mov              rbp, [rbp + 2616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_dcα:
                        pop              r11
                        sub              rsp, 2640
                        mov              qword ptr [rsp + 2616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2592], r11
                        lea              rax, [rip + .Lx889_2]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rax, [rip + .Lx889_3]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rdi, rbp
                        mov              esi, 2592
                        mov              edx, 2592
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p4_α_body
.Lx889_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx889_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p5_α
proc_p5_α:
                        .global          proc_p5_α
                        .global          proc_p5_β
                        .global          proc_p5_γ
                        .global          proc_p5_ω
                        sub              rsp, 2784
                        mov              [rsp + 2760], rcx
                        mov              [rsp + 2768], rdx
                        mov              [rsp + 2776], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2736
                        mov              edx, 2752
                        call             rt_jmp_frame_lexprep2@PLT
proc_p5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n890_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n891_disjunction_α
.Lx988_0:
                        .quad            .Lx988_0_s
.Lx988_0_s:
                        .string          "\"x\" >> \"X\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n891_disjunction_α:
                        mov              qword ptr [rbp + 2592], 0
                        mov              qword ptr [rbp + 2600], 0
                        mov              dword ptr [rbp + 2608], 0
                                                                                        jmp   n893_lit_string_α
n891_disjunction_as:
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 0
                                                                                        jne   .Lx990_0
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n892_call_builtin_icon_α
.Lx990_0:
                        cmp              eax, 1
                                                                                        jne   .Lx990_1
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n892_call_builtin_icon_α
.Lx990_1:
                                                                                        jmp   n892_call_builtin_icon_α
n891_disjunction_β:
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 0
                                                                                        je    n891_disjunction_af
                                                                                        jmp   n891_disjunction_af
n891_disjunction_af:
                        add              dword ptr [rbp + 2608], 1
                        mov              eax, dword ptr [rbp + 2608]
                        cmp              eax, 1
                                                                                        je    n894_lit_string_α
                                                                                        jmp   n896_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n892_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2552], rax
                        .section         .rodata
.Lrkfn992:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn992]
                        lea              rsi, [rbp + 2528]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n891_disjunction_β
                                                                                        jmp   n896_lit_string_α
n892_call_builtin_icon_β:
                                                                                        jmp   n891_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n893_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n897_lit_string_α
n893_lit_string_β:
                                                                                        jmp   n891_disjunction_af
.Lx993_0:
                        .quad            .Lx993_0_s
.Lx993_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n894_lit_string_α:
                        mov              qword ptr [rbp + 2720], 1
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n891_disjunction_as
n894_lit_string_β:
                                                                                        jmp   n891_disjunction_af
.Lx994_0:
                        .quad            .Lx994_0_s
.Lx994_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n895_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn996:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn996]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n891_disjunction_af
                                                                                        jmp   n891_disjunction_as
n895_call_builtin_icon_β:
                                                                                        jmp   n891_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n896_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx997_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n898_disjunction_α
.Lx997_0:
                        .quad            .Lx997_0_s
.Lx997_0_s:
                        .string          "\"X\" >> \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n897_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx998_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n899_binop_test_α
.Lx998_0:
                        .quad            .Lx998_0_s
.Lx998_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n898_disjunction_α:
                        mov              qword ptr [rbp + 2368], 0
                        mov              qword ptr [rbp + 2376], 0
                        mov              dword ptr [rbp + 2384], 0
                                                                                        jmp   n901_lit_string_α
n898_disjunction_as:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        jne   .Lx1000_0
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n900_call_builtin_icon_α
.Lx1000_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1000_1
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n900_call_builtin_icon_α
.Lx1000_1:
                                                                                        jmp   n900_call_builtin_icon_α
n898_disjunction_β:
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 0
                                                                                        je    n898_disjunction_af
                                                                                        jmp   n898_disjunction_af
n898_disjunction_af:
                        add              dword ptr [rbp + 2384], 1
                        mov              eax, dword ptr [rbp + 2384]
                        cmp              eax, 1
                                                                                        je    n902_lit_string_α
                                                                                        jmp   n904_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n899_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, qword ptr [rbp + 2704]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n891_disjunction_af
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n895_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n900_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn1003:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1003]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n898_disjunction_β
                                                                                        jmp   n904_lit_string_α
n900_call_builtin_icon_β:
                                                                                        jmp   n898_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n901_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx1004_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n905_lit_string_α
n901_lit_string_β:
                                                                                        jmp   n898_disjunction_af
.Lx1004_0:
                        .quad            .Lx1004_0_s
.Lx1004_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n902_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx1005_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n898_disjunction_as
n902_lit_string_β:
                                                                                        jmp   n898_disjunction_af
.Lx1005_0:
                        .quad            .Lx1005_0_s
.Lx1005_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n903_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn1007:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1007]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n898_disjunction_af
                                                                                        jmp   n898_disjunction_as
n903_call_builtin_icon_β:
                                                                                        jmp   n898_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n904_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx1008_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n906_disjunction_α
.Lx1008_0:
                        .quad            .Lx1008_0_s
.Lx1008_0_s:
                        .string          "\"x\" == \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n905_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx1009_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n907_binop_test_α
.Lx1009_0:
                        .quad            .Lx1009_0_s
.Lx1009_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n906_disjunction_α:
                        mov              qword ptr [rbp + 2144], 0
                        mov              qword ptr [rbp + 2152], 0
                        mov              dword ptr [rbp + 2160], 0
                                                                                        jmp   n909_lit_string_α
n906_disjunction_as:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 0
                                                                                        jne   .Lx1011_0
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n908_call_builtin_icon_α
.Lx1011_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1011_1
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n908_call_builtin_icon_α
.Lx1011_1:
                                                                                        jmp   n908_call_builtin_icon_α
n906_disjunction_β:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 0
                                                                                        je    n906_disjunction_af
                                                                                        jmp   n906_disjunction_af
n906_disjunction_af:
                        add              dword ptr [rbp + 2160], 1
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 1
                                                                                        je    n910_lit_string_α
                                                                                        jmp   n912_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n907_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n898_disjunction_af
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n903_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n908_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn1014:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1014]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n906_disjunction_β
                                                                                        jmp   n912_lit_string_α
n908_call_builtin_icon_β:
                                                                                        jmp   n906_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n909_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n913_lit_string_α
n909_lit_string_β:
                                                                                        jmp   n906_disjunction_af
.Lx1015_0:
                        .quad            .Lx1015_0_s
.Lx1015_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n910_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx1016_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n906_disjunction_as
n910_lit_string_β:
                                                                                        jmp   n906_disjunction_af
.Lx1016_0:
                        .quad            .Lx1016_0_s
.Lx1016_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n911_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn1018:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1018]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n906_disjunction_af
                                                                                        jmp   n906_disjunction_as
n911_call_builtin_icon_β:
                                                                                        jmp   n906_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n912_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx1019_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n914_disjunction_α
.Lx1019_0:
                        .quad            .Lx1019_0_s
.Lx1019_0_s:
                        .string          "\"x\" == \"X\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n913_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx1020_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n915_binop_test_α
.Lx1020_0:
                        .quad            .Lx1020_0_s
.Lx1020_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n914_disjunction_α:
                        mov              qword ptr [rbp + 1920], 0
                        mov              qword ptr [rbp + 1928], 0
                        mov              dword ptr [rbp + 1936], 0
                                                                                        jmp   n917_lit_string_α
n914_disjunction_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        jne   .Lx1022_0
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n916_call_builtin_icon_α
.Lx1022_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1022_1
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n916_call_builtin_icon_α
.Lx1022_1:
                                                                                        jmp   n916_call_builtin_icon_α
n914_disjunction_β:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        je    n914_disjunction_af
                                                                                        jmp   n914_disjunction_af
n914_disjunction_af:
                        add              dword ptr [rbp + 1936], 1
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 1
                                                                                        je    n918_lit_string_α
                                                                                        jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n915_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n906_disjunction_af
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n911_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n916_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn1025:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1025]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n914_disjunction_β
                                                                                        jmp   n920_lit_string_α
n916_call_builtin_icon_β:
                                                                                        jmp   n914_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n917_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx1026_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n921_lit_string_α
n917_lit_string_β:
                                                                                        jmp   n914_disjunction_af
.Lx1026_0:
                        .quad            .Lx1026_0_s
.Lx1026_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n918_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n914_disjunction_as
n918_lit_string_β:
                                                                                        jmp   n914_disjunction_af
.Lx1027_0:
                        .quad            .Lx1027_0_s
.Lx1027_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n919_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn1029:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1029]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n914_disjunction_af
                                                                                        jmp   n914_disjunction_as
n919_call_builtin_icon_β:
                                                                                        jmp   n914_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx1030_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n922_disjunction_α
.Lx1030_0:
                        .quad            .Lx1030_0_s
.Lx1030_0_s:
                        .string          "\"X\" == \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n921_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx1031_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n923_binop_test_α
.Lx1031_0:
                        .quad            .Lx1031_0_s
.Lx1031_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n922_disjunction_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              dword ptr [rbp + 1712], 0
                                                                                        jmp   n925_lit_string_α
n922_disjunction_as:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        jne   .Lx1033_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n924_call_builtin_icon_α
.Lx1033_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1033_1
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n924_call_builtin_icon_α
.Lx1033_1:
                                                                                        jmp   n924_call_builtin_icon_α
n922_disjunction_β:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        je    n922_disjunction_af
                                                                                        jmp   n922_disjunction_af
n922_disjunction_af:
                        add              dword ptr [rbp + 1712], 1
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 1
                                                                                        je    n926_lit_string_α
                                                                                        jmp   n928_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n923_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n914_disjunction_af
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n919_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n924_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn1036:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1036]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n922_disjunction_β
                                                                                        jmp   n928_lit_string_α
n924_call_builtin_icon_β:
                                                                                        jmp   n922_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n925_lit_string_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n929_lit_string_α
n925_lit_string_β:
                                                                                        jmp   n922_disjunction_af
.Lx1037_0:
                        .quad            .Lx1037_0_s
.Lx1037_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n926_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx1038_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n922_disjunction_as
n926_lit_string_β:
                                                                                        jmp   n922_disjunction_af
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n927_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn1040:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1040]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n922_disjunction_af
                                                                                        jmp   n922_disjunction_as
n927_call_builtin_icon_β:
                                                                                        jmp   n922_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n928_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx1041_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n930_disjunction_α
.Lx1041_0:
                        .quad            .Lx1041_0_s
.Lx1041_0_s:
                        .string          "\"x\" ~== \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n929_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx1042_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n931_binop_test_α
.Lx1042_0:
                        .quad            .Lx1042_0_s
.Lx1042_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n930_disjunction_α:
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              dword ptr [rbp + 1488], 0
                                                                                        jmp   n933_lit_string_α
n930_disjunction_as:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0
                                                                                        jne   .Lx1044_0
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n932_call_builtin_icon_α
.Lx1044_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1044_1
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n932_call_builtin_icon_α
.Lx1044_1:
                                                                                        jmp   n932_call_builtin_icon_α
n930_disjunction_β:
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0
                                                                                        je    n930_disjunction_af
                                                                                        jmp   n930_disjunction_af
n930_disjunction_af:
                        add              dword ptr [rbp + 1488], 1
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 1
                                                                                        je    n934_lit_string_α
                                                                                        jmp   n936_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n931_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n922_disjunction_af
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n927_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n932_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn1047:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1047]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n930_disjunction_β
                                                                                        jmp   n936_lit_string_α
n932_call_builtin_icon_β:
                                                                                        jmp   n930_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n933_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx1048_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n937_lit_string_α
n933_lit_string_β:
                                                                                        jmp   n930_disjunction_af
.Lx1048_0:
                        .quad            .Lx1048_0_s
.Lx1048_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n934_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n930_disjunction_as
n934_lit_string_β:
                                                                                        jmp   n930_disjunction_af
.Lx1049_0:
                        .quad            .Lx1049_0_s
.Lx1049_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n935_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn1051:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1051]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n930_disjunction_af
                                                                                        jmp   n930_disjunction_as
n935_call_builtin_icon_β:
                                                                                        jmp   n930_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n936_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n938_disjunction_α
.Lx1052_0:
                        .quad            .Lx1052_0_s
.Lx1052_0_s:
                        .string          "\"x\" ~== \"X\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n937_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx1053_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n939_binop_test_α
.Lx1053_0:
                        .quad            .Lx1053_0_s
.Lx1053_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n938_disjunction_α:
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0
                                                                                        jmp   n941_lit_string_α
n938_disjunction_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        jne   .Lx1055_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n940_call_builtin_icon_α
.Lx1055_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1055_1
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n940_call_builtin_icon_α
.Lx1055_1:
                                                                                        jmp   n940_call_builtin_icon_α
n938_disjunction_β:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        je    n938_disjunction_af
                                                                                        jmp   n938_disjunction_af
n938_disjunction_af:
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 1
                                                                                        je    n942_lit_string_α
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n939_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1584]
                        mov              rcx, qword ptr [rbp + 1592]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n930_disjunction_af
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n935_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n940_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn1058:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1058]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n938_disjunction_β
                                                                                        jmp   n944_lit_string_α
n940_call_builtin_icon_β:
                                                                                        jmp   n938_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n941_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n945_lit_string_α
n941_lit_string_β:
                                                                                        jmp   n938_disjunction_af
.Lx1059_0:
                        .quad            .Lx1059_0_s
.Lx1059_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n942_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n938_disjunction_as
n942_lit_string_β:
                                                                                        jmp   n938_disjunction_af
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n943_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn1062:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1062]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n938_disjunction_af
                                                                                        jmp   n938_disjunction_as
n943_call_builtin_icon_β:
                                                                                        jmp   n938_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n944_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx1063_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n946_disjunction_α
.Lx1063_0:
                        .quad            .Lx1063_0_s
.Lx1063_0_s:
                        .string          "\"X\" ~== \"x\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n945_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n947_binop_test_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n946_disjunction_α:
                        mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0
                                                                                        jmp   n949_lit_string_α
n946_disjunction_as:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0
                                                                                        jne   .Lx1066_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n948_call_builtin_icon_α
.Lx1066_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1066_1
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n948_call_builtin_icon_α
.Lx1066_1:
                                                                                        jmp   n948_call_builtin_icon_α
n946_disjunction_β:
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0
                                                                                        je    n946_disjunction_af
                                                                                        jmp   n946_disjunction_af
n946_disjunction_af:
                        add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 1
                                                                                        je    n950_lit_string_α
                                                                                        jmp   n952_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n947_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n938_disjunction_af
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n943_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n948_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn1069:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1069]
                        lea              rsi, [rbp + 960]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n946_disjunction_β
                                                                                        jmp   n952_lit_string_α
n948_call_builtin_icon_β:
                                                                                        jmp   n946_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n949_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx1070_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n953_lit_string_α
n949_lit_string_β:
                                                                                        jmp   n946_disjunction_af
.Lx1070_0:
                        .quad            .Lx1070_0_s
.Lx1070_0_s:
                        .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n950_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n946_disjunction_as
n950_lit_string_β:
                                                                                        jmp   n946_disjunction_af
.Lx1071_0:
                        .quad            .Lx1071_0_s
.Lx1071_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n951_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn1073:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1073]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n946_disjunction_af
                                                                                        jmp   n946_disjunction_as
n951_call_builtin_icon_β:
                                                                                        jmp   n946_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n952_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx1074_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n954_disjunction_α
.Lx1074_0:
                        .quad            .Lx1074_0_s
.Lx1074_0_s:
                        .string          "every i := 1 to 9 do write(integer(repl(\"2\",i))) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n953_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx1075_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n955_binop_test_α
.Lx1075_0:
                        .quad            .Lx1075_0_s
.Lx1075_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n954_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n957_lit_integer_α
n954_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx1077_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n956_call_builtin_icon_α
.Lx1077_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1077_1
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n956_call_builtin_icon_α
.Lx1077_1:
                                                                                        jmp   n956_call_builtin_icon_α
n954_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n954_disjunction_af
                                                                                        jmp   n954_disjunction_af
n954_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n958_lit_string_α
                                                                                        jmp   n960_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n955_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1136]
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n946_disjunction_af
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n951_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n956_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1080:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1080]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n954_disjunction_β
                                                                                        jmp   n960_lit_string_α
n956_call_builtin_icon_β:
                                                                                        jmp   n954_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n957_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n961_lit_integer_α
n957_lit_integer_β:
                                                                                        jmp   n954_disjunction_af
.Lx1081_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n958_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx1082_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n954_disjunction_as
n958_lit_string_β:
                                                                                        jmp   n954_disjunction_af
.Lx1082_0:
                        .quad            .Lx1082_0_s
.Lx1082_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n959_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1084:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1084]
                        lea              rsi, [rbp + 608]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n954_disjunction_af
                                                                                        jmp   n954_disjunction_as
n959_call_builtin_icon_β:
                                                                                        jmp   n954_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n960_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx1085_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n962_disjunction_α
.Lx1085_0:
                        .quad            .Lx1085_0_s
.Lx1085_0_s:
                        .string          "every i := 1 to 9 do write(repl(\"2\",i) + 1) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n961_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx1086_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n963_to_α
.Lx1086_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n962_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n965_lit_integer_α
n962_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1088_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n964_call_builtin_icon_α
.Lx1088_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1088_1
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n964_call_builtin_icon_α
.Lx1088_1:
                                                                                        jmp   n964_call_builtin_icon_α
n962_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n962_disjunction_af
                                                                                        jmp   n962_disjunction_af
n962_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n966_lit_string_α
                                                                                        jmp   proc_p5_ω
#-----------------------------------------------------------------------------------------------------------------------
n963_to_α:
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 656], 6
                        mov              qword ptr [rbp + 664], rax
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 672], 6
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 640], rax
.Lx1090_0:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 680]
                        cmp              rax, rcx
                                                                                        jg    n954_disjunction_af
                        mov              qword ptr [rbp + 624], 6
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n968_assign_α
n963_to_β:
                        inc              qword ptr [rbp + 640]
                                                                                        jmp   .Lx1090_0
#-----------------------------------------------------------------------------------------------------------------------
n964_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1092:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1092]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n962_disjunction_β
                                                                                        jmp   proc_p5_ω
n964_call_builtin_icon_β:
                                                                                        jmp   n962_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n965_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1093_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n969_lit_integer_α
n965_lit_integer_β:
                                                                                        jmp   n962_disjunction_af
.Lx1093_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n966_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx1094_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n962_disjunction_as
n966_lit_string_β:
                                                                                        jmp   n962_disjunction_af
.Lx1094_0:
                        .quad            .Lx1094_0_s
.Lx1094_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n967_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1096:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1096]
                        lea              rsi, [rbp + 128]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n962_disjunction_af
                                                                                        jmp   n962_disjunction_as
n967_call_builtin_icon_β:
                                                                                        jmp   n962_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n968_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n970_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n969_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx1098_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n971_to_α
.Lx1098_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n970_bound_α:
                        mov              qword ptr [rbp + 688], rsp
                                                                                        jmp   n972_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n971_to_α:
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
.Lx1102_0:
                        mov              rax, qword ptr [rbp + 176]
                        mov              rcx, qword ptr [rbp + 216]
                        cmp              rax, rcx
                                                                                        jg    n962_disjunction_af
                        mov              qword ptr [rbp + 160], 6
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n973_assign_α
n971_to_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx1102_0
#-----------------------------------------------------------------------------------------------------------------------
n972_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n974_var_α
.Lx1103_0:
                        .quad            .Lx1103_0_s
.Lx1103_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n973_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n975_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n974_var_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n976_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n975_bound_α:
                        mov              qword ptr [rbp + 224], rsp
                                                                                        jmp   n978_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n976_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn1110:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1110]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n977_unmark_α
                                                                                        jmp   n979_call_builtin_icon_α
n976_call_builtin_icon_β:
                                                                                        jmp   n977_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n977_unmark_α:
                        mov              rsp, qword ptr [rbp + 688]
                                                                                        jmp   n963_to_β
#-----------------------------------------------------------------------------------------------------------------------
n978_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx1113_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n980_var_α
.Lx1113_0:
                        .quad            .Lx1113_0_s
.Lx1113_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n979_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn1115:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1115]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n977_unmark_α
                                                                                        jmp   n981_call_builtin_icon_α
n979_call_builtin_icon_β:
                                                                                        jmp   n977_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n980_var_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n982_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n981_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn1119:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1119]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n977_unmark_α
                                                                                        jmp   n977_unmark_α
n981_call_builtin_icon_β:
                                                                                        jmp   n977_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n982_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn1121:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1121]
                        lea              rsi, [rbp + 368]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n983_unmark_α
                                                                                        jmp   n984_lit_integer_α
n982_call_builtin_icon_β:
                                                                                        jmp   n983_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n983_unmark_α:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n971_to_β
#-----------------------------------------------------------------------------------------------------------------------
n984_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx1124_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n985_op75_α
.Lx1124_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n985_op75_α:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 7
                                                                                        je    .Lx1126_1
                        cmp              eax, 6
                                                                                        jne   .Lx1126_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx1126_0
.Lx1126_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n986_binop_α
.Lx1126_0:
                        lea              rdi, [rbp + 352]
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 336]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n986_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n986_binop_α:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 6
                                                                                        jne   .Lx1127_0
                        mov              rax, qword ptr [rbp + 344]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 320], 6
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n987_call_builtin_icon_α
.Lx1127_0:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n983_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n987_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n987_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn1129:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1129]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n983_unmark_α
                                                                                        jmp   n983_unmark_α
n987_call_builtin_icon_β:
                                                                                        jmp   n983_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_β:
                                                                                        jmp   proc_p5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2760]
                        lea              rsp, [rbp + 2784]
                        mov              rbp, [rbp + 2776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_ω:
                        mov              rax, [rbp + 2768]
                        lea              rsp, [rbp + 2784]
                        mov              rbp, [rbp + 2776]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p5_dcα:
                        pop              r11
                        sub              rsp, 2800
                        mov              qword ptr [rsp + 2776], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2752], r11
                        lea              rax, [rip + .Lx1130_2]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rax, [rip + .Lx1130_3]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rdi, rbp
                        mov              esi, 2736
                        mov              edx, 2752
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p5_α_body
.Lx1130_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1130_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2784
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p6_α
proc_p6_α:
                        .global          proc_p6_α
                        .global          proc_p6_β
                        .global          proc_p6_γ
                        .global          proc_p6_ω
                        sub              rsp, 2640
                        mov              [rsp + 2616], rcx
                        mov              [rsp + 2624], rdx
                        mov              [rsp + 2632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2560
                        mov              edx, 2608
                        call             rt_jmp_frame_lexprep2@PLT
proc_p6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1131_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx1224_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n1132_disjunction_α
.Lx1224_0:
                        .quad            .Lx1224_0_s
.Lx1224_0_s:
                        .string          "every i := 1 to 30 do write(integer(repl(\"0\",i) || \"2\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1132_disjunction_α:
                        mov              qword ptr [rbp + 2144], 0
                        mov              qword ptr [rbp + 2152], 0
                        mov              dword ptr [rbp + 2160], 0
                                                                                        jmp   n1134_lit_integer_α
n1132_disjunction_as:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 0
                                                                                        jne   .Lx1226_0
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n1133_call_builtin_icon_α
.Lx1226_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1226_1
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n1133_call_builtin_icon_α
.Lx1226_1:
                                                                                        jmp   n1133_call_builtin_icon_α
n1132_disjunction_β:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 0
                                                                                        je    n1132_disjunction_af
                                                                                        jmp   n1132_disjunction_af
n1132_disjunction_af:
                        add              dword ptr [rbp + 2160], 1
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 1
                                                                                        je    n1135_lit_string_α
                                                                                        jmp   n1137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1133_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn1228:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1228]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n1132_disjunction_β
                                                                                        jmp   n1137_lit_string_α
n1133_call_builtin_icon_β:
                                                                                        jmp   n1132_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1134_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx1229_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n1138_lit_integer_α
n1134_lit_integer_β:
                                                                                        jmp   n1132_disjunction_af
.Lx1229_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1135_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx1230_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n1132_disjunction_as
n1135_lit_string_β:
                                                                                        jmp   n1132_disjunction_af
.Lx1230_0:
                        .quad            .Lx1230_0_s
.Lx1230_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1136_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1232:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1232]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n1132_disjunction_af
                                                                                        jmp   n1132_disjunction_as
n1136_call_builtin_icon_β:
                                                                                        jmp   n1132_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1137_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx1233_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n1139_disjunction_α
.Lx1233_0:
                        .quad            .Lx1233_0_s
.Lx1233_0_s:
                        .string          "every i := 1 to 30 do write((repl(\"0\",i) || \"2\") + 1) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1138_lit_integer_α:
                        mov              qword ptr [rbp + 2256], 6
                        mov              rax, qword ptr [rip + .Lx1234_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n1140_to_α
.Lx1234_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1139_disjunction_α:
                        mov              qword ptr [rbp + 1632], 0
                        mov              qword ptr [rbp + 1640], 0
                        mov              dword ptr [rbp + 1648], 0
                                                                                        jmp   n1142_lit_integer_α
n1139_disjunction_as:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0
                                                                                        jne   .Lx1236_0
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1141_call_builtin_icon_α
.Lx1236_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1236_1
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n1141_call_builtin_icon_α
.Lx1236_1:
                                                                                        jmp   n1141_call_builtin_icon_α
n1139_disjunction_β:
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 0
                                                                                        je    n1139_disjunction_af
                                                                                        jmp   n1139_disjunction_af
n1139_disjunction_af:
                        add              dword ptr [rbp + 1648], 1
                        mov              eax, dword ptr [rbp + 1648]
                        cmp              eax, 1
                                                                                        je    n1143_lit_string_α
                                                                                        jmp   n1146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1140_to_α:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2240], 6
                        mov              qword ptr [rbp + 2248], rax
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2256], 6
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2224], rax
.Lx1238_0:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rcx, qword ptr [rbp + 2264]
                        cmp              rax, rcx
                                                                                        jg    n1132_disjunction_af
                        mov              qword ptr [rbp + 2208], 6
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n1145_assign_α
n1140_to_β:
                        inc              qword ptr [rbp + 2224]
                                                                                        jmp   .Lx1238_0
#-----------------------------------------------------------------------------------------------------------------------
n1141_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn1240:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1240]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n1139_disjunction_β
                                                                                        jmp   n1146_lit_string_α
n1141_call_builtin_icon_β:
                                                                                        jmp   n1139_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1142_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx1241_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n1147_lit_integer_α
n1142_lit_integer_β:
                                                                                        jmp   n1139_disjunction_af
.Lx1241_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1143_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx1242_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n1139_disjunction_as
n1143_lit_string_β:
                                                                                        jmp   n1139_disjunction_af
.Lx1242_0:
                        .quad            .Lx1242_0_s
.Lx1242_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1144_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1244:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1244]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n1139_disjunction_af
                                                                                        jmp   n1139_disjunction_as
n1144_call_builtin_icon_β:
                                                                                        jmp   n1139_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1145_assign_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n1148_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1146_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx1246_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n1149_disjunction_α
.Lx1246_0:
                        .quad            .Lx1246_0_s
.Lx1246_0_s:
                        .string          "c1 := 'abcde' ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1147_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx1247_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n1150_to_α
.Lx1247_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n1148_bound_α:
                        mov              qword ptr [rbp + 2272], rsp
                                                                                        jmp   n1151_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1149_disjunction_α:
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              dword ptr [rbp + 1440], 0
                                                                                        jmp   n1153_lit_charset_α
n1149_disjunction_as:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        jne   .Lx1251_0
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n1152_call_builtin_icon_α
.Lx1251_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1251_1
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n1152_call_builtin_icon_α
.Lx1251_1:
                                                                                        jmp   n1152_call_builtin_icon_α
n1149_disjunction_β:
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 0
                                                                                        je    n1149_disjunction_af
                                                                                        jmp   n1149_disjunction_af
n1149_disjunction_af:
                        add              dword ptr [rbp + 1440], 1
                        mov              eax, dword ptr [rbp + 1440]
                        cmp              eax, 1
                                                                                        je    n1154_lit_string_α
                                                                                        jmp   n1158_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1150_to_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1744], 6
                        mov              qword ptr [rbp + 1752], rax
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1760], 6
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1728], rax
.Lx1253_0:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1768]
                        cmp              rax, rcx
                                                                                        jg    n1139_disjunction_af
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n1156_assign_α
n1150_to_β:
                        inc              qword ptr [rbp + 1728]
                                                                                        jmp   .Lx1253_0
#-----------------------------------------------------------------------------------------------------------------------
n1151_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx1254_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n1157_var_α
.Lx1254_0:
                        .quad            .Lx1254_0_s
.Lx1254_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n1152_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn1256:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1256]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n1149_disjunction_β
                                                                                        jmp   n1158_lit_string_α
n1152_call_builtin_icon_β:
                                                                                        jmp   n1149_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1153_lit_charset_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              dword ptr [rbp + 1524], -1
                        mov              rax, qword ptr [rip + .Lx1257_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n1159_assign_α
n1153_lit_charset_β:
                                                                                        jmp   n1149_disjunction_af
.Lx1257_0:
                        .quad            .Lx1257_0_s
.Lx1257_0_s:
                        .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx1258_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n1149_disjunction_as
n1154_lit_string_β:
                                                                                        jmp   n1149_disjunction_af
.Lx1258_0:
                        .quad            .Lx1258_0_s
.Lx1258_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1155_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn1260:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1260]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n1149_disjunction_af
                                                                                        jmp   n1149_disjunction_as
n1155_call_builtin_icon_β:
                                                                                        jmp   n1149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1156_assign_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n1160_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n1157_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n1161_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1158_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx1264_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n1163_disjunction_α
.Lx1264_0:
                        .quad            .Lx1264_0_s
.Lx1264_0_s:
                        .string          "c2 := 'aeuoi' ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1159_assign_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n1155_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1160_bound_α:
                        mov              qword ptr [rbp + 1776], rsp
                                                                                        jmp   n1164_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1161_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn1269:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1269]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n1162_unmark_α
                                                                                        jmp   n1165_lit_string_α
n1161_call_builtin_icon_β:
                                                                                        jmp   n1162_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1162_unmark_α:
                        mov              rsp, qword ptr [rbp + 2272]
                                                                                        jmp   n1140_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1163_disjunction_α:
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1224], 0
                        mov              dword ptr [rbp + 1232], 0
                                                                                        jmp   n1167_lit_charset_α
n1163_disjunction_as:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 0
                                                                                        jne   .Lx1273_0
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n1166_call_builtin_icon_α
.Lx1273_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1273_1
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n1166_call_builtin_icon_α
.Lx1273_1:
                                                                                        jmp   n1166_call_builtin_icon_α
n1163_disjunction_β:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 0
                                                                                        je    n1163_disjunction_af
                                                                                        jmp   n1163_disjunction_af
n1163_disjunction_af:
                        add              dword ptr [rbp + 1232], 1
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 1
                                                                                        je    n1168_lit_string_α
                                                                                        jmp   n1172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1164_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx1274_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n1170_var_α
.Lx1274_0:
                        .quad            .Lx1274_0_s
.Lx1274_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n1165_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx1275_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n1171_binop_α
.Lx1275_0:
                        .quad            .Lx1275_0_s
.Lx1275_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n1166_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn1277:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1277]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n1163_disjunction_β
                                                                                        jmp   n1172_lit_string_α
n1166_call_builtin_icon_β:
                                                                                        jmp   n1163_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1167_lit_charset_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              dword ptr [rbp + 1316], -1
                        mov              rax, qword ptr [rip + .Lx1278_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n1173_assign_α
n1167_lit_charset_β:
                                                                                        jmp   n1163_disjunction_af
.Lx1278_0:
                        .quad            .Lx1278_0_s
.Lx1278_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n1168_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx1279_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n1163_disjunction_as
n1168_lit_string_β:
                                                                                        jmp   n1163_disjunction_af
.Lx1279_0:
                        .quad            .Lx1279_0_s
.Lx1279_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1169_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn1281:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1281]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n1163_disjunction_af
                                                                                        jmp   n1163_disjunction_as
n1169_call_builtin_icon_β:
                                                                                        jmp   n1163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1170_var_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n1174_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1171_binop_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2528]
                        mov              rcx, qword ptr [rbp + 2536]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n1176_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1172_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1285_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n1177_disjunction_α
.Lx1285_0:
                        .quad            .Lx1285_0_s
.Lx1285_0_s:
                        .string          "c1 ++ c2 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1173_assign_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n1169_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1174_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn1288:             .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1288]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n1175_unmark_α
                                                                                        jmp   n1178_lit_string_α
n1174_call_builtin_icon_β:
                                                                                        jmp   n1175_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1175_unmark_α:
                        mov              rsp, qword ptr [rbp + 1776]
                                                                                        jmp   n1150_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1176_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        .section         .rodata
.Lrkfn1292:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1292]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n1162_unmark_α
                                                                                        jmp   n1179_call_builtin_icon_α
n1176_call_builtin_icon_β:
                                                                                        jmp   n1162_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1177_disjunction_α:
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              dword ptr [rbp + 1008], 0
                                                                                        jmp   n1181_var_α
n1177_disjunction_as:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0
                                                                                        jne   .Lx1294_0
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n1180_call_builtin_icon_α
.Lx1294_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1294_1
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n1180_call_builtin_icon_α
.Lx1294_1:
                                                                                        jmp   n1180_call_builtin_icon_α
n1177_disjunction_β:
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0
                                                                                        je    n1177_disjunction_af
                                                                                        jmp   n1177_disjunction_af
n1177_disjunction_af:
                        add              dword ptr [rbp + 1008], 1
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 1
                                                                                        je    n1182_lit_string_α
                                                                                        jmp   n1185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1178_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx1295_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n1184_binop_α
.Lx1295_0:
                        .quad            .Lx1295_0_s
.Lx1295_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n1179_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn1297:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1297]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n1162_unmark_α
                                                                                        jmp   n1162_unmark_α
n1179_call_builtin_icon_β:
                                                                                        jmp   n1162_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1180_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn1299:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1299]
                        lea              rsi, [rbp + 928]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n1177_disjunction_β
                                                                                        jmp   n1185_lit_string_α
n1180_call_builtin_icon_β:
                                                                                        jmp   n1177_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1181_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n1186_var_α
n1181_var_β:
                                                                                        jmp   n1177_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1182_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx1302_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n1177_disjunction_as
n1182_lit_string_β:
                                                                                        jmp   n1177_disjunction_af
.Lx1302_0:
                        .quad            .Lx1302_0_s
.Lx1302_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn1304:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1304]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n1177_disjunction_af
                                                                                        jmp   n1177_disjunction_as
n1183_call_builtin_icon_β:
                                                                                        jmp   n1177_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1184_binop_α:
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 2016]
                        mov              rcx, qword ptr [rbp + 2024]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n1187_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1185_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx1306_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n1188_disjunction_α
.Lx1306_0:
                        .quad            .Lx1306_0_s
.Lx1306_0_s:
                        .string          "c1 -- c2 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1186_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1189_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1187_lit_integer_α:
                        mov              qword ptr [rbp + 2032], 6
                        mov              rax, qword ptr [rip + .Lx1309_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n1190_op75_α
.Lx1309_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1188_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n1192_var_α
n1188_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx1311_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1191_call_builtin_icon_α
.Lx1311_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1311_1
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n1191_call_builtin_icon_α
.Lx1311_1:
                                                                                        jmp   n1191_call_builtin_icon_α
n1188_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n1188_disjunction_af
                                                                                        jmp   n1188_disjunction_af
n1188_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n1193_lit_string_α
                                                                                        jmp   n1196_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1189_binop_α:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n1177_disjunction_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n1183_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1190_op75_α:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 7
                                                                                        je    .Lx1314_1
                        cmp              eax, 6
                                                                                        jne   .Lx1314_0
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 6
                                                                                        jne   .Lx1314_0
.Lx1314_1:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n1195_binop_α
.Lx1314_0:
                        lea              rdi, [rbp + 1904]
                        lea              rsi, [rbp + 2032]
                        lea              rdx, [rbp + 1888]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n1195_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1191_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn1316:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1316]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n1188_disjunction_β
                                                                                        jmp   n1196_lit_string_α
n1191_call_builtin_icon_β:
                                                                                        jmp   n1188_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1192_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n1197_var_α
n1192_var_β:
                                                                                        jmp   n1188_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1193_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx1319_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n1188_disjunction_as
n1193_lit_string_β:
                                                                                        jmp   n1188_disjunction_af
.Lx1319_0:
                        .quad            .Lx1319_0_s
.Lx1319_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1194_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn1321:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1321]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n1188_disjunction_af
                                                                                        jmp   n1188_disjunction_as
n1194_call_builtin_icon_β:
                                                                                        jmp   n1188_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1195_binop_α:
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 6
                                                                                        jne   .Lx1322_0
                        mov              rax, qword ptr [rbp + 1896]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1872], 6
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n1198_call_builtin_icon_α
.Lx1322_0:
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n1175_unmark_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n1198_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1196_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx1323_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1199_disjunction_α
.Lx1323_0:
                        .quad            .Lx1323_0_s
.Lx1323_0_s:
                        .string          "c1 ** c2 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1197_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n1200_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1198_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn1327:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1327]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n1175_unmark_α
                                                                                        jmp   n1175_unmark_α
n1198_call_builtin_icon_β:
                                                                                        jmp   n1175_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n1199_disjunction_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0
                                                                                        jmp   n1202_var_α
n1199_disjunction_as:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        jne   .Lx1329_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1201_call_builtin_icon_α
.Lx1329_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1329_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1201_call_builtin_icon_α
.Lx1329_1:
                                                                                        jmp   n1201_call_builtin_icon_α
n1199_disjunction_β:
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0
                                                                                        je    n1199_disjunction_af
                                                                                        jmp   n1199_disjunction_af
n1199_disjunction_af:
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1
                                                                                        je    n1203_lit_string_α
                                                                                        jmp   n1205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1200_binop_α:
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        call             rt_cdiff@PLT
                        cmp              eax, 99
                                                                                        je    n1188_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n1194_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1201_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn1332:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1332]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n1199_disjunction_β
                                                                                        jmp   n1205_lit_string_α
n1201_call_builtin_icon_β:
                                                                                        jmp   n1199_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1202_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1206_var_α
n1202_var_β:
                                                                                        jmp   n1199_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1203_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx1335_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n1199_disjunction_as
n1203_lit_string_β:
                                                                                        jmp   n1199_disjunction_af
.Lx1335_0:
                        .quad            .Lx1335_0_s
.Lx1335_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1204_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn1337:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1337]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n1199_disjunction_af
                                                                                        jmp   n1199_disjunction_as
n1204_call_builtin_icon_β:
                                                                                        jmp   n1199_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1205_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx1338_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n1207_disjunction_α
.Lx1338_0:
                        .quad            .Lx1338_0_s
.Lx1338_0_s:
                        .string          "2 ~=== +2 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1206_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1208_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1207_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n1210_lit_integer_α
n1207_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx1342_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1209_call_builtin_icon_α
.Lx1342_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1342_1
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1209_call_builtin_icon_α
.Lx1342_1:
                                                                                        jmp   n1209_call_builtin_icon_α
n1207_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n1207_disjunction_af
                                                                                        jmp   n1207_disjunction_af
n1207_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n1211_lit_string_α
                                                                                        jmp   n1213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1208_binop_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             rt_cinter@PLT
                        cmp              eax, 99
                                                                                        je    n1199_disjunction_af
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n1204_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1209_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn1345:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1345]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n1207_disjunction_β
                                                                                        jmp   n1213_lit_string_α
n1209_call_builtin_icon_β:
                                                                                        jmp   n1207_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1210_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx1346_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1214_lit_integer_α
n1210_lit_integer_β:
                                                                                        jmp   n1207_disjunction_af
.Lx1346_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1211_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx1347_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1207_disjunction_as
n1211_lit_string_β:
                                                                                        jmp   n1207_disjunction_af
.Lx1347_0:
                        .quad            .Lx1347_0_s
.Lx1347_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1212_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn1349:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1349]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n1207_disjunction_af
                                                                                        jmp   n1207_disjunction_as
n1212_call_builtin_icon_β:
                                                                                        jmp   n1207_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1213_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx1350_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1215_disjunction_α
.Lx1350_0:
                        .quad            .Lx1350_0_s
.Lx1350_0_s:
                        .string          "3 ~=== *\"abc\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1214_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx1351_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n1216_binop_test_α
.Lx1351_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1215_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n1218_lit_integer_α
n1215_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1353_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1217_call_builtin_icon_α
.Lx1353_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1353_1
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1217_call_builtin_icon_α
.Lx1353_1:
                                                                                        jmp   n1217_call_builtin_icon_α
n1215_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n1215_disjunction_af
                                                                                        jmp   n1215_disjunction_af
n1215_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n1219_lit_string_α
                                                                                        jmp   proc_p6_ω
#-----------------------------------------------------------------------------------------------------------------------
n1216_binop_test_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1207_disjunction_af
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n1212_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1217_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1356:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1356]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n1215_disjunction_β
                                                                                        jmp   proc_p6_ω
n1217_call_builtin_icon_β:
                                                                                        jmp   n1215_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1218_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx1357_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1221_lit_string_α
n1218_lit_integer_β:
                                                                                        jmp   n1215_disjunction_af
.Lx1357_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n1219_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx1358_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1215_disjunction_as
n1219_lit_string_β:
                                                                                        jmp   n1215_disjunction_af
.Lx1358_0:
                        .quad            .Lx1358_0_s
.Lx1358_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1220_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1360:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1360]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1215_disjunction_af
                                                                                        jmp   n1215_disjunction_as
n1220_call_builtin_icon_β:
                                                                                        jmp   n1215_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1221_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1361_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1222_unop_α
.Lx1361_0:
                        .quad            .Lx1361_0_s
.Lx1361_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1222_unop_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n1223_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1223_binop_test_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1215_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1220_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_β:
                                                                                        jmp   proc_p6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2616]
                        lea              rsp, [rbp + 2640]
                        mov              rbp, [rbp + 2632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_ω:
                        mov              rax, [rbp + 2624]
                        lea              rsp, [rbp + 2640]
                        mov              rbp, [rbp + 2632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p6_dcα:
                        pop              r11
                        sub              rsp, 2656
                        mov              qword ptr [rsp + 2632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2608], r11
                        lea              rax, [rip + .Lx1364_2]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rax, [rip + .Lx1364_3]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rdi, rbp
                        mov              esi, 2560
                        mov              edx, 2608
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p6_α_body
.Lx1364_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1364_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p7_α
proc_p7_α:
                        .global          proc_p7_α
                        .global          proc_p7_β
                        .global          proc_p7_γ
                        .global          proc_p7_ω
                        sub              rsp, 3424
                        mov              [rsp + 3400], rcx
                        mov              [rsp + 3408], rdx
                        mov              [rsp + 3416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3392
                        mov              edx, 3392
                        call             rt_jmp_frame_lexprep2@PLT
proc_p7_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1365_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx1470_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n1366_disjunction_α
.Lx1470_0:
                        .quad            .Lx1470_0_s
.Lx1470_0_s:
                        .string          "'abc' ~=== ('abc' ++ '') ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1366_disjunction_α:
                        mov              qword ptr [rbp + 3216], 0
                        mov              qword ptr [rbp + 3224], 0
                        mov              dword ptr [rbp + 3232], 0
                                                                                        jmp   n1368_lit_charset_α
n1366_disjunction_as:
                        mov              eax, dword ptr [rbp + 3232]
                        cmp              eax, 0
                                                                                        jne   .Lx1472_0
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n1367_call_builtin_icon_α
.Lx1472_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1472_1
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n1367_call_builtin_icon_α
.Lx1472_1:
                                                                                        jmp   n1367_call_builtin_icon_α
n1366_disjunction_β:
                        mov              eax, dword ptr [rbp + 3232]
                        cmp              eax, 0
                                                                                        je    n1366_disjunction_af
                                                                                        jmp   n1366_disjunction_af
n1366_disjunction_af:
                        add              dword ptr [rbp + 3232], 1
                        mov              eax, dword ptr [rbp + 3232]
                        cmp              eax, 1
                                                                                        je    n1369_lit_string_α
                                                                                        jmp   n1371_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1367_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn1474:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1474]
                        lea              rsi, [rbp + 3152]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              eax, 99
                                                                                        je    n1366_disjunction_β
                                                                                        jmp   n1371_lit_string_α
n1367_call_builtin_icon_β:
                                                                                        jmp   n1366_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1368_lit_charset_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              dword ptr [rbp + 3316], -1
                        mov              rax, qword ptr [rip + .Lx1475_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n1372_lit_charset_α
n1368_lit_charset_β:
                                                                                        jmp   n1366_disjunction_af
.Lx1475_0:
                        .quad            .Lx1475_0_s
.Lx1475_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1369_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx1476_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n1366_disjunction_as
n1369_lit_string_β:
                                                                                        jmp   n1366_disjunction_af
.Lx1476_0:
                        .quad            .Lx1476_0_s
.Lx1476_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1370_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn1478:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1478]
                        lea              rsi, [rbp + 3264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 99
                                                                                        je    n1366_disjunction_af
                                                                                        jmp   n1366_disjunction_as
n1370_call_builtin_icon_β:
                                                                                        jmp   n1366_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1371_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx1479_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n1373_disjunction_α
.Lx1479_0:
                        .quad            .Lx1479_0_s
.Lx1479_0_s:
                        .string          "any('aeiou',&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1372_lit_charset_α:
                        mov              qword ptr [rbp + 3344], 1
                        mov              dword ptr [rbp + 3348], -1
                        mov              rax, qword ptr [rip + .Lx1480_0]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n1374_lit_charset_α
.Lx1480_0:
                        .quad            .Lx1480_0_s
.Lx1480_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1373_disjunction_α:
                        mov              qword ptr [rbp + 2944], 0
                        mov              qword ptr [rbp + 2952], 0
                        mov              dword ptr [rbp + 2960], 0
                                                                                        jmp   n1376_lit_charset_α
n1373_disjunction_as:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 0
                                                                                        jne   .Lx1482_0
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n1375_call_builtin_icon_α
.Lx1482_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1482_1
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n1375_call_builtin_icon_α
.Lx1482_1:
                                                                                        jmp   n1375_call_builtin_icon_α
n1373_disjunction_β:
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 0
                                                                                        je    n1373_disjunction_af
                                                                                        jmp   n1373_disjunction_af
n1373_disjunction_af:
                        add              dword ptr [rbp + 2960], 1
                        mov              eax, dword ptr [rbp + 2960]
                        cmp              eax, 1
                                                                                        je    n1377_lit_string_α
                                                                                        jmp   n1380_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1374_lit_charset_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              dword ptr [rbp + 3364], -1
                        mov              rax, qword ptr [rip + .Lx1483_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n1379_binop_α
.Lx1483_0:
                        .quad            .Lx1483_0_s
.Lx1483_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n1375_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        .section         .rodata
.Lrkfn1485:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1485]
                        lea              rsi, [rbp + 2880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n1373_disjunction_β
                                                                                        jmp   n1380_lit_string_α
n1375_call_builtin_icon_β:
                                                                                        jmp   n1373_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1376_lit_charset_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              dword ptr [rbp + 3092], -1
                        mov              rax, qword ptr [rip + .Lx1486_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n1381_lit_charset_α
n1376_lit_charset_β:
                                                                                        jmp   n1373_disjunction_af
.Lx1486_0:
                        .quad            .Lx1486_0_s
.Lx1486_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n1377_lit_string_α:
                        mov              qword ptr [rbp + 3120], 1
                        mov              rax, qword ptr [rip + .Lx1487_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n1373_disjunction_as
n1377_lit_string_β:
                                                                                        jmp   n1373_disjunction_af
.Lx1487_0:
                        .quad            .Lx1487_0_s
.Lx1487_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1378_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn1489:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1489]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n1373_disjunction_af
                                                                                        jmp   n1373_disjunction_as
n1378_call_builtin_icon_β:
                                                                                        jmp   n1373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1379_binop_α:
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        mov              rdx, qword ptr [rbp + 3360]
                        mov              rcx, qword ptr [rbp + 3368]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n1366_disjunction_af
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n1382_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n1380_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx1491_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n1383_disjunction_α
.Lx1491_0:
                        .quad            .Lx1491_0_s
.Lx1491_0_s:
                        .string          "any('aeiou',&ucase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1381_lit_charset_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              dword ptr [rbp + 3108], -1
                        mov              rax, qword ptr [rip + .Lx1492_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n1384_call_builtin_icon_α
.Lx1492_0:
                        .quad            .Lx1492_0_s
.Lx1492_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1382_binop_test_α:
                        mov              rdi, qword ptr [rbp + 3312]
                        mov              rsi, qword ptr [rbp + 3320]
                        mov              rdx, qword ptr [rbp + 3328]
                        mov              rcx, qword ptr [rbp + 3336]
                        mov              r8d, 23
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n1366_disjunction_af
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n1370_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1383_disjunction_α:
                        mov              qword ptr [rbp + 2672], 0
                        mov              qword ptr [rbp + 2680], 0
                        mov              dword ptr [rbp + 2688], 0
                                                                                        jmp   n1386_lit_charset_α
n1383_disjunction_as:
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 0
                                                                                        jne   .Lx1495_0
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n1385_call_builtin_icon_α
.Lx1495_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1495_1
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n1385_call_builtin_icon_α
.Lx1495_1:
                                                                                        jmp   n1385_call_builtin_icon_α
n1383_disjunction_β:
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 0
                                                                                        je    n1383_disjunction_af
                                                                                        jmp   n1383_disjunction_af
n1383_disjunction_af:
                        add              dword ptr [rbp + 2688], 1
                        mov              eax, dword ptr [rbp + 2688]
                        cmp              eax, 1
                                                                                        je    n1387_lit_string_α
                                                                                        jmp   n1389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn583:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn583]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1373_disjunction_af
                                                                                        jmp   n1378_call_builtin_icon_α
n1384_call_builtin_icon_β:
                                                                                        jmp   n1373_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1385_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2632], rax
                        .section         .rodata
.Lrkfn1498:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1498]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n1383_disjunction_β
                                                                                        jmp   n1389_lit_string_α
n1385_call_builtin_icon_β:
                                                                                        jmp   n1383_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1386_lit_charset_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              dword ptr [rbp + 2820], -1
                        mov              rax, qword ptr [rip + .Lx1499_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n1390_lit_charset_α
n1386_lit_charset_β:
                                                                                        jmp   n1383_disjunction_af
.Lx1499_0:
                        .quad            .Lx1499_0_s
.Lx1499_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n1387_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx1500_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n1383_disjunction_as
n1387_lit_string_β:
                                                                                        jmp   n1383_disjunction_af
.Lx1500_0:
                        .quad            .Lx1500_0_s
.Lx1500_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1388_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn1502:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1502]
                        lea              rsi, [rbp + 2720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n1383_disjunction_af
                                                                                        jmp   n1383_disjunction_as
n1388_call_builtin_icon_β:
                                                                                        jmp   n1383_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1389_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx1503_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n1391_disjunction_α
.Lx1503_0:
                        .quad            .Lx1503_0_s
.Lx1503_0_s:
                        .string          "every write(any('aeiou',&lcase,1 to 15,10 to 20)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1390_lit_charset_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              dword ptr [rbp + 2836], -1
                        mov              rax, qword ptr [rip + .Lx1504_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n1392_call_builtin_icon_α
.Lx1504_0:
                        .quad            .Lx1504_0_s
.Lx1504_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n1391_disjunction_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                        mov              dword ptr [rbp + 2224], 0
                                                                                        jmp   n1394_lit_charset_α
n1391_disjunction_as:
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 0
                                                                                        jne   .Lx1506_0
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n1393_call_builtin_icon_α
.Lx1506_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1506_1
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n1393_call_builtin_icon_α
.Lx1506_1:
                                                                                        jmp   n1393_call_builtin_icon_α
n1391_disjunction_β:
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 0
                                                                                        je    n1391_disjunction_af
                                                                                        jmp   n1391_disjunction_af
n1391_disjunction_af:
                        add              dword ptr [rbp + 2224], 1
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 1
                                                                                        je    n1395_lit_string_α
                                                                                        jmp   n1397_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1392_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn591:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn591]
                        lea              rsi, [rbp + 2768]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1383_disjunction_af
                                                                                        jmp   n1388_call_builtin_icon_α
n1392_call_builtin_icon_β:
                                                                                        jmp   n1383_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1393_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn1509:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1509]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n1391_disjunction_β
                                                                                        jmp   n1397_lit_string_α
n1393_call_builtin_icon_β:
                                                                                        jmp   n1391_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1394_lit_charset_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              dword ptr [rbp + 2420], -1
                        mov              rax, qword ptr [rip + .Lx1510_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n1398_lit_charset_α
n1394_lit_charset_β:
                                                                                        jmp   n1391_disjunction_af
.Lx1510_0:
                        .quad            .Lx1510_0_s
.Lx1510_0_s:
                        .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n1395_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx1511_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n1391_disjunction_as
n1395_lit_string_β:
                                                                                        jmp   n1391_disjunction_af
.Lx1511_0:
                        .quad            .Lx1511_0_s
.Lx1511_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1396_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1513:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1513]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n1391_disjunction_af
                                                                                        jmp   n1391_disjunction_as
n1396_call_builtin_icon_β:
                                                                                        jmp   n1391_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1397_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx1514_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n1399_disjunction_α
.Lx1514_0:
                        .quad            .Lx1514_0_s
.Lx1514_0_s:
                        .string          "match(\"abc\",\"abcabcabcabc\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1398_lit_charset_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              dword ptr [rbp + 2436], -1
                        mov              rax, qword ptr [rip + .Lx1515_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n1400_lit_integer_α
.Lx1515_0:
                        .quad            .Lx1515_0_s
.Lx1515_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1399_disjunction_α:
                        mov              qword ptr [rbp + 1936], 0
                        mov              qword ptr [rbp + 1944], 0
                        mov              dword ptr [rbp + 1952], 0
                                                                                        jmp   n1402_lit_string_α
n1399_disjunction_as:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 0
                                                                                        jne   .Lx1517_0
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n1401_call_builtin_icon_α
.Lx1517_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1517_1
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n1401_call_builtin_icon_α
.Lx1517_1:
                                                                                        jmp   n1401_call_builtin_icon_α
n1399_disjunction_β:
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 0
                                                                                        je    n1399_disjunction_af
                                                                                        jmp   n1399_disjunction_af
n1399_disjunction_af:
                        add              dword ptr [rbp + 1952], 1
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              eax, 1
                                                                                        je    n1403_lit_string_α
                                                                                        jmp   n1406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1400_lit_integer_α:
                        mov              qword ptr [rbp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx1518_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n1405_lit_integer_α
.Lx1518_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1401_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn1520:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1520]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n1399_disjunction_β
                                                                                        jmp   n1406_lit_string_α
n1401_call_builtin_icon_β:
                                                                                        jmp   n1399_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1402_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx1521_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n1407_lit_string_α
n1402_lit_string_β:
                                                                                        jmp   n1399_disjunction_af
.Lx1521_0:
                        .quad            .Lx1521_0_s
.Lx1521_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1403_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx1522_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n1399_disjunction_as
n1403_lit_string_β:
                                                                                        jmp   n1399_disjunction_af
.Lx1522_0:
                        .quad            .Lx1522_0_s
.Lx1522_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1404_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lrkfn1524:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1524]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n1399_disjunction_af
                                                                                        jmp   n1399_disjunction_as
n1404_call_builtin_icon_β:
                                                                                        jmp   n1399_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1405_lit_integer_α:
                        mov              qword ptr [rbp + 2496], 6
                        mov              rax, qword ptr [rip + .Lx1525_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n1408_to_α
.Lx1525_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n1406_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx1526_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n1409_disjunction_α
.Lx1526_0:
                        .quad            .Lx1526_0_s
.Lx1526_0_s:
                        .string          "match(\"abc\",\"xabcabcabcabc\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1407_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx1527_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n1410_call_α
.Lx1527_0:
                        .quad            .Lx1527_0_s
.Lx1527_0_s:
                        .string          "abcabcabcabc"
#-----------------------------------------------------------------------------------------------------------------------
n1408_to_α:
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2480], 6
                        mov              qword ptr [rbp + 2488], rax
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2496], 6
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2464], rax
.Lx1529_0:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rcx, qword ptr [rbp + 2504]
                        cmp              rax, rcx
                                                                                        jg    n1391_disjunction_af
                        mov              qword ptr [rbp + 2448], 6
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n1411_lit_integer_α
n1408_to_β:
                        inc              qword ptr [rbp + 2464]
                                                                                        jmp   .Lx1529_0
#-----------------------------------------------------------------------------------------------------------------------
n1409_disjunction_α:
                        mov              qword ptr [rbp + 1664], 0
                        mov              qword ptr [rbp + 1672], 0
                        mov              dword ptr [rbp + 1680], 0
                                                                                        jmp   n1413_lit_string_α
n1409_disjunction_as:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        jne   .Lx1531_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n1412_call_builtin_icon_α
.Lx1531_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1531_1
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n1412_call_builtin_icon_α
.Lx1531_1:
                                                                                        jmp   n1412_call_builtin_icon_α
n1409_disjunction_β:
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 0
                                                                                        je    n1409_disjunction_af
                                                                                        jmp   n1409_disjunction_af
n1409_disjunction_af:
                        add              dword ptr [rbp + 1680], 1
                        mov              eax, dword ptr [rbp + 1680]
                        cmp              eax, 1
                                                                                        je    n1414_lit_string_α
                                                                                        jmp   n1417_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1410_call_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn609:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn609]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 2
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
                                                                                        je    n1399_disjunction_af
                                                                                        jmp   n1404_call_builtin_icon_α
n1410_call_β:
                                                                                        jmp   n1399_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1411_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx1533_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n1416_lit_integer_α
.Lx1533_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1412_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn1535:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1535]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n1409_disjunction_β
                                                                                        jmp   n1417_lit_string_α
n1412_call_builtin_icon_β:
                                                                                        jmp   n1409_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1413_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx1536_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n1418_lit_string_α
n1413_lit_string_β:
                                                                                        jmp   n1409_disjunction_af
.Lx1536_0:
                        .quad            .Lx1536_0_s
.Lx1536_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1414_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx1537_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n1409_disjunction_as
n1414_lit_string_β:
                                                                                        jmp   n1409_disjunction_af
.Lx1537_0:
                        .quad            .Lx1537_0_s
.Lx1537_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1415_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn1539:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1539]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n1409_disjunction_af
                                                                                        jmp   n1409_disjunction_as
n1415_call_builtin_icon_β:
                                                                                        jmp   n1409_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1416_lit_integer_α:
                        mov              qword ptr [rbp + 2560], 6
                        mov              rax, qword ptr [rip + .Lx1540_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n1419_to_α
.Lx1540_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n1417_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx1541_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n1420_disjunction_α
.Lx1541_0:
                        .quad            .Lx1541_0_s
.Lx1541_0_s:
                        .string          "every write(match(\"abc\",\"xabcabcabcabc\",1 to 10,1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1418_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx1542_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n1421_call_α
.Lx1542_0:
                        .quad            .Lx1542_0_s
.Lx1542_0_s:
                        .string          "xabcabcabcabc"
#-----------------------------------------------------------------------------------------------------------------------
n1419_to_α:
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2544], 6
                        mov              qword ptr [rbp + 2552], rax
                        mov              rdi, qword ptr [rbp + 2560]
                        mov              rsi, qword ptr [rbp + 2568]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 2560], 6
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2528], rax
.Lx1544_0:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rcx, qword ptr [rbp + 2568]
                        cmp              rax, rcx
                                                                                        jg    n1408_to_β
                        mov              qword ptr [rbp + 2512], 6
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n1422_call_builtin_icon_α
n1419_to_β:
                        inc              qword ptr [rbp + 2528]
                                                                                        jmp   .Lx1544_0
#-----------------------------------------------------------------------------------------------------------------------
n1420_disjunction_α:
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              dword ptr [rbp + 1216], 0
                                                                                        jmp   n1424_lit_string_α
n1420_disjunction_as:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        jne   .Lx1546_0
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n1423_call_builtin_icon_α
.Lx1546_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1546_1
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n1423_call_builtin_icon_α
.Lx1546_1:
                                                                                        jmp   n1423_call_builtin_icon_α
n1420_disjunction_β:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        je    n1420_disjunction_af
                                                                                        jmp   n1420_disjunction_af
n1420_disjunction_af:
                        add              dword ptr [rbp + 1216], 1
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 1
                                                                                        je    n1425_lit_string_α
                                                                                        jmp   n1428_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1421_call_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn620:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn620]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1409_disjunction_af
                                                                                        jmp   n1415_call_builtin_icon_α
n1421_call_β:
                                                                                        jmp   n1409_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1422_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn621:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn621]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1419_to_β
                                                                                        jmp   n1427_call_builtin_icon_α
n1422_call_builtin_icon_β:
                                                                                        jmp   n1419_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1423_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn1550:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1550]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n1420_disjunction_β
                                                                                        jmp   n1428_lit_string_α
n1423_call_builtin_icon_β:
                                                                                        jmp   n1420_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1424_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx1551_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n1429_lit_string_α
n1424_lit_string_β:
                                                                                        jmp   n1420_disjunction_af
.Lx1551_0:
                        .quad            .Lx1551_0_s
.Lx1551_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n1425_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx1552_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n1420_disjunction_as
n1425_lit_string_β:
                                                                                        jmp   n1420_disjunction_af
.Lx1552_0:
                        .quad            .Lx1552_0_s
.Lx1552_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1426_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1554:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1554]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n1420_disjunction_af
                                                                                        jmp   n1420_disjunction_as
n1426_call_builtin_icon_β:
                                                                                        jmp   n1420_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1427_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2296], rax
                        .section         .rodata
.Lrkfn1556:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1556]
                        lea              rsi, [rbp + 2288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n1419_to_β
                                                                                        jmp   n1419_to_β
n1427_call_builtin_icon_β:
                                                                                        jmp   n1419_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1428_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx1557_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n1430_disjunction_α
.Lx1557_0:
                        .quad            .Lx1557_0_s
.Lx1557_0_s:
                        .string          "upto('56d&',&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1429_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx1558_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n1431_lit_integer_α
.Lx1558_0:
                        .quad            .Lx1558_0_s
.Lx1558_0_s:
                        .string          "xabcabcabcabc"
#-----------------------------------------------------------------------------------------------------------------------
n1430_disjunction_α:
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0
                                                                                        jmp   n1433_lit_charset_α
n1430_disjunction_as:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        jne   .Lx1560_0
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n1432_call_builtin_icon_α
.Lx1560_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1560_1
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n1432_call_builtin_icon_α
.Lx1560_1:
                                                                                        jmp   n1432_call_builtin_icon_α
n1430_disjunction_β:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        je    n1434_call_builtin_gen_β
                                                                                        jmp   n1430_disjunction_af
n1430_disjunction_af:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1
                                                                                        je    n1435_lit_string_α
                                                                                        jmp   n1438_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1431_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx1561_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n1437_lit_integer_α
.Lx1561_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1432_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn1563:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1563]
                        lea              rsi, [rbp + 864]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n1430_disjunction_β
                                                                                        jmp   n1438_lit_string_α
n1432_call_builtin_icon_β:
                                                                                        jmp   n1430_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1433_lit_charset_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], -1
                        mov              rax, qword ptr [rip + .Lx1564_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n1439_lit_charset_α
n1433_lit_charset_β:
                                                                                        jmp   n1430_disjunction_af
.Lx1564_0:
                        .quad            .Lx1564_0_s
.Lx1564_0_s:
                        .string          "&56d"
#-----------------------------------------------------------------------------------------------------------------------
n1434_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              qword ptr [rbp + 1056], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx1565_60:
                        .section         .rodata
.Lbynamegenfn633:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn633]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 2
                        lea              rcx, [rbp + 1056]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n1430_disjunction_af
                                                                                        jmp   n1436_call_builtin_icon_α
n1434_call_builtin_gen_β:
                                                                                        jmp   .Lx1565_60
#-----------------------------------------------------------------------------------------------------------------------
n1435_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx1566_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n1430_disjunction_as
n1435_lit_string_β:
                                                                                        jmp   n1430_disjunction_af
.Lx1566_0:
                        .quad            .Lx1566_0_s
.Lx1566_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1436_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn1568:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1568]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n1434_call_builtin_gen_β
                                                                                        jmp   n1430_disjunction_as
n1436_call_builtin_icon_β:
                                                                                        jmp   n1434_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n1437_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx1569_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n1440_to_α
.Lx1569_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1438_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx1570_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1441_disjunction_α
.Lx1570_0:
                        .quad            .Lx1570_0_s
.Lx1570_0_s:
                        .string          "upto('56d&',&ucase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1439_lit_charset_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              dword ptr [rbp + 1092], -1
                        mov              rax, qword ptr [rip + .Lx1571_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n1434_call_builtin_gen_α
.Lx1571_0:
                        .quad            .Lx1571_0_s
.Lx1571_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1440_to_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1472], 6
                        mov              qword ptr [rbp + 1480], rax
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1488], 6
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1456], rax
.Lx1573_0:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1496]
                        cmp              rax, rcx
                                                                                        jg    n1420_disjunction_af
                        mov              qword ptr [rbp + 1440], 6
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n1442_lit_integer_α
n1440_to_β:
                        inc              qword ptr [rbp + 1456]
                                                                                        jmp   .Lx1573_0
#-----------------------------------------------------------------------------------------------------------------------
n1441_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n1444_lit_charset_α
n1441_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx1575_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1443_call_builtin_icon_α
.Lx1575_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1575_1
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1443_call_builtin_icon_α
.Lx1575_1:
                                                                                        jmp   n1443_call_builtin_icon_α
n1441_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n1445_call_builtin_gen_β
                                                                                        jmp   n1441_disjunction_af
n1441_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n1446_lit_string_α
                                                                                        jmp   n1449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1442_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx1576_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n1448_lit_integer_α
.Lx1576_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1443_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn1578:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1578]
                        lea              rsi, [rbp + 592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n1441_disjunction_β
                                                                                        jmp   n1449_lit_string_α
n1443_call_builtin_icon_β:
                                                                                        jmp   n1441_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1444_lit_charset_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              dword ptr [rbp + 804], -1
                        mov              rax, qword ptr [rip + .Lx1579_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1450_lit_charset_α
n1444_lit_charset_β:
                                                                                        jmp   n1441_disjunction_af
.Lx1579_0:
                        .quad            .Lx1579_0_s
.Lx1579_0_s:
                        .string          "&56d"
#-----------------------------------------------------------------------------------------------------------------------
n1445_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              qword ptr [rbp + 784], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx1580_60:
                        .section         .rodata
.Lbynamegenfn644:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn644]
                        lea              rsi, [rbp + 752]
                        mov              edx, 2
                        lea              rcx, [rbp + 784]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n1441_disjunction_af
                                                                                        jmp   n1447_call_builtin_icon_α
n1445_call_builtin_gen_β:
                                                                                        jmp   .Lx1580_60
#-----------------------------------------------------------------------------------------------------------------------
n1446_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx1581_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n1441_disjunction_as
n1446_lit_string_β:
                                                                                        jmp   n1441_disjunction_af
.Lx1581_0:
                        .quad            .Lx1581_0_s
.Lx1581_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1447_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn1583:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1583]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n1445_call_builtin_gen_β
                                                                                        jmp   n1441_disjunction_as
n1447_call_builtin_icon_β:
                                                                                        jmp   n1445_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n1448_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx1584_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n1451_to_α
.Lx1584_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1449_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx1585_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n1452_disjunction_α
.Lx1585_0:
                        .quad            .Lx1585_0_s
.Lx1585_0_s:
                        .string          "upto('56d&',&lcase,15) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1450_lit_charset_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              dword ptr [rbp + 820], -1
                        mov              rax, qword ptr [rip + .Lx1586_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1445_call_builtin_gen_α
.Lx1586_0:
                        .quad            .Lx1586_0_s
.Lx1586_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n1451_to_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1536], 6
                        mov              qword ptr [rbp + 1544], rax
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1552], 6
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1520], rax
.Lx1588_0:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1560]
                        cmp              rax, rcx
                                                                                        jg    n1440_to_β
                        mov              qword ptr [rbp + 1504], 6
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n1453_call_α
n1451_to_β:
                        inc              qword ptr [rbp + 1520]
                                                                                        jmp   .Lx1588_0
#-----------------------------------------------------------------------------------------------------------------------
n1452_disjunction_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              dword ptr [rbp + 368], 0
                                                                                        jmp   n1455_lit_charset_α
n1452_disjunction_as:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        jne   .Lx1590_0
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1454_call_builtin_icon_α
.Lx1590_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1590_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1454_call_builtin_icon_α
.Lx1590_1:
                                                                                        jmp   n1454_call_builtin_icon_α
n1452_disjunction_β:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        je    n1456_call_builtin_gen_β
                                                                                        jmp   n1452_disjunction_af
n1452_disjunction_af:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 1
                                                                                        je    n1457_lit_string_α
                                                                                        jmp   n1460_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1453_call_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn652:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn652]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1451_to_β
                                                                                        jmp   n1459_call_builtin_icon_α
n1453_call_β:
                                                                                        jmp   n1451_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1454_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1593:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1593]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n1452_disjunction_β
                                                                                        jmp   n1460_lit_string_α
n1454_call_builtin_icon_β:
                                                                                        jmp   n1452_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1455_lit_charset_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              dword ptr [rbp + 516], -1
                        mov              rax, qword ptr [rip + .Lx1594_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n1461_lit_charset_α
n1455_lit_charset_β:
                                                                                        jmp   n1452_disjunction_af
.Lx1594_0:
                        .quad            .Lx1594_0_s
.Lx1594_0_s:
                        .string          "&56d"
#-----------------------------------------------------------------------------------------------------------------------
n1456_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              qword ptr [rbp + 496], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx1595_60:
                        .section         .rodata
.Lbynamegenfn655:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn655]
                        lea              rsi, [rbp + 448]
                        mov              edx, 3
                        lea              rcx, [rbp + 496]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n1452_disjunction_af
                                                                                        jmp   n1458_call_builtin_icon_α
n1456_call_builtin_gen_β:
                                                                                        jmp   .Lx1595_60
#-----------------------------------------------------------------------------------------------------------------------
n1457_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx1596_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n1452_disjunction_as
n1457_lit_string_β:
                                                                                        jmp   n1452_disjunction_af
.Lx1596_0:
                        .quad            .Lx1596_0_s
.Lx1596_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1458_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1598:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1598]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n1456_call_builtin_gen_β
                                                                                        jmp   n1452_disjunction_as
n1458_call_builtin_icon_β:
                                                                                        jmp   n1456_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n1459_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn1600:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1600]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n1451_to_β
                                                                                        jmp   n1451_to_β
n1459_call_builtin_icon_β:
                                                                                        jmp   n1451_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1460_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx1601_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1462_disjunction_α
.Lx1601_0:
                        .quad            .Lx1601_0_s
.Lx1601_0_s:
                        .string          "many(&lcase,\"this is a Test\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1461_lit_charset_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              dword ptr [rbp + 532], -1
                        mov              rax, qword ptr [rip + .Lx1602_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n1463_lit_integer_α
.Lx1602_0:
                        .quad            .Lx1602_0_s
.Lx1602_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1462_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n1465_lit_charset_α
n1462_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1604_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1464_call_builtin_icon_α
.Lx1604_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1604_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1464_call_builtin_icon_α
.Lx1604_1:
                                                                                        jmp   n1464_call_builtin_icon_α
n1462_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n1462_disjunction_af
                                                                                        jmp   n1462_disjunction_af
n1462_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n1466_lit_string_α
                                                                                        jmp   proc_p7_ω
#-----------------------------------------------------------------------------------------------------------------------
n1463_lit_integer_α:
                        mov              qword ptr [rbp + 544], 6
                        mov              rax, qword ptr [rip + .Lx1605_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1456_call_builtin_gen_α
.Lx1605_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n1464_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1607:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1607]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n1462_disjunction_β
                                                                                        jmp   proc_p7_ω
n1464_call_builtin_icon_β:
                                                                                        jmp   n1462_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1465_lit_charset_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], -1
                        mov              rax, qword ptr [rip + .Lx1608_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1468_lit_string_α
n1465_lit_charset_β:
                                                                                        jmp   n1462_disjunction_af
.Lx1608_0:
                        .quad            .Lx1608_0_s
.Lx1608_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1466_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx1609_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1462_disjunction_as
n1466_lit_string_β:
                                                                                        jmp   n1462_disjunction_af
.Lx1609_0:
                        .quad            .Lx1609_0_s
.Lx1609_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1467_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1611:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1611]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1462_disjunction_af
                                                                                        jmp   n1462_disjunction_as
n1467_call_builtin_icon_β:
                                                                                        jmp   n1462_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1468_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx1612_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1469_call_builtin_icon_α
.Lx1612_0:
                        .quad            .Lx1612_0_s
.Lx1612_0_s:
                        .string          "this is a Test"
#-----------------------------------------------------------------------------------------------------------------------
n1469_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn668:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn668]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1462_disjunction_af
                                                                                        jmp   n1467_call_builtin_icon_α
n1469_call_builtin_icon_β:
                                                                                        jmp   n1462_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_β:
                                                                                        jmp   proc_p7_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3400]
                        lea              rsp, [rbp + 3424]
                        mov              rbp, [rbp + 3416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_ω:
                        mov              rax, [rbp + 3408]
                        lea              rsp, [rbp + 3424]
                        mov              rbp, [rbp + 3416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p7_dcα:
                        pop              r11
                        sub              rsp, 3440
                        mov              qword ptr [rsp + 3416], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3392], r11
                        lea              rax, [rip + .Lx1614_2]
                        mov              qword ptr [rbp + 3400], rax
                        lea              rax, [rip + .Lx1614_3]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rdi, rbp
                        mov              esi, 3392
                        mov              edx, 3392
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p7_α_body
.Lx1614_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3424
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1614_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3424
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p8_α
proc_p8_α:
                        .global          proc_p8_α
                        .global          proc_p8_β
                        .global          proc_p8_γ
                        .global          proc_p8_ω
                        sub              rsp, 3792
                        mov              [rsp + 3768], rcx
                        mov              [rsp + 3776], rdx
                        mov              [rsp + 3784], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3760
                        mov              edx, 3760
                        call             rt_jmp_frame_lexprep2@PLT
proc_p8_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1615_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx1726_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n1616_disjunction_α
.Lx1726_0:
                        .quad            .Lx1726_0_s
.Lx1726_0_s:
                        .string          "many(&lcase,\"this is a Test\",5) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1616_disjunction_α:
                        mov              qword ptr [rbp + 3536], 0
                        mov              qword ptr [rbp + 3544], 0
                        mov              dword ptr [rbp + 3552], 0
                                                                                        jmp   n1618_lit_charset_α
n1616_disjunction_as:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        jne   .Lx1728_0
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n1617_call_builtin_icon_α
.Lx1728_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1728_1
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n1617_call_builtin_icon_α
.Lx1728_1:
                                                                                        jmp   n1617_call_builtin_icon_α
n1616_disjunction_β:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        je    n1616_disjunction_af
                                                                                        jmp   n1616_disjunction_af
n1616_disjunction_af:
                        add              dword ptr [rbp + 3552], 1
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 1
                                                                                        je    n1619_lit_string_α
                                                                                        jmp   n1621_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1617_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3496], rax
                        .section         .rodata
.Lrkfn1730:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1730]
                        lea              rsi, [rbp + 3472]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n1616_disjunction_β
                                                                                        jmp   n1621_lit_string_α
n1617_call_builtin_icon_β:
                                                                                        jmp   n1616_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1618_lit_charset_α:
                        mov              qword ptr [rbp + 3696], 1
                        mov              dword ptr [rbp + 3700], -1
                        mov              rax, qword ptr [rip + .Lx1731_0]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n1622_lit_string_α
n1618_lit_charset_β:
                                                                                        jmp   n1616_disjunction_af
.Lx1731_0:
                        .quad            .Lx1731_0_s
.Lx1731_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1619_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx1732_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n1616_disjunction_as
n1619_lit_string_β:
                                                                                        jmp   n1616_disjunction_af
.Lx1732_0:
                        .quad            .Lx1732_0_s
.Lx1732_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1620_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3592], rax
                        .section         .rodata
.Lrkfn1734:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1734]
                        lea              rsi, [rbp + 3584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        cmp              eax, 99
                                                                                        je    n1616_disjunction_af
                                                                                        jmp   n1616_disjunction_as
n1620_call_builtin_icon_β:
                                                                                        jmp   n1616_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1621_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx1735_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n1623_disjunction_α
.Lx1735_0:
                        .quad            .Lx1735_0_s
.Lx1735_0_s:
                        .string          "many(&lcase,\"this is a Test\",5,9) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1622_lit_string_α:
                        mov              qword ptr [rbp + 3712], 1
                        mov              rax, qword ptr [rip + .Lx1736_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n1624_lit_integer_α
.Lx1736_0:
                        .quad            .Lx1736_0_s
.Lx1736_0_s:
                        .string          "this is a Test"
#-----------------------------------------------------------------------------------------------------------------------
n1623_disjunction_α:
                        mov              qword ptr [rbp + 3200], 0
                        mov              qword ptr [rbp + 3208], 0
                        mov              dword ptr [rbp + 3216], 0
                                                                                        jmp   n1626_lit_charset_α
n1623_disjunction_as:
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 0
                                                                                        jne   .Lx1738_0
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n1625_call_builtin_icon_α
.Lx1738_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1738_1
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n1625_call_builtin_icon_α
.Lx1738_1:
                                                                                        jmp   n1625_call_builtin_icon_α
n1623_disjunction_β:
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 0
                                                                                        je    n1623_disjunction_af
                                                                                        jmp   n1623_disjunction_af
n1623_disjunction_af:
                        add              dword ptr [rbp + 3216], 1
                        mov              eax, dword ptr [rbp + 3216]
                        cmp              eax, 1
                                                                                        je    n1627_lit_string_α
                                                                                        jmp   n1630_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1624_lit_integer_α:
                        mov              qword ptr [rbp + 3728], 6
                        mov              rax, qword ptr [rip + .Lx1739_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n1629_call_builtin_icon_α
.Lx1739_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1625_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3160], rax
                        .section         .rodata
.Lrkfn1741:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1741]
                        lea              rsi, [rbp + 3136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n1623_disjunction_β
                                                                                        jmp   n1630_lit_string_α
n1625_call_builtin_icon_β:
                                                                                        jmp   n1623_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1626_lit_charset_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              dword ptr [rbp + 3380], -1
                        mov              rax, qword ptr [rip + .Lx1742_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n1631_lit_string_α
n1626_lit_charset_β:
                                                                                        jmp   n1623_disjunction_af
.Lx1742_0:
                        .quad            .Lx1742_0_s
.Lx1742_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1627_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx1743_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n1623_disjunction_as
n1627_lit_string_β:
                                                                                        jmp   n1623_disjunction_af
.Lx1743_0:
                        .quad            .Lx1743_0_s
.Lx1743_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1628_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lrkfn1745:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1745]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n1623_disjunction_af
                                                                                        jmp   n1623_disjunction_as
n1628_call_builtin_icon_β:
                                                                                        jmp   n1623_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1629_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3672], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn683:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn683]
                        lea              rsi, [rbp + 3632]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1616_disjunction_af
                                                                                        jmp   n1620_call_builtin_icon_α
n1629_call_builtin_icon_β:
                                                                                        jmp   n1616_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1630_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx1747_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n1632_disjunction_α
.Lx1747_0:
                        .quad            .Lx1747_0_s
.Lx1747_0_s:
                        .string          "find(\"aa\",\"xxaaaaaa\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1631_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx1748_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n1633_lit_integer_α
.Lx1748_0:
                        .quad            .Lx1748_0_s
.Lx1748_0_s:
                        .string          "this is a Test"
#-----------------------------------------------------------------------------------------------------------------------
n1632_disjunction_α:
                        mov              qword ptr [rbp + 2928], 0
                        mov              qword ptr [rbp + 2936], 0
                        mov              dword ptr [rbp + 2944], 0
                                                                                        jmp   n1635_lit_string_α
n1632_disjunction_as:
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 0
                                                                                        jne   .Lx1750_0
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n1634_call_builtin_icon_α
.Lx1750_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1750_1
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n1634_call_builtin_icon_α
.Lx1750_1:
                                                                                        jmp   n1634_call_builtin_icon_α
n1632_disjunction_β:
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 0
                                                                                        je    n1636_call_builtin_gen_β
                                                                                        jmp   n1632_disjunction_af
n1632_disjunction_af:
                        add              dword ptr [rbp + 2944], 1
                        mov              eax, dword ptr [rbp + 2944]
                        cmp              eax, 1
                                                                                        je    n1637_lit_string_α
                                                                                        jmp   n1640_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1633_lit_integer_α:
                        mov              qword ptr [rbp + 3408], 6
                        mov              rax, qword ptr [rip + .Lx1751_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n1639_lit_integer_α
.Lx1751_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n1634_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn1753:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1753]
                        lea              rsi, [rbp + 2864]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n1632_disjunction_β
                                                                                        jmp   n1640_lit_string_α
n1634_call_builtin_icon_β:
                                                                                        jmp   n1632_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1635_lit_string_α:
                        mov              qword ptr [rbp + 3072], 1
                        mov              rax, qword ptr [rip + .Lx1754_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n1641_lit_string_α
n1635_lit_string_β:
                                                                                        jmp   n1632_disjunction_af
.Lx1754_0:
                        .quad            .Lx1754_0_s
.Lx1754_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n1636_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3048], rax
                        mov              qword ptr [rbp + 3056], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx1755_60:
                        .section         .rodata
.Lbynamegenfn690:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn690]
                        lea              rsi, [rbp + 3024]
                        mov              edx, 2
                        lea              rcx, [rbp + 3056]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n1632_disjunction_af
                                                                                        jmp   n1638_call_builtin_icon_α
n1636_call_builtin_gen_β:
                                                                                        jmp   .Lx1755_60
#-----------------------------------------------------------------------------------------------------------------------
n1637_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx1756_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n1632_disjunction_as
n1637_lit_string_β:
                                                                                        jmp   n1632_disjunction_af
.Lx1756_0:
                        .quad            .Lx1756_0_s
.Lx1756_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1638_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2984], rax
                        .section         .rodata
.Lrkfn1758:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1758]
                        lea              rsi, [rbp + 2976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    n1636_call_builtin_gen_β
                                                                                        jmp   n1632_disjunction_as
n1638_call_builtin_icon_β:
                                                                                        jmp   n1636_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n1639_lit_integer_α:
                        mov              qword ptr [rbp + 3424], 6
                        mov              rax, qword ptr [rip + .Lx1759_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n1642_call_builtin_icon_α
.Lx1759_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n1640_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx1760_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n1643_disjunction_α
.Lx1760_0:
                        .quad            .Lx1760_0_s
.Lx1760_0_s:
                        .string          "every write(find(\"aa\",\"xxaaaaaa\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1641_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              rax, qword ptr [rip + .Lx1761_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n1636_call_builtin_gen_α
.Lx1761_0:
                        .quad            .Lx1761_0_s
.Lx1761_0_s:
                        .string          "xxaaaaaa"
#-----------------------------------------------------------------------------------------------------------------------
n1642_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3304], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn696:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn696]
                        lea              rsi, [rbp + 3296]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1623_disjunction_af
                                                                                        jmp   n1628_call_builtin_icon_α
n1642_call_builtin_icon_β:
                                                                                        jmp   n1623_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1643_disjunction_α:
                        mov              qword ptr [rbp + 2624], 0
                        mov              qword ptr [rbp + 2632], 0
                        mov              dword ptr [rbp + 2640], 0
                                                                                        jmp   n1645_lit_string_α
n1643_disjunction_as:
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 0
                                                                                        jne   .Lx1764_0
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n1644_call_builtin_icon_α
.Lx1764_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1764_1
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n1644_call_builtin_icon_α
.Lx1764_1:
                                                                                        jmp   n1644_call_builtin_icon_α
n1643_disjunction_β:
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 0
                                                                                        je    n1643_disjunction_af
                                                                                        jmp   n1643_disjunction_af
n1643_disjunction_af:
                        add              dword ptr [rbp + 2640], 1
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              eax, 1
                                                                                        je    n1646_lit_string_α
                                                                                        jmp   n1648_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1644_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn1766:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1766]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n1643_disjunction_β
                                                                                        jmp   n1648_lit_string_α
n1644_call_builtin_icon_β:
                                                                                        jmp   n1643_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1645_lit_string_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx1767_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n1649_lit_string_α
n1645_lit_string_β:
                                                                                        jmp   n1643_disjunction_af
.Lx1767_0:
                        .quad            .Lx1767_0_s
.Lx1767_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n1646_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx1768_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n1643_disjunction_as
n1646_lit_string_β:
                                                                                        jmp   n1643_disjunction_af
.Lx1768_0:
                        .quad            .Lx1768_0_s
.Lx1768_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1647_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1770:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1770]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n1643_disjunction_af
                                                                                        jmp   n1643_disjunction_as
n1647_call_builtin_icon_β:
                                                                                        jmp   n1643_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1648_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx1771_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n1650_disjunction_α
.Lx1771_0:
                        .quad            .Lx1771_0_s
.Lx1771_0_s:
                        .string          "every write(find(\"aa\",\"xxaaaaaa\",4,7)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1649_lit_string_α:
                        mov              qword ptr [rbp + 2816], 1
                        mov              rax, qword ptr [rip + .Lx1772_0]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n1651_call_builtin_gen_α
.Lx1772_0:
                        .quad            .Lx1772_0_s
.Lx1772_0_s:
                        .string          "xxaaaaaa"
#-----------------------------------------------------------------------------------------------------------------------
n1650_disjunction_α:
                        mov              qword ptr [rbp + 2256], 0
                        mov              qword ptr [rbp + 2264], 0
                        mov              dword ptr [rbp + 2272], 0
                                                                                        jmp   n1653_lit_string_α
n1650_disjunction_as:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 0
                                                                                        jne   .Lx1774_0
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n1652_call_builtin_icon_α
.Lx1774_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1774_1
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n1652_call_builtin_icon_α
.Lx1774_1:
                                                                                        jmp   n1652_call_builtin_icon_α
n1650_disjunction_β:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 0
                                                                                        je    n1650_disjunction_af
                                                                                        jmp   n1650_disjunction_af
n1650_disjunction_af:
                        add              dword ptr [rbp + 2272], 1
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 1
                                                                                        je    n1654_lit_string_α
                                                                                        jmp   n1657_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1651_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        mov              qword ptr [rbp + 2784], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx1775_60:
                        .section         .rodata
.Lbynamegenfn705:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn705]
                        lea              rsi, [rbp + 2752]
                        mov              edx, 2
                        lea              rcx, [rbp + 2784]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    n1643_disjunction_af
                                                                                        jmp   n1656_call_builtin_icon_α
n1651_call_builtin_gen_β:
                                                                                        jmp   .Lx1775_60
#-----------------------------------------------------------------------------------------------------------------------
n1652_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        .section         .rodata
.Lrkfn1777:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1777]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n1650_disjunction_β
                                                                                        jmp   n1657_lit_string_α
n1652_call_builtin_icon_β:
                                                                                        jmp   n1650_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1653_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx1778_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n1658_lit_string_α
n1653_lit_string_β:
                                                                                        jmp   n1650_disjunction_af
.Lx1778_0:
                        .quad            .Lx1778_0_s
.Lx1778_0_s:
                        .string          "aa"
#-----------------------------------------------------------------------------------------------------------------------
n1654_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx1779_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n1650_disjunction_as
n1654_lit_string_β:
                                                                                        jmp   n1650_disjunction_af
.Lx1779_0:
                        .quad            .Lx1779_0_s
.Lx1779_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1655_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1781:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1781]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n1650_disjunction_af
                                                                                        jmp   n1650_disjunction_as
n1655_call_builtin_icon_β:
                                                                                        jmp   n1650_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1656_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn1783:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1783]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n1651_call_builtin_gen_β
                                                                                        jmp   n1651_call_builtin_gen_β
n1656_call_builtin_icon_β:
                                                                                        jmp   n1651_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n1657_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx1784_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n1659_disjunction_α
.Lx1784_0:
                        .quad            .Lx1784_0_s
.Lx1784_0_s:
                        .string          "bal('-','(',')',\"-35\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1658_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx1785_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n1660_lit_integer_α
.Lx1785_0:
                        .quad            .Lx1785_0_s
.Lx1785_0_s:
                        .string          "xxaaaaaa"
#-----------------------------------------------------------------------------------------------------------------------
n1659_disjunction_α:
                        mov              qword ptr [rbp + 1920], 0
                        mov              qword ptr [rbp + 1928], 0
                        mov              dword ptr [rbp + 1936], 0
                                                                                        jmp   n1662_lit_charset_α
n1659_disjunction_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        jne   .Lx1787_0
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n1661_call_builtin_icon_α
.Lx1787_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1787_1
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n1661_call_builtin_icon_α
.Lx1787_1:
                                                                                        jmp   n1661_call_builtin_icon_α
n1659_disjunction_β:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        je    n1659_disjunction_af
                                                                                        jmp   n1659_disjunction_af
n1659_disjunction_af:
                        add              dword ptr [rbp + 1936], 1
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 1
                                                                                        je    n1663_lit_string_α
                                                                                        jmp   n1666_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1660_lit_integer_α:
                        mov              qword ptr [rbp + 2496], 6
                        mov              rax, qword ptr [rip + .Lx1788_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n1665_lit_integer_α
.Lx1788_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n1661_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn1790:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1790]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n1659_disjunction_β
                                                                                        jmp   n1666_lit_string_α
n1661_call_builtin_icon_β:
                                                                                        jmp   n1659_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1662_lit_charset_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              dword ptr [rbp + 2100], -1
                        mov              rax, qword ptr [rip + .Lx1791_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n1667_lit_charset_α
n1662_lit_charset_β:
                                                                                        jmp   n1659_disjunction_af
.Lx1791_0:
                        .quad            .Lx1791_0_s
.Lx1791_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n1663_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx1792_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n1659_disjunction_as
n1663_lit_string_β:
                                                                                        jmp   n1659_disjunction_af
.Lx1792_0:
                        .quad            .Lx1792_0_s
.Lx1792_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1664_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn1794:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1794]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n1659_disjunction_af
                                                                                        jmp   n1659_disjunction_as
n1664_call_builtin_icon_β:
                                                                                        jmp   n1659_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1665_lit_integer_α:
                        mov              qword ptr [rbp + 2512], 6
                        mov              rax, qword ptr [rip + .Lx1795_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n1668_call_builtin_gen_α
.Lx1795_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n1666_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx1796_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n1669_disjunction_α
.Lx1796_0:
                        .quad            .Lx1796_0_s
.Lx1796_0_s:
                        .string          "bal('+','(',')',\"((2*x)+3)+(5*y)\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1667_lit_charset_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              dword ptr [rbp + 2116], -1
                        mov              rax, qword ptr [rip + .Lx1797_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n1670_lit_charset_α
.Lx1797_0:
                        .quad            .Lx1797_0_s
.Lx1797_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n1668_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2440], rax
                        mov              qword ptr [rbp + 2448], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx1798_60:
                        .section         .rodata
.Lbynamegenfn722:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn722]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 4
                        lea              rcx, [rbp + 2448]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n1650_disjunction_af
                                                                                        jmp   n1671_call_builtin_icon_α
n1668_call_builtin_gen_β:
                                                                                        jmp   .Lx1798_60
#-----------------------------------------------------------------------------------------------------------------------
n1669_disjunction_α:
                        mov              qword ptr [rbp + 1584], 0
                        mov              qword ptr [rbp + 1592], 0
                        mov              dword ptr [rbp + 1600], 0
                                                                                        jmp   n1673_lit_charset_α
n1669_disjunction_as:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        jne   .Lx1800_0
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n1672_call_builtin_icon_α
.Lx1800_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1800_1
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n1672_call_builtin_icon_α
.Lx1800_1:
                                                                                        jmp   n1672_call_builtin_icon_α
n1669_disjunction_β:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        je    n1669_disjunction_af
                                                                                        jmp   n1669_disjunction_af
n1669_disjunction_af:
                        add              dword ptr [rbp + 1600], 1
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 1
                                                                                        je    n1674_lit_string_α
                                                                                        jmp   n1677_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1670_lit_charset_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              dword ptr [rbp + 2132], -1
                        mov              rax, qword ptr [rip + .Lx1801_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n1676_lit_string_α
.Lx1801_0:
                        .quad            .Lx1801_0_s
.Lx1801_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n1671_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn1803:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1803]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n1668_call_builtin_gen_β
                                                                                        jmp   n1668_call_builtin_gen_β
n1671_call_builtin_icon_β:
                                                                                        jmp   n1668_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n1672_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn1805:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1805]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n1669_disjunction_β
                                                                                        jmp   n1677_lit_string_α
n1672_call_builtin_icon_β:
                                                                                        jmp   n1669_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1673_lit_charset_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              dword ptr [rbp + 1764], -1
                        mov              rax, qword ptr [rip + .Lx1806_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n1678_lit_charset_α
n1673_lit_charset_β:
                                                                                        jmp   n1669_disjunction_af
.Lx1806_0:
                        .quad            .Lx1806_0_s
.Lx1806_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n1674_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx1807_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n1669_disjunction_as
n1674_lit_string_β:
                                                                                        jmp   n1669_disjunction_af
.Lx1807_0:
                        .quad            .Lx1807_0_s
.Lx1807_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1675_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn1809:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1809]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n1669_disjunction_af
                                                                                        jmp   n1669_disjunction_as
n1675_call_builtin_icon_β:
                                                                                        jmp   n1669_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1676_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx1810_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n1679_call_builtin_icon_α
.Lx1810_0:
                        .quad            .Lx1810_0_s
.Lx1810_0_s:
                        .string          "-35"
#-----------------------------------------------------------------------------------------------------------------------
n1677_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx1811_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n1680_disjunction_α
.Lx1811_0:
                        .quad            .Lx1811_0_s
.Lx1811_0_s:
                        .string          "every write(bal('+','(',')',\"((2*x)+3)+(5*y)\",1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1678_lit_charset_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              dword ptr [rbp + 1780], -1
                        mov              rax, qword ptr [rip + .Lx1812_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n1681_lit_charset_α
.Lx1812_0:
                        .quad            .Lx1812_0_s
.Lx1812_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n1679_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn733:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn733]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1659_disjunction_af
                                                                                        jmp   n1664_call_builtin_icon_α
n1679_call_builtin_icon_β:
                                                                                        jmp   n1659_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1680_disjunction_α:
                        mov              qword ptr [rbp + 1136], 0
                        mov              qword ptr [rbp + 1144], 0
                        mov              dword ptr [rbp + 1152], 0
                                                                                        jmp   n1683_lit_charset_α
n1680_disjunction_as:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        jne   .Lx1815_0
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1682_call_builtin_icon_α
.Lx1815_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1815_1
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n1682_call_builtin_icon_α
.Lx1815_1:
                                                                                        jmp   n1682_call_builtin_icon_α
n1680_disjunction_β:
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 0
                                                                                        je    n1680_disjunction_af
                                                                                        jmp   n1680_disjunction_af
n1680_disjunction_af:
                        add              dword ptr [rbp + 1152], 1
                        mov              eax, dword ptr [rbp + 1152]
                        cmp              eax, 1
                                                                                        je    n1684_lit_string_α
                                                                                        jmp   n1687_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1681_lit_charset_α:
                        mov              qword ptr [rbp + 1792], 1
                        mov              dword ptr [rbp + 1796], -1
                        mov              rax, qword ptr [rip + .Lx1816_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n1686_lit_string_α
.Lx1816_0:
                        .quad            .Lx1816_0_s
.Lx1816_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n1682_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn1818:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1818]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n1680_disjunction_β
                                                                                        jmp   n1687_lit_string_α
n1682_call_builtin_icon_β:
                                                                                        jmp   n1680_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1683_lit_charset_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              dword ptr [rbp + 1364], -1
                        mov              rax, qword ptr [rip + .Lx1819_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n1688_lit_charset_α
n1683_lit_charset_β:
                                                                                        jmp   n1680_disjunction_af
.Lx1819_0:
                        .quad            .Lx1819_0_s
.Lx1819_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n1684_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx1820_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n1680_disjunction_as
n1684_lit_string_β:
                                                                                        jmp   n1680_disjunction_af
.Lx1820_0:
                        .quad            .Lx1820_0_s
.Lx1820_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1685_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1822:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1822]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n1680_disjunction_af
                                                                                        jmp   n1680_disjunction_as
n1685_call_builtin_icon_β:
                                                                                        jmp   n1680_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1686_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx1823_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n1689_call_builtin_icon_α
.Lx1823_0:
                        .quad            .Lx1823_0_s
.Lx1823_0_s:
                        .string          "((2*x)+3)+(5*y)"
#-----------------------------------------------------------------------------------------------------------------------
n1687_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx1824_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n1690_disjunction_α
.Lx1824_0:
                        .quad            .Lx1824_0_s
.Lx1824_0_s:
                        .string          "bal('+','[','[',\"[[2*x[+3[+[5*y[\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1688_lit_charset_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              dword ptr [rbp + 1380], -1
                        mov              rax, qword ptr [rip + .Lx1825_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n1691_lit_charset_α
.Lx1825_0:
                        .quad            .Lx1825_0_s
.Lx1825_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n1689_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn743:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn743]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1669_disjunction_af
                                                                                        jmp   n1675_call_builtin_icon_α
n1689_call_builtin_icon_β:
                                                                                        jmp   n1669_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1690_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n1693_lit_charset_α
n1690_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx1828_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1692_call_builtin_icon_α
.Lx1828_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1828_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n1692_call_builtin_icon_α
.Lx1828_1:
                                                                                        jmp   n1692_call_builtin_icon_α
n1690_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n1690_disjunction_af
                                                                                        jmp   n1690_disjunction_af
n1690_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n1694_lit_string_α
                                                                                        jmp   n1697_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1691_lit_charset_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              dword ptr [rbp + 1396], -1
                        mov              rax, qword ptr [rip + .Lx1829_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n1696_lit_string_α
.Lx1829_0:
                        .quad            .Lx1829_0_s
.Lx1829_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n1692_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn1831:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1831]
                        lea              rsi, [rbp + 736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n1690_disjunction_β
                                                                                        jmp   n1697_lit_string_α
n1692_call_builtin_icon_β:
                                                                                        jmp   n1690_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1693_lit_charset_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              dword ptr [rbp + 980], -1
                        mov              rax, qword ptr [rip + .Lx1832_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n1698_lit_charset_α
n1693_lit_charset_β:
                                                                                        jmp   n1690_disjunction_af
.Lx1832_0:
                        .quad            .Lx1832_0_s
.Lx1832_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n1694_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx1833_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n1690_disjunction_as
n1694_lit_string_β:
                                                                                        jmp   n1690_disjunction_af
.Lx1833_0:
                        .quad            .Lx1833_0_s
.Lx1833_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1695_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn1835:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1835]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n1690_disjunction_af
                                                                                        jmp   n1690_disjunction_as
n1695_call_builtin_icon_β:
                                                                                        jmp   n1690_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1696_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx1836_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n1699_lit_integer_α
.Lx1836_0:
                        .quad            .Lx1836_0_s
.Lx1836_0_s:
                        .string          "((2*x)+3)+(5*y)"
#-----------------------------------------------------------------------------------------------------------------------
n1697_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx1837_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1700_disjunction_α
.Lx1837_0:
                        .quad            .Lx1837_0_s
.Lx1837_0_s:
                        .string          "bal('+','([','])',\"([2*x)+3]+(5*y]\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1698_lit_charset_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              dword ptr [rbp + 996], -1
                        mov              rax, qword ptr [rip + .Lx1838_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n1701_lit_charset_α
.Lx1838_0:
                        .quad            .Lx1838_0_s
.Lx1838_0_s:
                        .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n1699_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx1839_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n1702_lit_integer_α
.Lx1839_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1700_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n1704_lit_charset_α
n1700_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx1841_0
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1703_call_builtin_icon_α
.Lx1841_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1841_1
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n1703_call_builtin_icon_α
.Lx1841_1:
                                                                                        jmp   n1703_call_builtin_icon_α
n1700_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n1700_disjunction_af
                                                                                        jmp   n1700_disjunction_af
n1700_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n1705_lit_string_α
                                                                                        jmp   n1709_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1701_lit_charset_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              dword ptr [rbp + 1012], -1
                        mov              rax, qword ptr [rip + .Lx1842_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n1707_lit_string_α
.Lx1842_0:
                        .quad            .Lx1842_0_s
.Lx1842_0_s:
                        .string          "["
#-----------------------------------------------------------------------------------------------------------------------
n1702_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx1843_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n1708_to_α
.Lx1843_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n1703_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn1845:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1845]
                        lea              rsi, [rbp + 400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n1700_disjunction_β
                                                                                        jmp   n1709_lit_string_α
n1703_call_builtin_icon_β:
                                                                                        jmp   n1700_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1704_lit_charset_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              dword ptr [rbp + 644], -1
                        mov              rax, qword ptr [rip + .Lx1846_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1710_lit_charset_α
n1704_lit_charset_β:
                                                                                        jmp   n1700_disjunction_af
.Lx1846_0:
                        .quad            .Lx1846_0_s
.Lx1846_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n1705_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx1847_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n1700_disjunction_as
n1705_lit_string_β:
                                                                                        jmp   n1700_disjunction_af
.Lx1847_0:
                        .quad            .Lx1847_0_s
.Lx1847_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1706_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1849:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1849]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n1700_disjunction_af
                                                                                        jmp   n1700_disjunction_as
n1706_call_builtin_icon_β:
                                                                                        jmp   n1700_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1707_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx1850_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n1711_call_builtin_icon_α
.Lx1850_0:
                        .quad            .Lx1850_0_s
.Lx1850_0_s:
                        .string          "[[2*x[+3[+[5*y["
#-----------------------------------------------------------------------------------------------------------------------
n1708_to_α:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1456], 6
                        mov              qword ptr [rbp + 1464], rax
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1472], 6
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1440], rax
.Lx1852_0:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1480]
                        cmp              rax, rcx
                                                                                        jg    n1680_disjunction_af
                        mov              qword ptr [rbp + 1424], 6
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n1712_call_builtin_icon_α
n1708_to_β:
                        inc              qword ptr [rbp + 1440]
                                                                                        jmp   .Lx1852_0
#-----------------------------------------------------------------------------------------------------------------------
n1709_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx1853_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1713_disjunction_α
.Lx1853_0:
                        .quad            .Lx1853_0_s
.Lx1853_0_s:
                        .string          "bal(,,,\"()+()\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1710_lit_charset_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], -1
                        mov              rax, qword ptr [rip + .Lx1854_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n1714_lit_charset_α
.Lx1854_0:
                        .quad            .Lx1854_0_s
.Lx1854_0_s:
                        .string          "(["
#-----------------------------------------------------------------------------------------------------------------------
n1711_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 952], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn765:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn765]
                        lea              rsi, [rbp + 896]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1690_disjunction_af
                                                                                        jmp   n1695_call_builtin_icon_α
n1711_call_builtin_icon_β:
                                                                                        jmp   n1690_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1712_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn766:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn766]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1708_to_β
                                                                                        jmp   n1715_call_builtin_icon_α
n1712_call_builtin_icon_β:
                                                                                        jmp   n1708_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1713_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n1717_keyword_icon_α
n1713_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1858_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1716_call_builtin_icon_α
.Lx1858_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1858_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1716_call_builtin_icon_α
.Lx1858_1:
                                                                                        jmp   n1716_call_builtin_icon_α
n1713_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n1713_disjunction_af
                                                                                        jmp   n1713_disjunction_af
n1713_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n1718_lit_string_α
                                                                                        jmp   proc_p8_ω
#-----------------------------------------------------------------------------------------------------------------------
n1714_lit_charset_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              dword ptr [rbp + 676], -1
                        mov              rax, qword ptr [rip + .Lx1859_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n1720_lit_string_α
.Lx1859_0:
                        .quad            .Lx1859_0_s
.Lx1859_0_s:
                        .string          ")]"
#-----------------------------------------------------------------------------------------------------------------------
n1715_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn1861:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1861]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n1708_to_β
                                                                                        jmp   n1708_to_β
n1715_call_builtin_icon_β:
                                                                                        jmp   n1708_to_β
#-----------------------------------------------------------------------------------------------------------------------
n1716_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1863:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1863]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n1713_disjunction_β
                                                                                        jmp   proc_p8_ω
n1716_call_builtin_icon_β:
                                                                                        jmp   n1713_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1717_keyword_icon_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                                                                                        jmp   n1721_keyword_icon_α
n1717_keyword_icon_β:
                                                                                        jmp   n1713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1718_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx1865_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1713_disjunction_as
n1718_lit_string_β:
                                                                                        jmp   n1713_disjunction_af
.Lx1865_0:
                        .quad            .Lx1865_0_s
.Lx1865_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1719_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1867:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1867]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1713_disjunction_af
                                                                                        jmp   n1713_disjunction_as
n1719_call_builtin_icon_β:
                                                                                        jmp   n1713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1720_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx1868_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n1722_call_builtin_icon_α
.Lx1868_0:
                        .quad            .Lx1868_0_s
.Lx1868_0_s:
                        .string          "([2*x)+3]+(5*y]"
#-----------------------------------------------------------------------------------------------------------------------
n1721_keyword_icon_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                                                                                        jmp   n1723_keyword_icon_α
n1721_keyword_icon_β:
                                                                                        jmp   n1713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1722_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 616], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn776:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn776]
                        lea              rsi, [rbp + 560]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1700_disjunction_af
                                                                                        jmp   n1706_call_builtin_icon_α
n1722_call_builtin_icon_β:
                                                                                        jmp   n1700_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1723_keyword_icon_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                                                                                        jmp   n1724_lit_string_α
n1723_keyword_icon_β:
                                                                                        jmp   n1713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1724_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1872_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1725_call_builtin_icon_α
.Lx1872_0:
                        .quad            .Lx1872_0_s
.Lx1872_0_s:
                        .string          "()+()"
#-----------------------------------------------------------------------------------------------------------------------
n1725_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 232], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn779:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn779]
                        lea              rsi, [rbp + 176]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1713_disjunction_af
                                                                                        jmp   n1719_call_builtin_icon_α
n1725_call_builtin_icon_β:
                                                                                        jmp   n1713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_β:
                                                                                        jmp   proc_p8_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3768]
                        lea              rsp, [rbp + 3792]
                        mov              rbp, [rbp + 3784]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_ω:
                        mov              rax, [rbp + 3776]
                        lea              rsp, [rbp + 3792]
                        mov              rbp, [rbp + 3784]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p8_dcα:
                        pop              r11
                        sub              rsp, 3808
                        mov              qword ptr [rsp + 3784], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3760], r11
                        lea              rax, [rip + .Lx1874_2]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rax, [rip + .Lx1874_3]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rdi, rbp
                        mov              esi, 3760
                        mov              edx, 3760
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p8_α_body
.Lx1874_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3792
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1874_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3792
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p9_α
proc_p9_α:
                        .global          proc_p9_α
                        .global          proc_p9_β
                        .global          proc_p9_γ
                        .global          proc_p9_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_p9_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1875_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx1885_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n1876_disjunction_α
.Lx1885_0:
                        .quad            .Lx1885_0_s
.Lx1885_0_s:
                        .string          "bal(&cset,,,\"()+()\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1876_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n1878_keyword_icon_α
n1876_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx1887_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1877_call_builtin_icon_α
.Lx1887_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1887_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n1877_call_builtin_icon_α
.Lx1887_1:
                                                                                        jmp   n1877_call_builtin_icon_α
n1876_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n1876_disjunction_af
                                                                                        jmp   n1876_disjunction_af
n1876_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n1879_lit_string_α
                                                                                        jmp   proc_p9_ω
#-----------------------------------------------------------------------------------------------------------------------
n1877_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1889:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1889]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n1876_disjunction_β
                                                                                        jmp   proc_p9_ω
n1877_call_builtin_icon_β:
                                                                                        jmp   n1876_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n1878_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1890_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n1876_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n1881_keyword_icon_α
n1878_keyword_icon_β:
                                                                                        jmp   n1876_disjunction_af
.Lx1890_0:
                        .quad            .Lx1890_0_s
.Lx1890_0_s:
                        .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n1879_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx1891_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n1876_disjunction_as
n1879_lit_string_β:
                                                                                        jmp   n1876_disjunction_af
.Lx1891_0:
                        .quad            .Lx1891_0_s
.Lx1891_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n1880_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1893:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1893]
                        lea              rsi, [rbp + 128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n1876_disjunction_af
                                                                                        jmp   n1876_disjunction_as
n1880_call_builtin_icon_β:
                                                                                        jmp   n1876_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1881_keyword_icon_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                                                                                        jmp   n1882_keyword_icon_α
n1881_keyword_icon_β:
                                                                                        jmp   n1876_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1882_keyword_icon_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                                                                                        jmp   n1883_lit_string_α
n1882_keyword_icon_β:
                                                                                        jmp   n1876_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1883_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx1896_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1884_call_builtin_icon_α
.Lx1896_0:
                        .quad            .Lx1896_0_s
.Lx1896_0_s:
                        .string          "()+()"
#-----------------------------------------------------------------------------------------------------------------------
n1884_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 232], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn789:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn789]
                        lea              rsi, [rbp + 176]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1876_disjunction_af
                                                                                        jmp   n1880_call_builtin_icon_α
n1884_call_builtin_icon_β:
                                                                                        jmp   n1876_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_β:
                                                                                        jmp   proc_p9_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 392]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p9_dcα:
                        pop              r11
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 384], r11
                        lea              rax, [rip + .Lx1898_2]
                        mov              qword ptr [rbp + 392], rax
                        lea              rax, [rip + .Lx1898_3]
                        mov              qword ptr [rbp + 400], rax
                        mov              rdi, rbp
                        mov              esi, 384
                        mov              edx, 384
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p9_α_body
.Lx1898_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -416
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1898_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -416
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
                        mov              esi, 2288
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
                        mov              esi, 2368
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
                        mov              esi, 2912
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
                        mov              esi, 2592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_p4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "p5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_p5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2752
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_p5_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "p6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_p6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_p6_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "p7"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_p7_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 3392
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_p7_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "p8"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_p8_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3760
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_p8_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "p9"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_p9_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_p9_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "s"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
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
                        sub              rsp, 296
                        mov              rdi, rsp
                        mov              ecx, 296
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1899_call_proc_staged_α:
                        call             proc_p1_dcα
                                                                                        jmp   .Lx1909_2
.Lx1909_2:
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n1900_call_proc_staged_α
                                                                                        jmp   n1900_call_proc_staged_α
n1899_call_proc_staged_β:
                                                                                        jmp   n1900_call_proc_staged_α
.Lx1909_0:
                        .quad            .Lx1909_0_s
.Lx1909_0_s:
                        .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n1900_call_proc_staged_α:
                        call             proc_p2_dcα
                                                                                        jmp   .Lx1911_2
.Lx1911_2:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n1901_call_proc_staged_α
                                                                                        jmp   n1901_call_proc_staged_α
n1900_call_proc_staged_β:
                                                                                        jmp   n1901_call_proc_staged_α
.Lx1911_0:
                        .quad            .Lx1911_0_s
.Lx1911_0_s:
                        .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n1901_call_proc_staged_α:
                        call             proc_p3_dcα
                                                                                        jmp   .Lx1913_2
.Lx1913_2:
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n1902_call_proc_staged_α
                                                                                        jmp   n1902_call_proc_staged_α
n1901_call_proc_staged_β:
                                                                                        jmp   n1902_call_proc_staged_α
.Lx1913_0:
                        .quad            .Lx1913_0_s
.Lx1913_0_s:
                        .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
n1902_call_proc_staged_α:
                        call             proc_p4_dcα
                                                                                        jmp   .Lx1915_2
.Lx1915_2:
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n1903_call_proc_staged_α
                                                                                        jmp   n1903_call_proc_staged_α
n1902_call_proc_staged_β:
                                                                                        jmp   n1903_call_proc_staged_α
.Lx1915_0:
                        .quad            .Lx1915_0_s
.Lx1915_0_s:
                        .string          "p4"
#-----------------------------------------------------------------------------------------------------------------------
n1903_call_proc_staged_α:
                        call             proc_p5_dcα
                                                                                        jmp   .Lx1917_2
.Lx1917_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n1904_call_proc_staged_α
                                                                                        jmp   n1904_call_proc_staged_α
n1903_call_proc_staged_β:
                                                                                        jmp   n1904_call_proc_staged_α
.Lx1917_0:
                        .quad            .Lx1917_0_s
.Lx1917_0_s:
                        .string          "p5"
#-----------------------------------------------------------------------------------------------------------------------
n1904_call_proc_staged_α:
                        call             proc_p6_dcα
                                                                                        jmp   .Lx1919_2
.Lx1919_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1905_call_proc_staged_α
                                                                                        jmp   n1905_call_proc_staged_α
n1904_call_proc_staged_β:
                                                                                        jmp   n1905_call_proc_staged_α
.Lx1919_0:
                        .quad            .Lx1919_0_s
.Lx1919_0_s:
                        .string          "p6"
#-----------------------------------------------------------------------------------------------------------------------
n1905_call_proc_staged_α:
                        call             proc_p7_dcα
                                                                                        jmp   .Lx1921_2
.Lx1921_2:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n1906_call_proc_staged_α
                                                                                        jmp   n1906_call_proc_staged_α
n1905_call_proc_staged_β:
                                                                                        jmp   n1906_call_proc_staged_α
.Lx1921_0:
                        .quad            .Lx1921_0_s
.Lx1921_0_s:
                        .string          "p7"
#-----------------------------------------------------------------------------------------------------------------------
n1906_call_proc_staged_α:
                        call             proc_p8_dcα
                                                                                        jmp   .Lx1923_2
.Lx1923_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n1907_call_proc_staged_α
                                                                                        jmp   n1907_call_proc_staged_α
n1906_call_proc_staged_β:
                                                                                        jmp   n1907_call_proc_staged_α
.Lx1923_0:
                        .quad            .Lx1923_0_s
.Lx1923_0_s:
                        .string          "p8"
#-----------------------------------------------------------------------------------------------------------------------
n1907_call_proc_staged_α:
                        call             proc_p9_dcα
                                                                                        jmp   .Lx1925_2
.Lx1925_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n1907_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1925_0:
                        .quad            .Lx1925_0_s
.Lx1925_0_s:
                        .string          "p9"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 296
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 296
                        ret
                        .section         .note.GNU-stack,"",@progbits
