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
                        sub              rsp, 2392
                        mov              rdi, rsp
                        mov              ecx, 2392
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2384], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx70_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n1_call_builtin_icon_α
n0_keyword_icon_β:
                                                                                        jmp   n2_disjunction_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn72:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n2_disjunction_α
n1_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 2224], 0
                        mov              qword ptr [rbp + 2232], 0
                        mov              dword ptr [rbp + 2240], 0
                                                                                        jmp   n4_keyword_icon_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 0
                                                                                        jne   .Lx74_0
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx74_0:
                        cmp              eax, 1
                                                                                        jne   .Lx74_1
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx74_1:
                                                                                        jmp   n3_call_builtin_icon_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 0
                                                                                        je    n2_disjunction_af
                                                                                        jmp   n2_disjunction_af
n2_disjunction_af:
                        add              dword ptr [rbp + 2240], 1
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 1
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn76:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_β
                                                                                        jmp   n6_disjunction_α
n3_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx77_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n2_disjunction_af
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n2_disjunction_as
n4_keyword_icon_β:
                                                                                        jmp   n2_disjunction_af
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n2_disjunction_as
n5_lit_string_β:
                                                                                        jmp   n2_disjunction_af
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 2096], 0
                        mov              qword ptr [rbp + 2104], 0
                        mov              dword ptr [rbp + 2112], 0
                                                                                        jmp   n8_keyword_icon_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 0
                                                                                        jne   .Lx80_0
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx80_0:
                        cmp              eax, 1
                                                                                        jne   .Lx80_1
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx80_1:
                                                                                        jmp   n7_call_builtin_icon_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 2112], 1
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              eax, 1
                                                                                        je    n9_lit_string_α
                                                                                        jmp   n10_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn82:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n6_disjunction_β
                                                                                        jmp   n10_disjunction_α
n7_call_builtin_icon_β:
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx83_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n6_disjunction_af
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n6_disjunction_as
n8_keyword_icon_β:
                                                                                        jmp   n6_disjunction_af
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n6_disjunction_as
n9_lit_string_β:
                                                                                        jmp   n6_disjunction_af
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:
                        mov              qword ptr [rbp + 1920], 0
                        mov              qword ptr [rbp + 1928], 0
                        mov              dword ptr [rbp + 1936], 0
                                                                                        jmp   n12_keyword_icon_α
n10_disjunction_as:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        jne   .Lx86_0
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx86_0:
                        cmp              eax, 1
                                                                                        jne   .Lx86_1
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx86_1:
                                                                                        jmp   n11_call_builtin_icon_α
n10_disjunction_β:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 0
                                                                                        je    n10_disjunction_af
                                                                                        jmp   n10_disjunction_af
n10_disjunction_af:
                        add              dword ptr [rbp + 1936], 1
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 1
                                                                                        je    n13_lit_string_α
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn88:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n10_disjunction_β
                                                                                        jmp   n15_lit_integer_α
n11_call_builtin_icon_β:
                                                                                        jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n12_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx89_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n10_disjunction_af
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n14_call_builtin_icon_α
n12_keyword_icon_β:
                                                                                        jmp   n10_disjunction_af
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2032], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n10_disjunction_as
n13_lit_string_β:
                                                                                        jmp   n10_disjunction_af
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn92:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n10_disjunction_af
                                                                                        jmp   n10_disjunction_as
n14_call_builtin_icon_β:
                                                                                        jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n16_keyword_assign_α
.Lx93_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_keyword_assign_α:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        call             rt_keyword_error_set@PLT
                        cmp              eax, 99
                                                                                        je    n17_keyword_icon_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n17_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n19_disjunction_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n18_call_builtin_icon_α
n17_keyword_icon_β:
                                                                                        jmp   n19_disjunction_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn97:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n19_disjunction_α
                                                                                        jmp   n19_disjunction_α
n18_call_builtin_icon_β:
                                                                                        jmp   n19_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n19_disjunction_α:
                        mov              qword ptr [rbp + 1616], 0
                        mov              qword ptr [rbp + 1624], 0
                        mov              dword ptr [rbp + 1632], 0
                                                                                        jmp   n21_keyword_icon_α
n19_disjunction_as:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0
                                                                                        jne   .Lx99_0
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n20_call_builtin_icon_α
.Lx99_0:
                        cmp              eax, 1
                                                                                        jne   .Lx99_1
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n20_call_builtin_icon_α
.Lx99_1:
                                                                                        jmp   n20_call_builtin_icon_α
n19_disjunction_β:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0
                                                                                        je    n22_call_value_β
                                                                                        jmp   n19_disjunction_af
n19_disjunction_af:
                        add              dword ptr [rbp + 1632], 1
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 1
                                                                                        je    n23_lit_string_α
                                                                                        jmp   n24_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn101:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n19_disjunction_β
                                                                                        jmp   n24_keyword_icon_α
n20_call_builtin_icon_β:
                                                                                        jmp   n19_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n21_keyword_icon_α:
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                                                                                        jmp   n22_call_value_α
n21_keyword_icon_β:
                                                                                        jmp   n19_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n22_call_value_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        lea              rdx, [rbp + 1696]
                        mov              ecx, 0
                        call             rt_call_value_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx104_7
                        lea              rcx, [rip + .Lx104_3]
                        lea              rdx, [rip + .Lx104_4]
                                                                                        jmp   rax
.Lx104_3:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx104_5
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx104_2
.Lx104_4:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx104_6
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx104_2
.Lx104_7:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        lea              rdx, [rbp + 1696]
                        mov              ecx, 0
                        lea              r8, [rbp + 1696]
                        call             rt_call_value_gen_h@PLT
.Lx104_2:
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n19_disjunction_af
                                                                                        jmp   n19_disjunction_as
n22_call_value_β:
                        mov              rax, qword ptr [rbp + 1696]
                        cmp              rax, 1
                                                                                        jne   .Lx104_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1704]
                                                                                        jmp   qword ptr [rsp]
.Lx104_8:
                        lea              rdi, [rbp + 1696]
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 99
                                                                                        je    n19_disjunction_af
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n19_disjunction_as
                                                                                        jmp   n19_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n19_disjunction_as
n23_lit_string_β:
                                                                                        jmp   n19_disjunction_af
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n24_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx106_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n26_disjunction_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n25_call_builtin_icon_α
n24_keyword_icon_β:
                                                                                        jmp   n26_disjunction_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn108:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n26_disjunction_α
                                                                                        jmp   n26_disjunction_α
n25_call_builtin_icon_β:
                                                                                        jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0
                                                                                        jmp   n28_keyword_icon_α
n26_disjunction_as:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        jne   .Lx110_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx110_0:
                        cmp              eax, 1
                                                                                        jne   .Lx110_1
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx110_1:
                                                                                        jmp   n27_call_builtin_icon_α
n26_disjunction_β:
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0
                                                                                        je    n26_disjunction_af
                                                                                        jmp   n26_disjunction_af
n26_disjunction_af:
                        add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 1
                                                                                        je    n29_lit_string_α
                                                                                        jmp   n30_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn112:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n26_disjunction_β
                                                                                        jmp   n30_disjunction_α
n27_call_builtin_icon_β:
                                                                                        jmp   n26_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n28_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n26_disjunction_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n26_disjunction_as
n28_keyword_icon_β:
                                                                                        jmp   n26_disjunction_af
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n26_disjunction_as
n29_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:
                        mov              qword ptr [rbp + 1280], 0
                        mov              qword ptr [rbp + 1288], 0
                        mov              dword ptr [rbp + 1296], 0
                                                                                        jmp   n32_keyword_icon_α
n30_disjunction_as:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 0
                                                                                        jne   .Lx116_0
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx116_0:
                        cmp              eax, 1
                                                                                        jne   .Lx116_1
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n31_call_builtin_icon_α
.Lx116_1:
                                                                                        jmp   n31_call_builtin_icon_α
n30_disjunction_β:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 0
                                                                                        je    n30_disjunction_af
                                                                                        jmp   n30_disjunction_af
n30_disjunction_af:
                        add              dword ptr [rbp + 1296], 1
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 1
                                                                                        je    n33_lit_string_α
                                                                                        jmp   n34_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn118:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n30_disjunction_β
                                                                                        jmp   n34_disjunction_α
n31_call_builtin_icon_β:
                                                                                        jmp   n30_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n32_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx119_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n30_disjunction_af
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n30_disjunction_as
n32_keyword_icon_β:
                                                                                        jmp   n30_disjunction_af
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n30_disjunction_as
n33_lit_string_β:
                                                                                        jmp   n30_disjunction_af
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n34_disjunction_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   n36_keyword_icon_α
n34_disjunction_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx122_0
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n35_call_builtin_icon_α
.Lx122_0:
                        cmp              eax, 1
                                                                                        jne   .Lx122_1
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n35_call_builtin_icon_α
.Lx122_1:
                                                                                        jmp   n35_call_builtin_icon_α
n34_disjunction_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    n34_disjunction_af
                                                                                        jmp   n34_disjunction_af
n34_disjunction_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    n37_lit_string_α
                                                                                        jmp   n39_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn124:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n34_disjunction_β
                                                                                        jmp   n39_keyword_icon_α
n35_call_builtin_icon_β:
                                                                                        jmp   n34_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n36_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx125_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n34_disjunction_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n38_call_builtin_icon_α
n36_keyword_icon_β:
                                                                                        jmp   n34_disjunction_af
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n34_disjunction_as
n37_lit_string_β:
                                                                                        jmp   n34_disjunction_af
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn128:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    n34_disjunction_af
                                                                                        jmp   n34_disjunction_as
n38_call_builtin_icon_β:
                                                                                        jmp   n34_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx129_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n41_disjunction_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n40_call_builtin_icon_α
n39_keyword_icon_β:
                                                                                        jmp   n41_disjunction_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn131:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n41_disjunction_α
                                                                                        jmp   n41_disjunction_α
n40_call_builtin_icon_β:
                                                                                        jmp   n41_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_disjunction_α:
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0
                                                                                        jmp   n43_keyword_icon_α
n41_disjunction_as:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        jne   .Lx133_0
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n42_call_builtin_icon_α
.Lx133_0:
                        cmp              eax, 1
                                                                                        jne   .Lx133_1
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n42_call_builtin_icon_α
.Lx133_1:
                                                                                        jmp   n42_call_builtin_icon_α
n41_disjunction_β:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0
                                                                                        je    n41_disjunction_af
                                                                                        jmp   n41_disjunction_af
n41_disjunction_af:
                        add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1
                                                                                        je    n44_lit_string_α
                                                                                        jmp   n45_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn135:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n41_disjunction_β
                                                                                        jmp   n45_disjunction_α
n42_call_builtin_icon_β:
                                                                                        jmp   n41_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n43_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx136_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n41_disjunction_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n41_disjunction_as
n43_keyword_icon_β:
                                                                                        jmp   n41_disjunction_af
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n41_disjunction_as
n44_lit_string_β:
                                                                                        jmp   n41_disjunction_af
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n45_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n47_keyword_icon_α
n45_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx139_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n46_call_builtin_icon_α
.Lx139_0:
                        cmp              eax, 1
                                                                                        jne   .Lx139_1
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n46_call_builtin_icon_α
.Lx139_1:
                                                                                        jmp   n46_call_builtin_icon_α
n45_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n45_disjunction_af
                                                                                        jmp   n45_disjunction_af
n45_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n48_lit_string_α
                                                                                        jmp   n49_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n45_disjunction_β
                                                                                        jmp   n49_disjunction_α
n46_call_builtin_icon_β:
                                                                                        jmp   n45_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n47_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n45_disjunction_af
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n45_disjunction_as
n47_keyword_icon_β:
                                                                                        jmp   n45_disjunction_af
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n45_disjunction_as
n48_lit_string_β:
                                                                                        jmp   n45_disjunction_af
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n49_disjunction_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0
                                                                                        jmp   n51_keyword_icon_α
n49_disjunction_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        jne   .Lx145_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx145_0:
                        cmp              eax, 1
                                                                                        jne   .Lx145_1
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx145_1:
                                                                                        jmp   n50_call_builtin_icon_α
n49_disjunction_β:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        je    n49_disjunction_af
                                                                                        jmp   n49_disjunction_af
n49_disjunction_af:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1
                                                                                        je    n52_lit_string_α
                                                                                        jmp   n54_call_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn147:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n49_disjunction_β
                                                                                        jmp   n54_call_α
n50_call_builtin_icon_β:
                                                                                        jmp   n49_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n49_disjunction_af
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n53_call_builtin_icon_α
n51_keyword_icon_β:
                                                                                        jmp   n49_disjunction_af
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n49_disjunction_as
n52_lit_string_β:
                                                                                        jmp   n49_disjunction_af
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn151:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n49_disjunction_af
                                                                                        jmp   n49_disjunction_as
n53_call_builtin_icon_β:
                                                                                        jmp   n49_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        .section         .rodata
.Lbynamefn55:           .string          "errorclear"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn55]
                        lea              rsi, [rbp + 528]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n55_keyword_icon_α
                                                                                        jmp   n55_keyword_icon_α
n54_call_β:
                                                                                        jmp   n55_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n55_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx153_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n57_disjunction_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n56_call_builtin_icon_α
n55_keyword_icon_β:
                                                                                        jmp   n57_disjunction_α
.Lx153_0:
                        .quad            .Lx153_0_s
.Lx153_0_s:
                        .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn155:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n57_disjunction_α
                                                                                        jmp   n57_disjunction_α
n56_call_builtin_icon_β:
                                                                                        jmp   n57_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n57_disjunction_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              dword ptr [rbp + 368], 0
                                                                                        jmp   n59_keyword_icon_α
n57_disjunction_as:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        jne   .Lx157_0
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n58_call_builtin_icon_α
.Lx157_0:
                        cmp              eax, 1
                                                                                        jne   .Lx157_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n58_call_builtin_icon_α
.Lx157_1:
                                                                                        jmp   n58_call_builtin_icon_α
n57_disjunction_β:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        je    n57_disjunction_af
                                                                                        jmp   n57_disjunction_af
n57_disjunction_af:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 1
                                                                                        je    n60_lit_string_α
                                                                                        jmp   n61_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn159:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n57_disjunction_β
                                                                                        jmp   n61_disjunction_α
n58_call_builtin_icon_β:
                                                                                        jmp   n57_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n59_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx160_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n57_disjunction_af
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n57_disjunction_as
n59_keyword_icon_β:
                                                                                        jmp   n57_disjunction_af
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n57_disjunction_as
n60_lit_string_β:
                                                                                        jmp   n57_disjunction_af
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n63_keyword_icon_α
n61_disjunction_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        jne   .Lx163_0
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n62_call_builtin_icon_α
.Lx163_0:
                        cmp              eax, 1
                                                                                        jne   .Lx163_1
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n62_call_builtin_icon_α
.Lx163_1:
                                                                                        jmp   n62_call_builtin_icon_α
n61_disjunction_β:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        je    n61_disjunction_af
                                                                                        jmp   n61_disjunction_af
n61_disjunction_af:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 1
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n65_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn165:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n61_disjunction_β
                                                                                        jmp   n65_disjunction_α
n62_call_builtin_icon_β:
                                                                                        jmp   n61_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n63_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx166_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n61_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n61_disjunction_as
n63_keyword_icon_β:
                                                                                        jmp   n61_disjunction_af
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n61_disjunction_as
n64_lit_string_β:
                                                                                        jmp   n61_disjunction_af
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n67_keyword_icon_α
n65_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx169_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n66_call_builtin_icon_α
.Lx169_0:
                        cmp              eax, 1
                                                                                        jne   .Lx169_1
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n66_call_builtin_icon_α
.Lx169_1:
                                                                                        jmp   n66_call_builtin_icon_α
n65_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    n65_disjunction_af
                                                                                        jmp   n65_disjunction_af
n65_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n68_lit_string_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn171:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n65_disjunction_β
                                                                                        jmp   main_ω
n66_call_builtin_icon_β:
                                                                                        jmp   n65_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n67_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx172_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n65_disjunction_af
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n69_call_builtin_icon_α
n67_keyword_icon_β:
                                                                                        jmp   n65_disjunction_af
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n65_disjunction_as
n68_lit_string_β:
                                                                                        jmp   n65_disjunction_af
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn175:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n65_disjunction_af
                                                                                        jmp   n65_disjunction_as
n69_call_builtin_icon_β:
                                                                                        jmp   n65_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2384]
                        add              rsp, 2392
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2384]
                        add              rsp, 2392
                        ret
                        .section         .note.GNU-stack,"",@progbits
