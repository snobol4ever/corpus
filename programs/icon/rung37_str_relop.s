                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 2200
                        mov              rdi, rsp
                        mov              ecx, 2200
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2192], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n1_assign_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              rdx, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n3_assign_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:
                        mov              qword ptr [rbp + 1984], 0
                        mov              qword ptr [rbp + 1992], 0
                        mov              dword ptr [rbp + 2000], 0
                                                                                        jmp   n6_var_α
n4_disjunction_as:
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              eax, 0
                                                                                        jne   .Lx105_0
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n5_disjunction_α
.Lx105_0:
                                                                                        jmp   n5_disjunction_α
n4_disjunction_β:
                        mov              eax, dword ptr [rbp + 2000]
                                                                                        jmp   n5_disjunction_α
n4_disjunction_af:
                        add              dword ptr [rbp + 2000], 1
                        mov              eax, dword ptr [rbp + 2000]
                                                                                        jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              dword ptr [rbp + 1856], 0
                                                                                        jmp   n9_var_α
n5_disjunction_as:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 0
                                                                                        jne   .Lx107_0
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n8_disjunction_α
.Lx107_0:
                                                                                        jmp   n8_disjunction_α
n5_disjunction_β:
                        mov              eax, dword ptr [rbp + 1856]
                                                                                        jmp   n8_disjunction_α
n5_disjunction_af:
                        add              dword ptr [rbp + 1856], 1
                        mov              eax, dword ptr [rbp + 1856]
                                                                                        jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n11_var_α
n6_var_β:
                                                                                        jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n5_disjunction_α
                                                                                        jmp   n4_disjunction_as
n7_call_builtin_icon_β:
                                                                                        jmp   n5_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              dword ptr [rbp + 1712], 0
                                                                                        jmp   n13_var_α
n8_disjunction_as:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        jne   .Lx113_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n12_disjunction_α
.Lx113_0:
                                                                                        jmp   n12_disjunction_α
n8_disjunction_β:
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n12_disjunction_α
n8_disjunction_af:
                        add              dword ptr [rbp + 1712], 1
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n15_var_α
n9_var_β:
                                                                                        jmp   n5_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn117:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n8_disjunction_α
                                                                                        jmp   n5_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n16_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              dword ptr [rbp + 1568], 0
                                                                                        jmp   n18_var_α
n12_disjunction_as:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        jne   .Lx121_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n17_disjunction_α
.Lx121_0:
                                                                                        jmp   n17_disjunction_α
n12_disjunction_β:
                        mov              eax, dword ptr [rbp + 1568]
                                                                                        jmp   n17_disjunction_α
n12_disjunction_af:
                        add              dword ptr [rbp + 1568], 1
                        mov              eax, dword ptr [rbp + 1568]
                                                                                        jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n20_var_α
n13_var_β:
                                                                                        jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn125:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n12_disjunction_α
                                                                                        jmp   n8_disjunction_as
n14_call_builtin_icon_β:
                                                                                        jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n21_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n4_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_disjunction_α:
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0
                                                                                        jmp   n24_var_α
n17_disjunction_as:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        jne   .Lx130_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n23_disjunction_α
.Lx130_0:
                                                                                        jmp   n23_disjunction_α
n17_disjunction_β:
                        mov              eax, dword ptr [rbp + 1424]
                                                                                        jmp   n23_disjunction_α
n17_disjunction_af:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n26_var_α
n18_var_β:
                                                                                        jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn134:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n17_disjunction_α
                                                                                        jmp   n12_disjunction_as
n19_call_builtin_icon_β:
                                                                                        jmp   n17_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n27_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n21_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n5_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n28_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "a<<b"
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              dword ptr [rbp + 1280], 0
                                                                                        jmp   n30_var_α
n23_disjunction_as:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        jne   .Lx140_0
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n29_lit_string_α
.Lx140_0:
                                                                                        jmp   n29_lit_string_α
n23_disjunction_β:
                        mov              eax, dword ptr [rbp + 1280]
                                                                                        jmp   n29_lit_string_α
n23_disjunction_af:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n32_var_α
n24_var_β:
                                                                                        jmp   n17_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn144:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n23_disjunction_α
                                                                                        jmp   n17_disjunction_as
n25_call_builtin_icon_β:
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n33_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n8_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n10_call_builtin_icon_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "b>>a"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n35_assign_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n36_var_α
n30_var_β:
                                                                                        jmp   n23_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn153:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n29_lit_string_α
                                                                                        jmp   n23_disjunction_as
n31_call_builtin_icon_β:
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n37_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              r8d, 15
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n12_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n14_call_builtin_icon_α
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "a<<=a"
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n40_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n17_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n19_call_builtin_icon_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "b>>=b"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n42_assign_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "3"
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n23_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n25_call_builtin_icon_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "a==a"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              rdx, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "a~==b"
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   n46_var_α
n44_disjunction_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx169_0
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n45_disjunction_α
.Lx169_0:
                                                                                        jmp   n45_disjunction_α
n44_disjunction_β:
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n45_disjunction_α
n44_disjunction_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                                                                                        jmp   n45_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_disjunction_α:
                        mov              qword ptr [rbp + 944], 0
                        mov              qword ptr [rbp + 952], 0
                        mov              dword ptr [rbp + 960], 0
                                                                                        jmp   n49_var_α
n45_disjunction_as:
                        mov              eax, dword ptr [rbp + 960]
                        cmp              eax, 0
                                                                                        jne   .Lx171_0
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n48_disjunction_α
.Lx171_0:
                                                                                        jmp   n48_disjunction_α
n45_disjunction_β:
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n48_disjunction_α
n45_disjunction_af:
                        add              dword ptr [rbp + 960], 1
                        mov              eax, dword ptr [rbp + 960]
                                                                                        jmp   n48_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n51_var_α
n46_var_β:
                                                                                        jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn175:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n45_disjunction_α
                                                                                        jmp   n44_disjunction_as
n47_call_builtin_icon_β:
                                                                                        jmp   n45_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n53_var_α
n48_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx177_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n52_lit_string_α
.Lx177_0:
                                                                                        jmp   n52_lit_string_α
n48_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                                                                                        jmp   n52_lit_string_α
n48_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n55_var_α
n49_var_β:
                                                                                        jmp   n45_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n48_disjunction_α
                                                                                        jmp   n45_disjunction_as
n50_call_builtin_icon_β:
                                                                                        jmp   n48_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n56_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n57_assign_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "ac"
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n58_lit_string_α
n53_var_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn188:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn188]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n52_lit_string_α
                                                                                        jmp   n48_disjunction_as
n54_call_builtin_icon_β:
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n59_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n44_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n61_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n62_binop_test_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n45_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx195_0:
                        .quad            .Lx195_0_s
.Lx195_0_s:
                        .string          "2<<3"
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_charset_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], -1
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n64_assign_α
.Lx196_0:
                        .quad            .Lx196_0_s
.Lx196_0_s:
                        .string          "ac"
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n48_disjunction_af
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "3>>2"
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n66_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n54_call_builtin_icon_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "2==2"
#-----------------------------------------------------------------------------------------------------------------------
n66_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n68_var_α
n66_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx202_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n67_disjunction_α
.Lx202_0:
                                                                                        jmp   n67_disjunction_α
n66_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n67_disjunction_α
n66_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n67_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_disjunction_α:
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0
                                                                                        jmp   n71_var_α
n67_disjunction_as:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0
                                                                                        jne   .Lx204_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n70_lit_string_α
.Lx204_0:
                                                                                        jmp   n70_lit_string_α
n67_disjunction_β:
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n70_lit_string_α
n67_disjunction_af:
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n73_var_α
n68_var_β:
                                                                                        jmp   n66_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn208:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n67_disjunction_α
                                                                                        jmp   n66_disjunction_as
n69_call_builtin_icon_β:
                                                                                        jmp   n67_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n74_assign_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n75_var_α
n71_var_β:
                                                                                        jmp   n67_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn213:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n70_lit_string_α
                                                                                        jmp   n67_disjunction_as
n72_call_builtin_icon_β:
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n76_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n78_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n66_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n80_assign_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n67_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n69_call_builtin_icon_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "ac=='ca'"
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n82_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n72_call_builtin_icon_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "ac<<='ca'"
#-----------------------------------------------------------------------------------------------------------------------
n82_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n84_var_α
n82_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx226_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n83_disjunction_α
.Lx226_0:
                                                                                        jmp   n83_disjunction_α
n82_disjunction_β:
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n83_disjunction_α
n82_disjunction_af:
                        add              dword ptr [rbp + 304], 1
                        mov              eax, dword ptr [rbp + 304]
                                                                                        jmp   n83_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n83_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n87_var_α
n83_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx228_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n86_disjunction_α
.Lx228_0:
                                                                                        jmp   n86_disjunction_α
n83_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n86_disjunction_α
n83_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                                                                                        jmp   n86_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n89_var_α
n84_var_β:
                                                                                        jmp   n82_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn232:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n83_disjunction_α
                                                                                        jmp   n82_disjunction_as
n85_call_builtin_icon_β:
                                                                                        jmp   n83_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n86_disjunction_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                                                                                        jmp   n90_var_α
n86_disjunction_as:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0
                                                                                        jne   .Lx234_0
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   main_ω
.Lx234_0:
                                                                                        jmp   main_ω
n86_disjunction_β:
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
n86_disjunction_af:
                        add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16]
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n92_var_α
n87_var_β:
                                                                                        jmp   n83_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn238:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n86_disjunction_α
                                                                                        jmp   n83_disjunction_as
n88_call_builtin_icon_β:
                                                                                        jmp   n86_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n93_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n94_var_α
n90_var_β:
                                                                                        jmp   n86_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n86_disjunction_as
n91_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n95_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n82_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n97_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n83_disjunction_af
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n85_call_builtin_icon_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "empty<<=empty"
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n86_disjunction_af
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n88_call_builtin_icon_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "empty<<a"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n91_call_builtin_icon_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "a>>empty"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2192]
                        add              rsp, 2200
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2192]
                        add              rsp, 2200
                        ret
                        .section         .note.GNU-stack,"",@progbits
