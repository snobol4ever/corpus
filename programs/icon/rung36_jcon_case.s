                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
                        sub              rsp, 48
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_foo_α_body:
                                                                              jmp   proc_foo_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_β:
                                                                              jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 24]
                        add              rsp, 48;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rcx, qword ptr [rsp + 32]
                        add              rsp, 48;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx0_2]
                        lea              rdx, [rip + .Lx0_3];                 jmp   proc_foo_α
.Lx0_2:                 pop              r11
                        pop              r11;                                 jmp   r11
.Lx0_3:                 pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "rec(a)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "foo"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_dcα]
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2880
                        mov              qword ptr [rsp + 2856], rcx
                        mov              qword ptr [rsp + 2864], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n2_call_α
.Lx101_0:               .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lrkfn103:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              eax, 104;                            je    n4_create_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_assign_α
n2_call_β:                                                                    jmp   n4_create_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n4_create_α
#-----------------------------------------------------------------------------------------------------------------------
n4_create_α:            mov              qword ptr [rsp + 2448], r12
                        mov              qword ptr [rsp + 2456], r13
                        mov              qword ptr [rsp + 2464], r14
                        mov              qword ptr [rsp + 2472], r15
                        mov              qword ptr [rsp + 2480], rbx
                        mov              qword ptr [rsp + 2488], rsp
                        lea              rdi, [rip + n96_disjunction_α]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 2768
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coexpr_create@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2432], rax;         jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              rax, qword ptr [rsp + 2432]
                        mov              rdx, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx;         jmp   n6_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_keyword_icon_α:      mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0;           jmp   n7_lit_integer_α
n6_keyword_icon_β:                                                            jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n8_lit_integer_α
.Lx109_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n9_lit_integer_α
.Lx110_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n10_lit_real_α
.Lx111_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_real_α:         mov              qword ptr [rsp + 2112], 5            # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n11_lit_real_α
.Lx112_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_real_α:         mov              qword ptr [rsp + 2128], 5            # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n12_lit_real_α
.Lx113_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_real_α:         mov              qword ptr [rsp + 2144], 5            # result
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n13_lit_string_α
.Lx114_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 0
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n14_lit_string_α
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n15_lit_string_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n16_lit_string_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n17_lit_charset_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:      mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], -1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n18_lit_charset_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_charset_α:      mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], -1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n19_lit_charset_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_charset_α:      mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], -1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n20_lit_charset_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:      mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], -1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n21_proc_value_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n21_proc_value_α:       mov              rdi, qword ptr [rip + .Lx124_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n22_proc_value_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n22_proc_value_α:       mov              rdi, qword ptr [rip + .Lx126_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n23_proc_value_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n23_proc_value_α:       mov              rdi, qword ptr [rip + .Lx128_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n24_proc_value_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n24_proc_value_α:       mov              rdi, qword ptr [rip + .Lx130_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n25_call_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             .section         .rodata
.Lrkfn132:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rsp + 2368]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              eax, 104;                            je    n31_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_var_α
n25_call_β:                                                                   jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n27_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n28_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n28_make_list_α:        lea              rdi, [rsp + 2432]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n29_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n29_make_list_α:        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 1880], rax
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 1976], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 23
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n33_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn147:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              eax, 104;                            je    n34_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_var_α
n33_call_builtin_icon_β:
                                                                              jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 88], rax;           jmp   n35_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n35_iterate_α:          mov              qword ptr [rsp + 64], 0
.Lx151_0:               mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              rax, 104;                            je    main_ω
                                                                              jmp   n36_assign_α
n35_iterate_β:          inc              qword ptr [rsp + 64];                jmp   .Lx151_0
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx;         jmp   n37_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n37_bound_α:            mov              qword ptr [rsp + 96], rsp;           jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 440], rax;          jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              qword ptr [rsp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n40_call_builtin_α
.Lx157_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_α:     mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1528], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lrkfn159:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              eax, 104;                            je    n43_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n41_lit_string_α
n40_call_builtin_β:                                                           jmp   n43_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n42_assign_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_charset_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], -1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n44_call_builtin_α
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_α:     mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1416], rax
                        .section         .rodata
.Lrkfn164:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rsp + 1408]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              eax, 104;                            je    n47_lit_real_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_lit_string_α
n44_call_builtin_β:                                                           jmp   n47_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 3
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n46_assign_α
.Lx165_0:               .quad            .Lx165_0_s
.Lx165_0_s:             .string          "'1'"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_real_α:         mov              qword ptr [rsp + 1264], 5            # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n48_call_builtin_α
.Lx167_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_α:     mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn169:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n51_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_lit_string_α
n48_call_builtin_β:                                                           jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 3
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n50_assign_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "1.0"
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n52_call_builtin_α
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_α:     mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn174:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n55_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_lit_string_α
n52_call_builtin_β:                                                           jmp   n55_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 3
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n54_assign_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "\"1\""
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_keyword_icon_α:     mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0;           jmp   n56_call_builtin_α
n55_keyword_icon_β:                                                           jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_α:     mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn179:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rsp + 1120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104;                            je    n59_proc_value_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_lit_string_α
n56_call_builtin_β:                                                           jmp   n59_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 4
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n58_assign_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_proc_value_α:       mov              rdi, qword ptr [rip + .Lx183_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n60_call_builtin_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_α:     mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn185:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    n63_proc_value_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_lit_string_α
n60_call_builtin_β:                                                           jmp   n63_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 4
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n62_assign_α
.Lx186_0:               .quad            .Lx186_0_s
.Lx186_0_s:             .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_proc_value_α:       mov              rdi, qword ptr [rip + .Lx189_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n64_call_builtin_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_α:     mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn191:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n67_call_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_lit_string_α
n64_call_builtin_β:                                                           jmp   n67_call_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 3
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n66_assign_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             .section         .rodata
.Lrkfn195:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rsp + 768]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    n87_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_call_builtin_α
n67_call_β:                                                                   jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_α:     mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn197:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n71_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_lit_string_α
n68_call_builtin_β:                                                           jmp   n71_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 5
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n70_assign_α
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          "rec()"
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 664], rax;          jmp   n72_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_α:     mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn203:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rsp + 704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n75_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_lit_string_α
n72_call_builtin_β:                                                           jmp   n75_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n74_assign_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 568], rax;          jmp   n76_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_α:     mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn209:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n79_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_lit_string_α
n76_call_builtin_β:                                                           jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n78_assign_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 472], rax;          jmp   n80_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_α:     mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn215:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n83_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_lit_string_α
n80_call_builtin_β:                                                           jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n82_assign_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 7
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n84_assign_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "default"
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 424], rax;          jmp   n86_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 312], rax;          jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n89_call_builtin_icon_α
.Lx225_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn227:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n95_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_lit_string_α
n89_call_builtin_icon_β:
                                                                              jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 3
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n91_var_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          " : "
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 408], rax;          jmp   n92_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn232:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n95_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_call_builtin_icon_α
n92_call_builtin_icon_β:
                                                                              jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rsp + 176]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              eax, 104;                            je    n95_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_conjunction_α
n93_call_builtin_icon_β:
                                                                              jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n94_conjunction_α:      mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax;          jmp   n95_unmark_α
n94_conjunction_β:                                                            jmp   n95_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n95_unmark_α:           mov              rsp, qword ptr [rsp + 96];           jmp   n35_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n96_disjunction_α:      mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              dword ptr [rsp + 2528], 0;           jmp   n99_lit_integer_α
n96_disjunction_as:     mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 0;                              jne   .Lx239_0
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n97_coret_α
.Lx239_0:               cmp              eax, 1;                              jne   .Lx239_1
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n97_coret_α
.Lx239_1:                                                                     jmp   n97_coret_α
n96_disjunction_β:      mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 0;                              je    n96_disjunction_af
                                                                              jmp   n96_disjunction_af
n96_disjunction_af:     add              dword ptr [rsp + 2528], 1
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 1;                              je    n98_lit_integer_α
                                                                              jmp   n100_cofail_α
#-----------------------------------------------------------------------------------------------------------------------
n97_coret_α:            mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        xor              edx, edx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_coret@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              qword ptr [rsp + 2560], 3            # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n96_disjunction_as
n98_lit_integer_β:                                                            jmp   n96_disjunction_af
.Lx242_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      mov              qword ptr [rsp + 2544], 3            # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n96_disjunction_as
n99_lit_integer_β:                                                            jmp   n96_disjunction_af
.Lx243_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n100_cofail_α:          mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             scrip_cofail@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
