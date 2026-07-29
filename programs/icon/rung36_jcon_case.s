                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
                        .global          proc_foo_α
                        .global          proc_foo_β
                        .global          proc_foo_γ
                        .global          proc_foo_ω
                        sub              rsp, 4128
                        mov              [rsp + 4104], rcx
                        mov              [rsp + 4112], rdx
                        mov              rdi, rsp
                        mov              ecx, 4096
                        xor              eax, eax
                        rep stosb
                        mov              rdi, rsp
                        mov              esi, 4096
                        call             rt_jmp_frame_lexprep@PLT
proc_foo_α_body:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_β:
                                                                                        jmp   proc_foo_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 4104]
                        add              rsp, 4128
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rax, [rsp + 4112]
                        add              rsp, 4128
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_dcα:
                        pop              r11
                        sub              rsp, 4144
                        mov              qword ptr [rsp + 4120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 4096], r11
                        lea              rax, [rip + .Lx0_2]
                        mov              qword ptr [rsp + 4104], rax
                        lea              rax, [rip + .Lx0_3]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rdi, rbp
                        mov              esi, 16
                        mov              edx, 4096
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_foo_α_body
.Lx0_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -4128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx0_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -4128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        sub              rsp, 2744
                        mov              rdi, rsp
                        mov              ecx, 2744
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2736], rbp
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
n1_lit_integer_α:
                        mov              qword ptr [rbp + 2624], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n2_call_α
.Lx101_0:
                        .quad            45
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn103:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n4_create_α
                                                                                        jmp   n3_assign_α
n2_call_β:
                                                                                        jmp   n4_create_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n4_create_α
#-----------------------------------------------------------------------------------------------------------------------
n4_create_α:
                        mov              qword ptr [rbp + 2448], r12
                        mov              qword ptr [rbp + 2456], r13
                        mov              qword ptr [rbp + 2464], r14
                        mov              qword ptr [rbp + 2472], r15
                        mov              qword ptr [rbp + 2480], rbx
                        mov              qword ptr [rbp + 2488], rbp
                        lea              rdi, [rip + n6_disjunction_α]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2768
                        call             scrip_coexpr_create@PLT
                        mov              qword ptr [rbp + 2432], rax
                                                                                        jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              rdx, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n7_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                        mov              qword ptr [rbp + 2512], 0
                        mov              qword ptr [rbp + 2520], 0
                        mov              dword ptr [rbp + 2528], 0
                                                                                        jmp   n9_lit_integer_α
n6_disjunction_as:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        jne   .Lx109_0
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n8_coret_α
.Lx109_0:
                        cmp              eax, 1
                                                                                        jne   .Lx109_1
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n8_coret_α
.Lx109_1:
                                                                                        jmp   n8_coret_α
n6_disjunction_β:
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 0
                                                                                        je    n6_disjunction_af
                                                                                        jmp   n6_disjunction_af
n6_disjunction_af:
                        add              dword ptr [rbp + 2528], 1
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              eax, 1
                                                                                        je    n10_lit_integer_α
                                                                                        jmp   n100_cofail_α
#-----------------------------------------------------------------------------------------------------------------------
n7_keyword_icon_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                                                                                        jmp   n11_lit_integer_α
n7_keyword_icon_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_coret_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        xor              edx, edx
                        call             scrip_coret@PLT
                                                                                        jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n6_disjunction_as
n9_lit_integer_β:
                                                                                        jmp   n6_disjunction_af
.Lx113_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 2560], 6
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n6_disjunction_as
n10_lit_integer_β:
                                                                                        jmp   n6_disjunction_af
.Lx114_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n12_lit_integer_α
.Lx115_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n13_lit_integer_α
.Lx116_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n14_lit_real_α
.Lx117_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_real_α:
                        mov              qword ptr [rbp + 2112], 7
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n15_lit_real_α
.Lx118_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_real_α:
                        mov              qword ptr [rbp + 2128], 7
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n16_lit_real_α
.Lx119_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_real_α:
                        mov              qword ptr [rbp + 2144], 7
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n17_lit_string_α
.Lx120_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n18_lit_string_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n19_lit_string_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n20_lit_string_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n21_lit_charset_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_charset_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              dword ptr [rbp + 2228], -1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n22_lit_charset_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_charset_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              dword ptr [rbp + 2244], -1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n23_lit_charset_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "0"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_charset_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              dword ptr [rbp + 2260], -1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n24_lit_charset_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_charset_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              dword ptr [rbp + 2276], -1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n25_proc_value_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n25_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx130_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n26_proc_value_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n26_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx132_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n27_proc_value_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n27_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n28_proc_value_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n28_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx136_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n29_call_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:
                        .section         .rodata
.Lrkfn138:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n31_var_α
                                                                                        jmp   n30_var_α
n29_call_β:
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n35_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n37_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n35_make_list_α:
                        lea              rdi, [rbp + 2432]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n38_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn152:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n34_var_α
                                                                                        jmp   n34_var_α
n36_call_builtin_icon_β:
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_iterate_α:
                        mov              qword ptr [rbp + 64], 0
.Lx154_0:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 64]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              rax, 99
                                                                                        je    main_ω
                                                                                        jmp   n39_assign_α
n37_iterate_β:
                        inc              qword ptr [rbp + 64]
                                                                                        jmp   .Lx154_0
#-----------------------------------------------------------------------------------------------------------------------
n38_make_list_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 23
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n41_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_bound_α:
                        mov              qword ptr [rbp + 96], rsp
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n45_call_builtin_α
.Lx163_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n46_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn167:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n49_lit_charset_α
                                                                                        jmp   n48_lit_string_α
n45_call_builtin_β:
                                                                                        jmp   n49_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n50_call_builtin_icon_α
.Lx168_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n47_unmark_α:
                        mov              rsp, qword ptr [rbp + 96]
                                                                                        jmp   n37_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n51_assign_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_charset_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              dword ptr [rbp + 1364], -1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n52_call_builtin_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn174:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rbp + 256]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n47_unmark_α
                                                                                        jmp   n53_lit_string_α
n50_call_builtin_icon_β:
                                                                                        jmp   n47_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn177:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n56_lit_real_α
                                                                                        jmp   n55_lit_string_α
n52_call_builtin_β:
                                                                                        jmp   n56_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n57_var_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          " : "
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n58_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n59_assign_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "'1'"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_real_α:
                        mov              qword ptr [rbp + 1264], 7
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n60_call_builtin_α
.Lx182_0:
                        .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n61_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn188:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn188]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n63_lit_string_α
                                                                                        jmp   n62_lit_string_α
n60_call_builtin_β:
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn190:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n47_unmark_α
                                                                                        jmp   n64_call_builtin_icon_α
n61_call_builtin_icon_β:
                                                                                        jmp   n47_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n65_assign_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "1.0"
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n66_call_builtin_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "1"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn194:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rbp + 176]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n47_unmark_α
                                                                                        jmp   n67_conjunction_α
n64_call_builtin_icon_β:
                                                                                        jmp   n47_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn197:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n69_keyword_icon_α
                                                                                        jmp   n68_lit_string_α
n66_call_builtin_β:
                                                                                        jmp   n69_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n47_unmark_α
n67_conjunction_β:
                                                                                        jmp   n47_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n70_assign_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "\"1\""
#-----------------------------------------------------------------------------------------------------------------------
n69_keyword_icon_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                                                                                        jmp   n71_call_builtin_α
n69_keyword_icon_β:
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn203:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n73_proc_value_α
                                                                                        jmp   n72_lit_string_α
n71_call_builtin_β:
                                                                                        jmp   n73_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n74_assign_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "null"
#-----------------------------------------------------------------------------------------------------------------------
n73_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n75_call_builtin_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn209:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n77_proc_value_α
                                                                                        jmp   n76_lit_string_α
n75_call_builtin_β:
                                                                                        jmp   n77_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n78_assign_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "main"
#-----------------------------------------------------------------------------------------------------------------------
n77_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx212_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n79_call_builtin_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn215:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n81_call_α
                                                                                        jmp   n80_lit_string_α
n79_call_builtin_β:
                                                                                        jmp   n81_call_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n82_assign_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "rec"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:
                        .section         .rodata
.Lrkfn218:              .string          "rec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 768]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n44_var_α
                                                                                        jmp   n83_call_builtin_α
n81_call_β:
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn221:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n85_var_α
                                                                                        jmp   n84_lit_string_α
n83_call_builtin_β:
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n86_assign_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "rec()"
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n87_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn227:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n89_var_α
                                                                                        jmp   n88_lit_string_α
n87_call_builtin_β:
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n90_assign_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n91_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn233:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n93_var_α
                                                                                        jmp   n92_lit_string_α
n91_call_builtin_β:
                                                                                        jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n94_assign_α
.Lx234_0:
                        .quad            .Lx234_0_s
.Lx234_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n95_call_builtin_α
#-----------------------------------------------------------------------------------------------------------------------
n94_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn239:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n97_lit_string_α
                                                                                        jmp   n96_lit_string_α
n95_call_builtin_β:
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n98_assign_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n99_assign_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "default"
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_cofail_α:
                        call             scrip_cofail@PLT
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2736]
                        add              rsp, 2744
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2736]
                        add              rsp, 2744
                        ret
                        .section         .note.GNU-stack,"",@progbits
